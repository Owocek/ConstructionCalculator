package pl.kalkulatorBudowlany.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.kalkulatorBudowlany.entity.*;
import pl.kalkulatorBudowlany.model.FactorsDTO;
import pl.kalkulatorBudowlany.model.ValuesDTO;
import pl.kalkulatorBudowlany.repository.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class SlabController {

    @Autowired
    private EN_1992_Table_2_1N_Repository table21NRepository;

    @Autowired
    private EN_1992_Table_3_1_Repository table31Repository;

    @Autowired
    private EN_1992_Table_4_4N_ExposureClass_Repository table44NExposureClassRepository;

    @Autowired
    private EN_1992_Table_4_4N_StructuralClass_Repository table44NStructuralClass;

    @Autowired
    private EN_1992_Table_4_4N_Values_Repository table44NValuesRepository;

    @GetMapping("/form")
    public String form(Model model){
        model.addAttribute("allFactors", new FactorsDTO());
        return "/reinforcedConcreteSlab/form";
    }

    @GetMapping("")
    public String mainPage(){
        return "index";
    }

    @PostMapping("/form")
    public String postFrom(HttpServletRequest request, Model model){

        ValuesDTO values = new ValuesDTO();

        model.addAttribute("result", values);

        // GETTING VALUES SENT BY FORM
        values.setYc(Double.valueOf(request.getParameter("yc")));        // yc
        values.setYs(Double.valueOf(request.getParameter("ys")));        // ys
        values.setFck(Double.valueOf(request.getParameter("fck")));      // fck
        values.setFyk(Double.valueOf(request.getParameter("fyk")));      // fyk
        values.setEs(Double.valueOf(request.getParameter("es")));        // Es
        values.setExposureClass(request.getParameter("exposureClass"));  // exposureClass
        values.setStructuralClass(request.getParameter("structuralClass")); // structuralClass
        values.setLx(Double.valueOf(request.getParameter("lx")));        // Lx
        values.setLy(Double.valueOf(request.getParameter("ly")));        // Ly
        values.setTw(Double.valueOf(request.getParameter("tw")));        // tw
        values.setTz(Double.valueOf(request.getParameter("tz")));        // tz
        values.setHf(Double.valueOf(request.getParameter("hf")));        // hf
        values.setFi_g(Double.valueOf(request.getParameter("fi_g")));    // fi_g
        values.setFi_d(Double.valueOf(request.getParameter("fi_d")));    // fi_d
        values.setGk(Double.valueOf(request.getParameter("gk")));
        values.setQk(Double.valueOf(request.getParameter("qk")));


        // GETTING OTHER VALUES FROM DATABASE TABLE 3.1
        EN_1992_Table_3_1 oneFromTable31 = table31Repository.findOneWhereFckEqualsPart(values.getFck());
        values.setEcm(oneFromTable31.getEcm());                             // Ecm
        values.setEpsilon_cu3(oneFromTable31.getEpsilon_cu3());             // epsilon_cu3
        values.setFctm(oneFromTable31.getFctm());                           // fctm

        EN_1992_Table_4_4N_Values oneFromTable44 = table44NValuesRepository
                .findOneWhereExposureAndStructuralEqualsPart(values.getExposureClass(),values.getStructuralClass());

        values.setBothClassesValues(oneFromTable44.getBothClassesValues()); // c_mindur

        // CALCULATING VALUES

        double lambda;                                                      // lambda
        if (values.getFck() <= 50){
            values.setLambda(0.8);
        }
        else {
            values.setLambda(0.8 - (values.getFck() - 50) / 400);
        }

        double eta;                                                         // eta
        if (values.getFck() <= 50){
            values.setEta(1.0);
        }
        else {
            values.setEta(1.0 - (values.getFck()-50)/200);
        }

        values.setFcd(values.getFck()/values.getYc());                      // fcd

        values.setFyd(values.getFyk()/values.getYs());                      // fyd

        values.setEpsilon_yd(values.getFyd()/values.getEs());               // epsilon_yd

        values.setKsi_eff_lim((values.getLambda()*values.getEpsilon_cu3())  // ksi_eff_lim
                / (values.getEpsilon_cu3()+values.getEpsilon_yd()));

        if (values.getLx() < 1.0){                                          // b
            values.setB(values.getLx());
        } else {
            values.setB(1.0);
        }

        if (values.getLy() < 1.0){
            values.setB(values.getLy());
        } else {
            values.setB(1.0);
        }

        double[] listOfFi = {values.getFi_d(),values.getFi_g()};
        Arrays.sort(listOfFi);
        values.setC_min_b(listOfFi[listOfFi.length-1]);                     // c_min_b

        double[] find_c_min = {values.getC_min_b(), values.getBothClassesValues(), 10};
        Arrays.sort(find_c_min);
        values.setC_min(find_c_min[find_c_min.length-1]);                   // c_min

        values.setDelta_c_dev(10);                                          // delta_c_dev

        values.setC_nom(values.getC_min() + values.getDelta_c_dev());       // c_nom

        return "/reinforcedConcreteSlab/result";
    }

    @ModelAttribute("listOfYc")
    public List<Double> listOfYc(){
        List<EN_1992_Table_2_1N> list = table21NRepository.findAll();
        List<Double> table21NS = new ArrayList<>();
        for (EN_1992_Table_2_1N val: list){
            table21NS.add(val.getYc());
        }
        return table21NS;
    }

    @ModelAttribute("listOfYs")
    public List<Double> listOfYs(){
        List<EN_1992_Table_2_1N> list = table21NRepository.findAll();
        List<Double> table21NS = new ArrayList<>();
        for (EN_1992_Table_2_1N val: list){
            table21NS.add(val.getYs());
        }
        return table21NS;
    }

    @ModelAttribute("listOfFck")
    public List<Double> listOfFck(){
        List<EN_1992_Table_3_1> list = table31Repository.findAll();
        List<Double> table21NS = new ArrayList<>();
        for (EN_1992_Table_3_1 val: list){
            table21NS.add(val.getFck());
        }
        return table21NS;
    }

    @ModelAttribute("listOfExposureClass")
    public List<String> listOfExposureClass(){
        List<EN_1992_Table_4_4N_ExposureClass> list = table44NExposureClassRepository.findAll();
        List<String> table44NS = new ArrayList<>();
        for (EN_1992_Table_4_4N_ExposureClass val: list){
            table44NS.add(val.getExposureClass());
        }
        return table44NS;
    }

    @ModelAttribute("listOfStructuralClass")
    public List<String> listOfStructuralClass(){
        List<EN_1992_Table_4_4N_StructuralClass> list = table44NStructuralClass.findAll();
        List<String> table44NS = new ArrayList<>();
        for (EN_1992_Table_4_4N_StructuralClass val: list){
            table44NS.add(val.getStructuralClass());
        }
        return table44NS;
    }

}
