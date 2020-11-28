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
import infrastructure.EventDB;
import java.util.Scanner;
import javax.inject.Inject;
import models.Event;

/**
 *
 * @author Lucas
 */
@Controller
@Path("events")
public class EventController {

    @Inject
    private Result result;

    @Inject
    private EventDB eventDB;

    @Get("create-event")
    public void createEvent() {
    }

    @Get("")
    public void getEvents() {
        result.include("eventsList", this.eventDB.listAll());
    }

    @Post("save")
    public void persistEvent(Event event) {
        this.eventDB.save(event);
        result.redirectTo(this).getEvents();
    }

    @Get("id/{id}")
    public void getEventId(String id) {
        result.include("eventToUpdate", this.eventDB.getById(id));

    }

    @Post("update")
    public void updateEvent(Event event) {
        this.eventDB.update(event);
        result.redirectTo(this).getEvents();
    }

    @Get("delete/id/{id}")
    public void deleteById(String id) {
        result.include("eventToDelete", this.eventDB.getById(id));

    }

    @Post("delete")
    public void deleteEvent(Event event) {
        this.eventDB.remove(event);
        result.redirectTo(this).getEvents();
    }

}
