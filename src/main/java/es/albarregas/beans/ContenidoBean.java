/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 * © @pedrop19
 */
package es.albarregas.beans;

/**
 *
 * @author Pedro Lazaro
 */
public class ContenidoBean {
    private boolean danios;
    private String cantidad;
    private String franquicia;
    private double cuota;

    public ContenidoBean() {
    }

    public boolean isDanios() {
        return danios;
    }

    public void setDanios(boolean danios) {
        this.danios = danios;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }
    
    public String getFranquicia() {
        return franquicia;
    }

    public void setFranquicia(String franquicia) {
        this.franquicia = franquicia;
    }

    public double getCuota() {
        return cuota;
    }

    public void setCuota(double cuota) {
        this.cuota = cuota;
    }
}
