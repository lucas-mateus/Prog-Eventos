/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import infrastructure.UserDB;
import javax.inject.Inject;
import domain.user.User;

/**
 *
 * @author Lucas
 */
@Controller
@Path("user")
public class UserController {
    
    @Inject
    private Result result;
    
    @Inject
    private UserDB userDB;
  
    @Get("new")
    public void newUser(){
    }
    
    @Post("create")
    public void persistUser(User user){
        userDB.save(user);
        result.redirectTo(EventController.class).getEvents();
    }
    
    @Post("update")
    public void update(User user){
        this.userDB.update(user);
    }
    
    @Post("remove")
    public void remove(User user){
        this.userDB.remove(user);
    }
}
