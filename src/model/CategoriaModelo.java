package model;

import java.util.ArrayList;

public interface CategoriaModelo {
	ArrayList<Categoria> selectAll();

	Categoria select(int id);

	boolean delete(int id);

	int update(Categoria categoria);
	
//	ArrayList<producto> ingredientes(int id_receta);
	
	void insert(Categoria categoria);
}
