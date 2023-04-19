package com.emergentes.modelo;

public class Producto {
    private int id;
    private String descripcion;
    private int cantidad;
    private float precio;
    private Categoria cate;
    
    public Producto(){
    }
    public Producto(int id, String descripcion, int cantidad, Categoria cate){
        this.id=id;
        this.descripcion=descripcion;
        this.cantidad=cantidad;
        this.cate=cate;
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

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public Categoria getCate() {
        return cate;
    }

    public void setCate(Categoria cate) {
        this.cate = cate;
    }  
}
