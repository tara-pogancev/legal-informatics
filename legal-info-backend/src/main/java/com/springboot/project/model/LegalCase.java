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
}
