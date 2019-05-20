package model;

public class Factura extends Connect{
	protected int id_factura;
	protected String nombre;
	protected String apellido;
	protected String dni;
	protected String correo;
	protected String telefono;
	protected String num_tarjeta;
	protected double total_factura;
	
	
	
	public Factura() {
		super();
	}

	
	public Factura(int id_factura, String nombre, String apellido, String dni, String correo, String telefono,
			String num_tarjeta, double total_factura) {
		super();
		this.id_factura = id_factura;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.correo = correo;
		this.telefono = telefono;
		this.num_tarjeta = num_tarjeta;
		this.total_factura = total_factura;
	}


	public int getId_factura() {
		return id_factura;
	}
	public void setId_factura(int id_factura) {
		this.id_factura = id_factura;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getNum_tarjeta() {
		return num_tarjeta;
	}
	public void setNum_tarjeta(String num_tarjeta) {
		this.num_tarjeta = num_tarjeta;
	}
	public double getTotal_factura() {
		return total_factura;
	}
	public void setTotal_factura(double total_factura) {
		this.total_factura = total_factura;
	}
}
