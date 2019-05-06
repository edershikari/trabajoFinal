package model;

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

	
}
