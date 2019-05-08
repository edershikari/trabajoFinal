package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CategoriaModel extends CategoriaClass{

	private ArrayList<CategoriaClass> categorias = new ArrayList<CategoriaClass>();

	public ArrayList<CategoriaClass> getCategorias() {
		return categorias;
	}

	public void setCategorias(ArrayList<CategoriaClass> categorias) {
		this.categorias = categorias;
	}

	public CategoriaModel(int id_categoria, String nombre, ArrayList<CategoriaClass> categorias) {
		super(id_categoria, nombre);
		this.categorias = categorias;
	}


	public CategoriaModel() {
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
				CategoriaModel categoria = new CategoriaModel();
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
