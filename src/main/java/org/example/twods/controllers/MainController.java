package org.example.twods.controllers;

import org.example.twods.serviceEdmc.ServiceEdmc;
import org.example.twods.servicePortalSol.ServicePortalSol;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {

    private final ServiceEdmc serviceEdmc;
    private final ServicePortalSol servicePortalSol;

    public MainController(ServiceEdmc serviceEdmc, ServicePortalSol servicePortalSol) {
        this.serviceEdmc = serviceEdmc;
        this.servicePortalSol = servicePortalSol;
    }

    @GetMapping("/orders")
    public String getDataAllOrders(Model model) {
        model.addAttribute("ordersEdmc", serviceEdmc.findAllOrders());
        model.addAttribute("ordersPortalSol", servicePortalSol.findAllOrders());
        return "main";
    }

    @PostMapping("/save")
    public String saveData(@RequestParam Map<String, String> form) {

        return "redirect:/orders";
    }
}
