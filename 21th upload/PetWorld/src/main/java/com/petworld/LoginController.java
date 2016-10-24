package com.petworld;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


 
@Controller
public class LoginController {
    @RequestMapping(value = "/logiin", method = RequestMethod.GET)
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        return "logiin";
    }
 
    @RequestMapping(value="loginSubmit", method = RequestMethod.POST)
    public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) {
        if (loginBean != null && loginBean.getUserName() != null & loginBean.getPassword() != null) {
            if (loginBean.getUserName().equals("kalaivanan") && loginBean.getPassword().equals("kalai123")) {
                model.addAttribute("msg", "welcome" + loginBean.getUserName());
                return "mainpage1";
            } else {
                model.addAttribute("error", "Invalid Details");
                return "logiin";
            }
        } else {
            model.addAttribute("error", "Please enter Details");
            return "logiin";
        }
    }
}
