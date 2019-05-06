package model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class productoModel extends productoClass {
	
	
	}

	public ArrayList<productoClass> getList() {
		return list;
	}

	public void setList(ArrayList<productoClass> list) {
		this.list = list;
	}

	private ArrayList<productoClass> list = new ArrayList<productoClass>();

}
