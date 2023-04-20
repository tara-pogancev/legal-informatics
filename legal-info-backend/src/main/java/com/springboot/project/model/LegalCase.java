package com.springboot.project.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Table
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LegalCase extends DatabaseEntity{

    @Column(name = "case_number")
    private String caseNumber;

    @Column(name = "court")
    private String court;

    @Column(name = "judge")
    private String judge;

    @Column(name = "court_reporter")
    private String courtReporter;

    @Column(name = "defendant")
    private String defendant;

    @Column(name = "confiscationStatus")
    private String confiscationStatus;

    @Column(name = "reasonForProsecution")
    private String reasonForProsecution;

    @Column(name = "citedArticles")
    private String citedArticles;

    @Column(name = "punishment")
    private String punishment;

    @Column(name = "goods")
    private String goods;


}
