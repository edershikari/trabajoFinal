package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FacturaModelo extends Factura {
	public void insertarLinea() {

		Statement st;
		try {
			st = this.con.createStatement();// the connection variable
			ResultSet rs = st.executeQuery("INSERT INTO factura");
			
			while (rs.next()) { // reads the table line by line
				Factura factura = new Factura();
				
				factura.id_factura=rs.getInt(1);
				factura.nombre=rs.getString(2);
				factura.apellido=rs.getString(3);
				factura.dni=rs.getString(4);
				factura.correo=rs.getString(5);
				factura.telefono=rs.getString(6);
				factura.num_tarjeta=rs.getString(7);
				factura.total_factura=rs.getDouble(8);
				
				this.list.add(socio);
			}
			this.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

}
