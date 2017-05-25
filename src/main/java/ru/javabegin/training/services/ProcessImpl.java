package ru.javabegin.training.services;

import org.springframework.stereotype.Service;

/**
 * Created by sbt-vasyukov-sv on 25.05.2017 10:48.
 * Service layer.
 */
@Service("process")
public class ProcessImpl implements ProcessInterface {
    @Override
    public String getMessage() {
        return "my message";
    }
}
