package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import model.FacturaModelo;

/**
 * Servlet implementation class AniadirFactura
 */
@WebServlet("/RellenarFactura")
public class RellenarFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RellenarFactura() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String  nombre=request.getParameter("nombre");
		String  apellido=request.getParameter("apellido");
		String  dni=request.getParameter("dni");
		String  correo=request.getParameter("correo");
		String  telefono=request.getParameter("telefono");
		String  num_tarjeta=request.getParameter("num_tarjeta");
		Double  total_factura=Double.parseDouble(request.getParameter("total_factura"));
		
		
		FacturaModelo factura=new FacturaModelo();
		factura.setNombre(nombre);
		factura.setApellido(apellido);
		factura.setDni(dni);
		factura.setCorreo(correo);
		factura.setTelefono(telefono);
		factura.setNum_tarjeta(num_tarjeta);
		factura.setTotal_factura(total_factura);		
		
		int id=factura.insertarFactura();

		String scarrito = request.getParameter("carrito");
		System.out.println(scarrito);
			
		JSONArray jcarrito = new JSONArray(scarrito);
	
		
		//request.getRequestDispatcher("http://127.0.0.1:5500/factura.html").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
