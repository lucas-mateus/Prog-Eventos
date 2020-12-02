/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import application.EventApplication;
import application.UserApplication;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import domain.user.User;
import exceptions.BusinessException;
import javax.inject.Inject;
import web.annotations.Auth;

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
    private EventApplication eventApp;

    @Inject
    private UserApplication userApplication;

    @Get("new")
    public void newUser() {
    }

    @Get("")
    @Auth
    public void userPage() {
    }

    @Post("create")
    public void persistUser(User user) {
        try {
            this.userApplication.save(user);
            //this.authSession.setUser(user);
            result.redirectTo(AuthController.class).login();
        } catch (BusinessException e) {
            result.include("errorMessage", e.getMessage());
            result.include("user", user);
            result.redirectTo(this).newUser();
        }
    }

    @Get("cpf/{cpf}")
    @Auth
    public void getUserCpf(String cpf) {
        result.include("user", this.userApplication.getByCPf(cpf));
    }

    @Post("update")
    @Auth
    public void update(User user) {
        this.userApplication.update(user);
        result.redirectTo(this).userPage();
    }

    @Post("remove")
    @Auth
    public void remove(User user) {
        this.userApplication.remove(user);
    }
}
