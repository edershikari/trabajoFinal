package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class categoriaModel extends categoriaClass{

	private ArrayList<categoriaClass> categorias = new ArrayList<categoriaClass>();

	public ArrayList<categoriaClass> getCategorias() {
		return categorias;
	}

	public void setCategorias(ArrayList<categoriaClass> categorias) {
		this.categorias = categorias;
	}

	public categoriaModel(int id_categoria, String nombre, ArrayList<categoriaClass> categorias) {
		super(id_categoria, nombre);
		this.categorias = categorias;
	}


	public categoriaModel() {
		// TODO Auto-generated constructor stub
	}

	public void loadData()
	{
		this.CreateConnection();
		
		Statement st;
		try {
			st = this.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM categoria ");

			while (rs.next()) // reads the table line by line
			{
				categoriaModel categoria = new categoriaModel();
				categoria.id_categoria=Integer.parseInt(rs.getString(1));
				categoria.nombre=rs.getString(2);
				this.categorias.add(categoria);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}
}
