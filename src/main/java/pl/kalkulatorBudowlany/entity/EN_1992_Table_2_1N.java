package pl.kalkulatorBudowlany.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class EN_1992_Table_2_1N {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private double yc;
    private double ys;

    // GETTERS

    public long getId() {
        return id;
    }

    public double getYc() {
        return yc;
    }

    public double getYs() {
        return ys;
    }

    @Override
    public String toString() {
        return "EN_1992_Table_2_1N{" +
                "id=" + id +
                ", yc=" + yc +
                ", ys=" + ys +
                '}';
    }
}
