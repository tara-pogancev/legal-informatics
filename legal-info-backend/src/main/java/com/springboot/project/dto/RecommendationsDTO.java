package com.springboot.project.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class RecommendationsDTO {
    public List<String> slucajevi = new ArrayList<>();
    public String pravila = "Nema preporuka";
}
