package com.springboot.project.service;

import com.springboot.project.model.LegalCase;
import com.springboot.project.repository.LegalCaseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FeatureExtractionService {
    private final LegalCaseRepository legalCaseRepository;

    public LegalCase testMethod(String caseNumber){
        LegalCase c = new LegalCase();
        c.setCaseNumber(caseNumber);
        c.setCourt("Osnovni sud u Ulcinju");
        c.setDefendant("N.N.");
        c.setJudge("Neki Sudija");
        c.setCourtReporter("Neki Zapisnicar");
        legalCaseRepository.save(c);
        return c;
    }

}
