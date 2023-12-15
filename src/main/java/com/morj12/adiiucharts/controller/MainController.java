package com.morj12.adiiucharts.controller;

import com.morj12.adiiucharts.entity.Country;
import com.morj12.adiiucharts.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * MAIN CONTROLLER CLASS
 *
 * Catches every hyperlink to local resource, process it
 * and return a view.
 * For example, when someone goes to salary/ it gets all the
 * database entries and saves them into the Model. After that,
 * it returns a view where information of this Model is used.
 */

@Controller
public class MainController {

    /**
     * Used to connect to the DB.
     */
    @Autowired
    private CountryRepository countryRepository;

    /**
     * Home page request.
     * @return home page view
     */
    @RequestMapping("/")
    public String indexMapping() {
        return "index.jsp";
    }

    /**
     * Salary chart request.
     * @param model used to get countries data
     * @return salaries page view
     */
    @RequestMapping("/salary")
    public String salaryMapping(Model model) {
        List<Country> countryList = countryRepository.findAll();    // Get all countries
        model.addAttribute("countries", countryList);   // Save them as "countries"
        return "salary.jsp";
    }

    /**
     * GDP chart request
     * @param model used to get countries data
     * @return GDP page view
     */
    @RequestMapping("/gdp")
    public String gdpMapping(Model model) {
        List<Country> countryList = countryRepository.findAll();
        model.addAttribute("countries", countryList);
        return "gdp.jsp";
    }

    /**
     * Population map request
     * @return population page view
     */
    @RequestMapping("/population")
    public String populationMapping() {
        return "population.jsp";
    }

}
