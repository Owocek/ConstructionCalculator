package pl.kalkulatorBudowlany.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EN_1992_Table_3_1 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private double fck;
    private double fckCube;
    private double fcm;
    private double fctm;
    private double fctk005;
    private double fctk095;
    private double Ecm;
    private double epsilon_c1;
    private double epsilon_cu1;
    private double epsilon_c2;
    private double epsilon_cu2;
    private double n;
    private double epsilon_c3;
    private double epsilon_cu3;

    // GETTERS




    public long getId() {
        return id;
    }

    public double getFck() {
        return fck;
    }

    public double getFckCube() {
        return fckCube;
    }

    public double getFcm() {
        return fcm;
    }

    public double getFctm() {
        return fctm;
    }

    public double getFctk005() {
        return fctk005;
    }

    public double getFctk095() {
        return fctk095;
    }

    public double getEcm() {
        return Ecm;
    }

    public double getEpsilon_c1() {
        return epsilon_c1;
    }

    public double getEpsilon_cu1() {
        return epsilon_cu1;
    }

    public double getEpsilon_c2() {
        return epsilon_c2;
    }

    public double getEpsilon_cu2() {
        return epsilon_cu2;
    }

    public double getN() {
        return n;
    }

    public double getEpsilon_c3() {
        return epsilon_c3;
    }

    public double getEpsilon_cu3() {
        return epsilon_cu3;
    }

    @Override
    public String toString() {
        return "EN_1992_Table_3_1{" +
                "id=" + id +
                ", fck=" + fck +
                ", fckCube=" + fckCube +
                ", fcm=" + fcm +
                ", fctm=" + fctm +
                ", fctk005=" + fctk005 +
                ", fctk095=" + fctk095 +
                ", Ecm=" + Ecm +
                ", epsilon_c1=" + epsilon_c1 +
                ", epsilon_cu1=" + epsilon_cu1 +
                ", epsilon_c2=" + epsilon_c2 +
                ", epsilon_cu2=" + epsilon_cu2 +
                ", n=" + n +
                ", epsilon_c3=" + epsilon_c3 +
                ", epsilon_cu3=" + epsilon_cu3 +
                '}';
    }
}
