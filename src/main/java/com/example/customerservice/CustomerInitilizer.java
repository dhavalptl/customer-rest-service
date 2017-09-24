package com.example.customerservice;

import com.example.customerservice.model.Customer;
import com.example.customerservice.repository.CustomerRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.stream.Stream;

@Component
class CustomerInitilizer implements CommandLineRunner {

    private final CustomerRepository customerRepository;

    CustomerInitilizer(CustomerRepository customerRepository){
        this.customerRepository = customerRepository;
    }

    @Override
    public void run(String... strings) throws Exception {
        Stream.of("Mital","Miral","Paresh","Hardik").forEach(name -> this.customerRepository.save(new Customer(name, "Surat", "a@test.com")));
        this.customerRepository.findAll().forEach(System.out::println);
    }
}