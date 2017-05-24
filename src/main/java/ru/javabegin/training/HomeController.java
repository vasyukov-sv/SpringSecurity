package ru.javabegin.training;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.Locale;

/**
 * Handles requests for the application home page.
 */
@SuppressWarnings("SameReturnValue")
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


    @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
    public ModelAndView accessDenied(Principal user) {
        ModelAndView model = new ModelAndView()
                .addObject("errorMsg", String.format("%s You have not access this page", user != null ? user.getName() : ""));
        model.setViewName("content/accessDenied");
        return model;
    }

    @RequestMapping(value = {"/", "/mainlogin"}, method = RequestMethod.GET)
    public ModelAndView mainlogin(@RequestParam(value = "error", required = false) String error, Locale locale) {
        logger.info("Welcome! The client locale is {}.", locale);
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username or password");
        }
        model.setViewName("mainlogin");
        return model;
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String mainPage() {
        return "content/user";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage() {
        return "content/admin";
    }
}
