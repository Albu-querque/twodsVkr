package org.example.twods.controller;

import org.example.twods.entities.cloudComputing.CustomersCloudComp;
import org.example.twods.entities.edmc.Platforms;
import org.example.twods.repositories.cloudComputingRepo.CustomersCloudComputingRepo;
import org.example.twods.repositories.edmcRepo.PlatformsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @Autowired
    private CustomersCloudComputingRepo customersCloudComputingRepo;
    @Autowired
    private PlatformsRepo platformsRepo;


    @GetMapping("/list")
    public String getDataFromCloudCompAndEdmc(Model model) {
        Iterable<Platforms> listPlatforms = platformsRepo.findAll();
        Iterable<CustomersCloudComp> listCustomers = customersCloudComputingRepo.findAll();

        model.addAttribute("platforms", listPlatforms);
        model.addAttribute("customers", listCustomers);

        return "listEntry";
    }
}
