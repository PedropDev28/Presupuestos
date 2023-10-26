/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package es.albarregas.models;

import es.albarregas.beans.ContenidoBean;
import es.albarregas.beans.ContinenteBean;

/**
 *
 * @author Pedro Lazaro
 */
public class CalcularCuota {


    public CalcularCuota() {
    }

    public double getCuotaContinente(ContinenteBean continente) {
        double cuotaBasica = continente.getValor() * 0.005;
        double prima = 0;
        switch(continente.getTipo()){
            case "Piso":
                prima = cuotaBasica * 0.95;
                break;
            case "Casa":
                prima = cuotaBasica * 1.00;
                break;
            case "Adosado":
                prima = cuotaBasica * 1.05;
                break;
            case "Duplex":
                prima = cuotaBasica * 1.10;
                break;
            case "Chalet":
                prima = cuotaBasica * 1.20;
                break;
        }
        
        prima += Double.parseDouble(continente.getN_hab()) * (prima/100);

        switch(continente.getFecha()){
            case "1949":
                prima += prima * 0.09;
                break;
            case "1950":
                prima += prima * 0.06;
                break;
            case "1991":
                prima += prima * 0.04;
                break;
            case "2006":
                prima += prima * 0.02;
                break;
            case "2016":
                prima += prima * 0.01;
                break;
        }

    if (continente.getTipo_construccion().equals("Madera")) {
        prima += prima * 0.1;
    }
        return Math.round(prima * 100.0) / 100.0;
    }
    
    public double cuotaContenido(ContenidoBean contenido){
        double prima = 0;
        prima = Double.parseDouble(contenido.getCantidad()) * 0.008;

        if(contenido.isDanios()){
            prima = prima * 1.25;
        }

        if(contenido.getFranquicia().equals("500")){
            prima -= prima * 0.1;
        }else if(contenido.getFranquicia().equals("1000")){
            prima -= prima * 0.2;
        }


        return Math.round(prima * 100.0) / 100.0;
    }

    
}
