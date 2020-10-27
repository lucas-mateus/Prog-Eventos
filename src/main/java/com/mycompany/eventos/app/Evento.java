/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.eventos.app;

/**
 *
 * @author natal
 */
public class Evento {
    private String data;
    private String titulo;
    private String local;
    private String organizador;

    public Evento(String data, String titulo, String local, String organizador){
        this.data = data;
        this.titulo = titulo;
        this.local = local;
        this.organizador = organizador;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getOrganizador() {
        return organizador;
    }

    public void setOrganizador(String organizador) {
        this.organizador = organizador;
    }
    

   
}
