package pl.kalkulatorBudowlany.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EN_1992_Table_2_1N {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private double yc;
    private double ys;

    // GETTERSl

    public long getId() {
        return id;
    }

    public double getYc() {
        return yc;
    }

    public double getYs() {
        return ys;
    }
}
