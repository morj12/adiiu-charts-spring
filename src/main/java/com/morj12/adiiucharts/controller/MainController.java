package com.morj12.adiiucharts.controller;

import com.morj12.adiiucharts.entity.Country;
import com.morj12.adiiucharts.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;



@Controller
public class MainController {

    @Autowired
    private CountryRepository countryRepository;

    @RequestMapping("/")
    public String indexMapping() {
        return "index.jsp";
    }

    @RequestMapping("/salary")
    public String salaryMapping(Model model) {
        List<Country> countryList = countryRepository.findAll();
        model.addAttribute("countries", countryList);
        return "salary.jsp";
    }

    @RequestMapping("/gdp")
    public String gdpMapping(Model model) {
        List<Country> countryList = countryRepository.findAll();
        model.addAttribute("countries", countryList);
        return "gdp.jsp";
    }

    @RequestMapping("/covid")
    public String covidMapping() {
        return "covid.jsp";
    }

}
