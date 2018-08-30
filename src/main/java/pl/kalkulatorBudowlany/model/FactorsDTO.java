package pl.kalkulatorBudowlany.model;

public class FactorsDTO {

    // EN-1992 Table 2.1N
    private double yc;
    private double ys;

    // EN-1992 Table 3.1
    private double fck;
    private double Es;
    private double fyk;
    private String structuralClass;
    private String exposureClass;
    private double lx;
    private double ly;
    private double tw;
    private double tz;
    private double hf;
    private double fi_g;
    private double fi_d;
    private double gk;
    private double qk;

    // GETTERS

    public double getYc() {
        return yc;
    }

    public double getYs() {
        return ys;
    }

    public double getFck() {
        return fck;
    }

    public double getEs() {
        return Es;
    }

    public double getFyk() {
        return fyk;
    }

    public String getStructuralClass() {
        return structuralClass;
    }

    public String getExposureClass() {
        return exposureClass;
    }

    public double getLx() {
        return lx;
    }

    public double getLy() {
        return ly;
    }

    public double getTw() {
        return tw;
    }

    public double getTz() {
        return tz;
    }

    public double getHf() {
        return hf;
    }

    public double getFi_g() {
        return fi_g;
    }

    public double getFi_d() {
        return fi_d;
    }

    public double getGk() {
        return gk;
    }

    public double getQk() {
        return qk;
    }

    @Override
    public String toString() {
        return "FactorsDTO{" +
                "yc=" + yc +
                ", ys=" + ys +
                ", fck=" + fck +
                ", Es=" + Es +
                ", fyk=" + fyk +
                ", structuralClass='" + structuralClass + '\'' +
                ", exposureClass='" + exposureClass + '\'' +
                ", lx=" + lx +
                ", ly=" + ly +
                ", tw=" + tw +
                ", tz=" + tz +
                ", hf=" + hf +
                ", fi_g=" + fi_g +
                ", fi_d=" + fi_d +
                ", gk=" + gk +
                ", qk=" + qk +
                '}';
    }
}
