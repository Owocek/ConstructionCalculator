package pl.kalkulatorBudowlany.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EN_1992_Table_4_4N_Values {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String structuralClass;
    private String exposureClass;
    private double bothClassesValues;

    public long getId() {
        return id;
    }

    public String getStructuralClass() {
        return structuralClass;
    }

    public String getExposureClass() {
        return exposureClass;
    }

    public double getBothClassesValues() {
        return bothClassesValues;
    }
}
