/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;

/**
 *
 * @author Lucas
 */
@Controller
public class EventoController {
    
    @Get("index")
    public void index(){
        System.out.println("AE MERMAO CHAMOU ESSE METODO");
    } 
}
