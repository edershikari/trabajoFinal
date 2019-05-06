package model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class productoModel extends productoClass {
	private ArrayList<productoClass> list = new ArrayList<productoClass>();
	
	

	public productoModel() {
		super();
	}

	

	public productoModel(int id_producto, String nombre, String descripcion, double precio, int cantidad, String imagen,
			int id_categoria, ArrayList<productoClass> list) {
		super(id_producto, nombre, descripcion, precio, cantidad, imagen, id_categoria);
		this.list = list;
	}



	public ArrayList<productoClass> getList() {
		return list;
	}

	public void setList(ArrayList<productoClass> list) {
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
				productoModel producto = new productoModel();
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
