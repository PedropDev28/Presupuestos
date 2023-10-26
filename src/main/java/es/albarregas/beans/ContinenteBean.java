/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package es.albarregas.beans;

/**
 *
 * @author Pedro Lazaro
 */
public class ContinenteBean {
    private String tipo;
    private String n_hab;
    private String fecha;
    private String tipo_construccion;
    private double valor;
    private double cuota;

    public ContinenteBean() {
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getN_hab() {
        return n_hab;
    }

    public void setN_hab(String n_hab) {
        this.n_hab = n_hab;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTipo_construccion() {
        return tipo_construccion;
    }

    public void setTipo_construccion(String tipo_construccion) {
        this.tipo_construccion = tipo_construccion;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public double getCuota() {
        return cuota;
    }

    public void setCuota(double cuota) {
        this.cuota = cuota;
    }

}
