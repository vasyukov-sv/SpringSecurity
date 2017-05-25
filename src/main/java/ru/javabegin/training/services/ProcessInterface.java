package ru.javabegin.training.services;

import org.springframework.security.access.annotation.Secured;

/**
 * Created by sbt-vasyukov-sv on 25.05.2017 10:47.
 * Service layer interface
 */
public interface ProcessInterface {

    @Secured("ROLE_USER")
    String getMessage();

}
