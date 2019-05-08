package model;
import model.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.websocket.Decoder.BinaryStream;

import model.Connect;
import model.Categoria;
import model.CategoriaModelo;

public class CategoriaModeloImp extends Conector implements CategoriaModelo {


	public CategoriaModeloImp() {
		super();
	}

	/**
	 * selecciona todos los alimentos y devuelve un arrayList de alimentos
	 */
	@Override
	public ArrayList<Categoria> selectAll() {

		ArrayList<Categoria> categorias = new ArrayList<Categoria>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from categoria");
			while (rs.next()) {
				Categoria categoria = new Categoria(rs.getString("nombre"));
				categoria.setId_categoria(rs.getInt("id_categoria"));
				categoria.setNombre(rs.getString("nombre"));
				
				categorias.add(categoria);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return categorias;
	}

	@Override
	public Categoria select(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	
	public int update(Categoria categoria) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insert(Categoria categoria) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * devuelve el alimento que tiene la id recibida
	 */
//	public Alimento select(int id) {
//		
//		try {
//			PreparedStatement pst = this.conexion.prepareStatement("select * from alimentos where id=?");
//			pst.setInt(1, id);
//			ResultSet rs = pst.executeQuery();
//			
//			if(rs.next()) {
//				Alimento alimento = new Alimento(rs.getString("nombre"));
//				alimento.setId(rs.getInt("id"));
//				alimento.setDescripcion(rs.getString("descripcion"));
//				alimento.setImagenBlob(rs.getBinaryStream("foto"));
//				alimento.setImagenBase64(rs.getString("fotob64"));
//				
//				return alimento;
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//			return null;
//		}
//		return null;
//	}
//
//	@Override
//	public boolean delete(int id) {
//		
//		try {
//			PreparedStatement pst = this.conexion.prepareStatement("delete from alimentos where id=?");
//			pst.setInt(1, id);
//			pst.execute();
//			return true;
//		} catch (SQLException e) {
//			e.printStackTrace();
//			return false;
//		}
//	}
//
//	@Override
//	public int update(Alimento alimento) {
//		PreparedStatement pst;
//		try {
//			pst = this.conexion.prepareStatement("UPDATE alimentos SET nombre = ?, descripcion = ? WHERE id = ?");
//			pst.setString(1, alimento.getNombre());
//			pst.setString(2, alimento.getDescripcion());
//			pst.setInt(3, alimento.getId());
//			
//			return pst.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//			return 0;
//		}
//		
//	}
//
//	@Override
//	public ArrayList<Alimento> ingredientes(int id_receta) {
//		return null;
//	}
//
//	@Override
//	public void insert(Alimento alimento) {
//		try {
//			PreparedStatement pst = this.conexion.prepareStatement("insert into alimentos (nombre, descripcion) values (?, ?)");
//			pst.setString(1, alimento.getNombre());
//			pst.setString(2, alimento.getDescripcion());
//			pst.execute();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
//
//
//
//
}
