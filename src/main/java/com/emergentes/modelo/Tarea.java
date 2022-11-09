
package com.emergentes.modelo;


public class Tarea {
    private int id;
    private String descripcion;
    private String cantidad;
    private String precio;
    private String categiria;
    public Tarea() {
        id = 0;
        descripcion ="";
        cantidad ="";
        precio="";
        categiria="";
    }

    public Tarea(int id, String descripcion, String cantidad, String precio, String categiria) {
        this.id = id;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.precio = precio;
        this.categiria = categiria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getCategiria() {
        return categiria;
    }

    public void setCategiria(String categiria) {
        this.categiria = categiria;
    }

       
    
    
}
