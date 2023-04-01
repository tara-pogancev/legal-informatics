package com.springboot.project.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class CaseDTO {
    public int id;
    public String sud;
    public String poslovniBroj;
    public String sudija;
    public String tuzilac;
    public String okrivljeni;
    public List<String> krivicnoDelo = new ArrayList<>();
    public Integer vrednostDuvana;
    public Integer brojPakovanja;
    public Integer masaDuvana;
    public String vrstaDuvana;
    public String vrstaPresude;
    public List<String> primenjeniPropisi = new ArrayList<String>();
}
