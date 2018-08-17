package pl.kalkulatorBudowlany.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_2_1N;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_3_1;
import pl.kalkulatorBudowlany.repository.EN_1992_Table_2_1N_Repository;
import pl.kalkulatorBudowlany.repository.EN_1992_Table_3_1_Repository;

import java.util.ArrayList;
import java.util.List;

@Controller
public class SlabController {

    @Autowired
    private EN_1992_Table_2_1N_Repository table21NRepository;

    @Autowired
    private EN_1992_Table_3_1_Repository table31Repository;


    @GetMapping("/form")
    public String form(Model model){
        List<EN_1992_Table_2_1N> table21N = table21NRepository.findAll();
        model.addAttribute("table21", table21N);
        return "/reinforcedConcreteSlab/list";
    }

//    @PostMapping("/slabform")
//    @ResponseBody
//    public String slabFromPost(){
//
//    }
//
//    @ModelAttribute("table21")
//    public List<EN_1992_Table_2_1N> listOfYc(){
//        return table21NRepository.findAll();
//    }
//
//    @ModelAttribute("table31")
//    public List<EN_1992_Table_3_1> listOfYs(){
//        return table31Repository.findAll();
//    }

}
