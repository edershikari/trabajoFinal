package model;

public class ProductoClass extends Connect {
	
	protected int id_producto;
	protected String nombre;
	protected String descripcion;
	protected double precio;
	protected int cantidad;
	protected String imagen;
	protected int id_categoria;
	
	public int getId_producto() {
		return id_producto;
	}
	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public int getId_categoria() {
		return id_categoria;
	}
	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}
	
	public ProductoClass(int id_producto, String nombre, String descripcion, double precio, int cantidad, String imagen,
			int id_categoria) {
		super();
		this.id_producto = id_producto;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
		this.cantidad = cantidad;
		this.imagen = imagen;
		this.id_categoria = id_categoria;
	}
	public ProductoClass() {
		super();
	}
	
	
	
}
