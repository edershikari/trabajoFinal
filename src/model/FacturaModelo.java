package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class FacturaModelo extends Factura {
	
	public int insertarFactura() {//estamos trayendo todos los datos desde el form y el localstorage. Todo desde factura.js

		int id=0;
		this.CreateConnection();
		
		
		PreparedStatement pst;//pst es porque lleva interrogaciones
		try {
			pst = this.con.prepareStatement("call spInsertarFactura( ?,?,?,?,?,?,?)");
			
			pst.setString(1, this.nombre);
			pst.setString(2, this.apellido);
			pst.setString(3, this.dni);
			pst.setString(4, this.correo);
			pst.setString(5, this.telefono);
			pst.setString(6, this.num_tarjeta);
			pst.setDouble(7, this.total_factura);
			
			ResultSet rs = pst.executeQuery();
			
			if (rs.next()) {
				id=rs.getInt(1);
			}
			this.con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return id;
	}


}
