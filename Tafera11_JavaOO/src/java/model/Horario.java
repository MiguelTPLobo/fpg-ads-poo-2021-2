/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author migue
 */
public class Horario {
    private int horas;
    private int minutos;
    private int segundos;

    public Horario(){
        horas = 23;
        minutos = 59;
        segundos = 59;
    }
    
    public Horario(int horas, int minutos, int segundos){
        this.setHorario(horas, minutos, segundos);
    }
    
    public void setHorario(int horas, int minutos, int segundos){
        this.setHoras(horas);
        this.setMinutos(minutos);
        this.setSegundos(segundos);
    }
    
    public String getHorario(){
        String horario = "";
        if(horas<10) horario += "0";
        horario += horas+":";
        if(minutos<10) horario += "0";
        horario += minutos+":";
        if(segundos<10) horario += "0";
        horario += segundos;
        return horario;
    }
    
    
    /**
     * @return the horas
     */
    public int getHoras() {
        return horas;
    }

    /**
     * @param horas the horas to set
     */
    public void setHoras(int horas) {
        if(horas<0) this.horas = 1;
        else if(horas > 23) this.horas = 23;
        else this.horas = horas;
    }

    /**
     * @return the minutos
     */
    public int getMinutos() {
        return minutos;
    }

    /**
     * @param minutos the minutos to set
     */
    public void setMinutos(int minutos) {
        if(minutos<0) this.minutos = 1;
        else if(minutos > 60) this.minutos = 59;
        else this.minutos = minutos;
    }

    /**
     * @return the segundos
     */
    public int getSegundos() {
        return segundos;
    }

    /**
     * @param segundos the segundos to set
     */
    public void setSegundos(int segundos) {
        if(segundos<0) this.segundos = 1;
        else if(segundos > 60) this.segundos = 59;
        else this.segundos = segundos;
    }
}