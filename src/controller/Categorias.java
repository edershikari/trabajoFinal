package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cindex
 */
@WebServlet("/categorias")
public class Categorias extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Categorias() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		productoModel producto=new productoModel();
//		
//		producto.loadData();
//		request.setAttribute("list", producto.getList());
//		
//		categoriaModel categoria=new categoriaModel();
//		
//		categoria.loadData();
//		request.setAttribute("categorias", categoria.getCategorias());
//		
//		request.getRequestDispatcher("view/Index.jsp").forward(request, response);
		//esto es el intento
		String error = request.getParameter("error");
		if(error != null) {
			request.setAttribute("error", error);
		}
		
		
		CategoriaModeloImp categoriaModelo =new CategoriaModeloImp();
		request.setAttribute("categorias", categoriaModelo.selectAll());
		request.getRequestDispatcher("view/verTodos.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
