package model;


import java.util.ArrayList;
import model.producto;

public interface productoModelo {
	ArrayList<producto> selectAll();

	producto select(int id);

	boolean delete(int id);

	int update(producto producto);
	
//	ArrayList<producto> ingredientes(int id_receta);
	
	void insert(producto producto);
}
