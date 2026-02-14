package com.example;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class TestGreeter {

    private Greeter greeter;

    @BeforeEach
    void setUp() {
        greeter = new Greeter();
    }

    @Test
    void shouldReturnGreetingMessage() {
        String result = greeter.sayHello();

        assertNotNull(result);
        assertTrue(result.contains("Hello"));
    }

    @Test
    void greetingShouldNotBeEmpty() {
        String result = greeter.sayHello();

        assertFalse(result.isEmpty());
    }
}
