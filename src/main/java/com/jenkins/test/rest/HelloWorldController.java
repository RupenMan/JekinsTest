package com.jenkins.test.rest;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

  @GetMapping(value= "/hello", produces = MediaType.APPLICATION_JSON_VALUE)
  public String hello() {
    return "{msg: Hello World}";
  }
}
