package model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ProductoModel extends ProductoClass {
	private ArrayList<ProductoClass> list = new ArrayList<ProductoClass>();
	
	

	public ProductoModel() {
		super();
	}

	

	public ProductoModel(int id_producto, String nombre, String descripcion, double precio, int cantidad, String imagen,
			int id_categoria, ArrayList<ProductoClass> list) {
		super(id_producto, nombre, descripcion, precio, cantidad, imagen, id_categoria);
		this.list = list;
	}



	public ArrayList<ProductoClass> getList() {
		return list;
	}

	public void setList(ArrayList<ProductoClass> list) {
		this.list = list;
	}

	public void loadData()
	{
		this.CreateConnection();
		
		Statement st;
		try {
			st = this.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM producto ");

			while (rs.next()) // reads the table line by line
			{
				ProductoModel producto = new ProductoModel();
				producto.id_producto=Integer.parseInt(rs.getString(1));
				producto.nombre=rs.getString(2);
				producto.descripcion=rs.getString(3);
				producto.precio=rs.getInt(4);
				producto.cantidad=Integer.parseInt(rs.getString(5));
				producto.imagen=rs.getString(6);
				producto.id_categoria=Integer.parseInt(rs.getString(7));
				this.list.add(producto);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}


}
