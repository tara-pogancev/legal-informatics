package com.springboot.project.service.cbr;

import java.util.ArrayList;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {
    private int id;
    private String sud;
    private String poslovniBroj;
    private String sudija;
    private String tuzilac;
    private String okrivljeni;
    private List<String> krivicnoDelo = new ArrayList<>();
    private Integer vrednostDuvana;
    private Integer brojPakovanja;
    private Integer masaDuvana;
    private String vrstaDuvana;
    private String imaDozvoluZaMalo;
    private String imaDozvoluZaVeliko;
    private String vrstaTrgovine;
    private String akcija;
    private String vrstaPresude;
    private String mrezaPreprodavaca;
    private String uloga;
    private List<String> primenjeniPropisi = new ArrayList<String>();

    public String getMrezaPreprodavaca() {
        return mrezaPreprodavaca;
    }

    public void setMrezaPreprodavaca(String mrezaPreprodavaca) {
        this.mrezaPreprodavaca = mrezaPreprodavaca;
    }

    public String getUloga() {
        return uloga;
    }

    public void setUloga(String uloga) {
        this.uloga = uloga;
    }

    public String getImaDozvoluZaMalo() {
        return imaDozvoluZaMalo;
    }

    public void setImaDozvoluZaMalo(String imaDozvoluZaMalo) {
        this.imaDozvoluZaMalo = imaDozvoluZaMalo;
    }

    public String getImaDozvoluZaVeliko() {
        return imaDozvoluZaVeliko;
    }

    public void setImaDozvoluZaVeliko(String imaDozvoluZaVeliko) {
        this.imaDozvoluZaVeliko = imaDozvoluZaVeliko;
    }

    public String getVrstaTrgovine() {
        return vrstaTrgovine;
    }

    public void setVrstaTrgovine(String vrstaTrgovine) {
        this.vrstaTrgovine = vrstaTrgovine;
    }

    public String getAkcija() {
        return akcija;
    }

    public void setAkcija(String akcija) {
        this.akcija = akcija;
    }

    @Override
    public String toString() {
        String retVal = "CaseDescription{" +
                "id=" + id +
                ", sud='" + sud + '\'' +
                ", poslovniBroj='" + poslovniBroj + '\'' +
                ", sudija='" + sudija + '\'' +
                ", tuzilac='" + tuzilac + '\'' +
                ", okrivljeni='" + okrivljeni + '\'' +
        ", krivicnoDelo=";

        for (String str : krivicnoDelo) {
            retVal += str + ", ";
        }
        if (retVal.endsWith(", ")) {
            retVal = retVal.substring(0, retVal.length() - 2);
        }
        retVal += '\'';

        retVal +=   ", vrednostDuvana=" + vrednostDuvana +
                ", brojPakovanja=" + brojPakovanja +
                ", masaDuvana=" + masaDuvana +
                ", vrstaDuvana='" + vrstaDuvana + '\'' +
                ", vrstaPresude='" + vrstaPresude + '\'' +
                ", primenjeniPropisi='";

        for (String str : primenjeniPropisi) {
            retVal += str + ", ";
        }
        if (retVal.endsWith(", ")) {
            retVal = retVal.substring(0, retVal.length() - 2);
        }
        retVal += '}';

        return retVal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSud() {
        return sud;
    }

    public void setSud(String sud) {
        this.sud = sud;
    }

    public String getPoslovniBroj() {
        return poslovniBroj;
    }

    public void setPoslovniBroj(String poslovniBroj) {
        this.poslovniBroj = poslovniBroj;
    }

    public String getSudija() {
        return sudija;
    }

    public void setSudija(String sudija) {
        this.sudija = sudija;
    }

    public String getTuzilac() {
        return tuzilac;
    }

    public void setTuzilac(String tuzilac) {
        this.tuzilac = tuzilac;
    }

    public String getOkrivljeni() {
        return okrivljeni;
    }

    public void setOkrivljeni(String okrivljeni) {
        this.okrivljeni = okrivljeni;
    }

    public List<String> getKrivicnoDelo() {
        return krivicnoDelo;
    }

    public void setKrivicnoDelo(List<String> krivicnoDelo) {
        this.krivicnoDelo = krivicnoDelo;
    }

    public Integer getVrednostDuvana() {
        return vrednostDuvana;
    }

    public void setVrednostDuvana(Integer vrednostDuvana) {
        this.vrednostDuvana = vrednostDuvana;
    }

    public Integer getBrojPakovanja() {
        return brojPakovanja;
    }

    public void setBrojPakovanja(Integer brojPakovanja) {
        this.brojPakovanja = brojPakovanja;
    }

    public Integer getMasaDuvana() {
        return masaDuvana;
    }

    public void setMasaDuvana(Integer masaDuvana) {
        this.masaDuvana = masaDuvana;
    }

    public String getVrstaDuvana() {
        return vrstaDuvana;
    }

    public void setVrstaDuvana(String vrstaDuvana) {
        this.vrstaDuvana = vrstaDuvana;
    }

    public String getVrstaPresude() {
        return vrstaPresude;
    }

    public void setVrstaPresude(String vrstaPresude) {
        this.vrstaPresude = vrstaPresude;
    }

    public List<String> getPrimenjeniPropisi() {
        return primenjeniPropisi;
    }

    public void setPrimenjeniPropisi(List<String> primenjeniPropisi) {
        this.primenjeniPropisi = primenjeniPropisi;
    }

    @Override
    public Attribute getIdAttribute() {
        return new Attribute("id", this.getClass());
    }
}
