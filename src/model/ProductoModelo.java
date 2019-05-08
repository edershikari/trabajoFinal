package model;


import java.util.ArrayList;
import model.Producto;

public interface ProductoModelo {
	ArrayList<Producto> selectAll();

	Producto select(int id);

	boolean delete(int id);

	int update(Producto producto);
	
//	ArrayList<producto> ingredientes(int id_receta);
	
	void insert(Producto producto);
}
