package com.example.jenkins_demo;

import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

  @GetMapping("/hello")
  public Map<String,String> helloWorld(){
    return Map.of("key", "Hello World");
  }
}
