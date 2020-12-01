/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import application.EventApplication;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import javax.inject.Inject;
import domain.event.Event;
import exceptions.BusinessException;

/**
 *
 * @author Lucas
 */
@Controller
@Path("events")
public class EventController {

    @Inject
    private EventApplication eventApplication;

    @Inject
    private Result result;

    @Get("create-event")
    public void createEvent() {
    }

    @Get("")
    public void getEvents() {
        result.include("eventsList", this.eventApplication.listAll());
    }

    @Post("save")
    public void persistEvent(Event event) {
        try {
            this.eventApplication.save(event);
            result.redirectTo(this).getEvents();
        } catch (BusinessException e) {
            result.include("event", event);
            result.include("errorMessage", e.getMessage());
            result.redirectTo(this).createEvent();
        }
    }

    @Get("id/{id}")
    public void getEventId(String id) {
        result.include("event", this.eventApplication.getById(id));

    }

    @Post("update")
    public void updateEvent(Event event) {
        this.eventApplication.update(event);
        result.redirectTo(this).getEvents();
    }

    @Get("delete/id/{id}")
    public void deleteById(String id) {
        result.include("event", this.eventApplication.getById(id));

    }

    @Post("delete")
    public void deleteEvent(Event event) {
        this.eventApplication.remove(event);
        result.redirectTo(this).getEvents();
    }

}
