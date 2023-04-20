package com.springboot.project.controller;


import com.springboot.project.dto.CaseDTO;
import com.springboot.project.dto.RecommendationsDTO;
import com.springboot.project.service.DrDeviceService;
import com.springboot.project.service.FeatureExtractionService;
import com.springboot.project.service.cbr.BaseCbrApplication;
import com.springboot.project.service.cbr.CaseDescription;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cbr")
public class CbrController  {

    @Autowired ResourceLoader resourceLoader;

    @Autowired
    ResourcePatternResolver resourceResolver;

    @Autowired
    FeatureExtractionService featureExtractionService;

    @Autowired
    DrDeviceService drDeviceService;


    @PostMapping("/recommend-case-solution")
    public ResponseEntity<?> recommendCaseSolution(@RequestBody CaseDTO caseDTO) {
        BaseCbrApplication recommender = new BaseCbrApplication();
        RecommendationsDTO retVal = new RecommendationsDTO();
        try {
            recommender.configure();
            recommender.preCycle();

            CBRQuery query = new CBRQuery();
            CaseDescription caseDescription = new CaseDescription();
            caseDescription.setKrivicnoDelo(caseDTO.krivicnoDelo);
            caseDescription.setVrednostDuvana(caseDTO.vrednostDuvana);
            caseDescription.setVrstaDuvana(caseDTO.vrstaDuvana);
            caseDescription.setBrojPakovanja(caseDTO.brojPakovanja);
            caseDescription.setMasaDuvana(caseDTO.masaDuvana);
            caseDescription.setAkcija(caseDTO.akcija);
            caseDescription.setVrstaTrgovine(caseDTO.vrstaTrgovine);
            caseDescription.setImaDozvoluZaMalo(caseDTO.imaDozvoluZaMalo);
            caseDescription.setImaDozvoluZaVeliko(caseDTO.imaDozvoluZaVeliko);

            query.setDescription( caseDescription );

            retVal.slucajevi = recommender.getCycle(query);
            recommender.postCycle();

            retVal.pravila = drDeviceService.startDrDevice(caseDTO);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.ok(retVal);
    }

    /***
     * Promene su vidljive u okvriru TARGET foldera > classes
     */
    @PostMapping("/new-case")
    public ResponseEntity<?> writeNewCase(@RequestBody CaseDTO caseDTO) throws IOException {
        BufferedWriter bw = new BufferedWriter(new FileWriter(new ClassPathResource("presude.csv").getFile(), true));
        bw.write("00" + ";" + caseDTO.sud + ";" + caseDTO.poslovniBroj +";" + caseDTO.sudija +";"
                + caseDTO.tuzilac +";" + caseDTO.okrivljeni +";" + String.join(",", caseDTO.krivicnoDelo) +";"
                + caseDTO.vrednostDuvana + ";"
                + caseDTO.brojPakovanja + ";"
                + caseDTO.masaDuvana + ";"
                + caseDTO.vrstaDuvana + ";"
                + caseDTO.imaDozvoluZaMalo + ";"
                + caseDTO.imaDozvoluZaVeliko + ";"
                + caseDTO.vrstaTrgovine + ";"
                + caseDTO.akcija + ";"
                + caseDTO.vrstaPresude + ";"
                + String.join(",", caseDTO.primenjeniPropisi)
        );
        bw.newLine();
        bw.close();

        return ResponseEntity.ok(null);
    }

    @GetMapping("/cases-pdf")
    public ResponseEntity<?> getCasesPdf() throws IOException {
        List<String> retVal = new ArrayList<>();
        Resource[] resources = resourceResolver.getResources("classpath:cases/*.pdf");
        for (Resource res: resources) {
            retVal.add(res.getFilename());
        }
        return ResponseEntity.ok()
                .body(retVal);
    }

    @GetMapping("/cases-pdf/{caseName}")
    public ResponseEntity<?> getCasePdf(@PathVariable String caseName) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:cases/" + caseName);
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_PDF)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/laws-pdf")
    public ResponseEntity<?> getLawsPdf() throws IOException {
        List<String> retVal = new ArrayList<>();
        Resource[] resources = resourceResolver.getResources("classpath:law/*.pdf");
        for (Resource res: resources) {
            retVal.add(res.getFilename());
        }
        return ResponseEntity.ok()
                .body(retVal);
    }

    @GetMapping("/laws-pdf/{lawName}")
    public ResponseEntity<?> getLawPdf(@PathVariable String lawName) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:law/" + lawName);
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_PDF)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/laws-akoma-ntoso")
    public ResponseEntity<?> getLawsAkomaNtoso() throws IOException {
        Resource resource = resourceLoader.getResource("classpath:akoma-ntoso/Akoma Ntoso Zakoni.html");
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XHTML_XML)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/cases-akoma-ntoso")
    public ResponseEntity<?> getCasesAkomaNtoso() throws IOException {
        List<String> retVal = new ArrayList<>();
        Resource[] resources = resourceResolver.getResources("classpath:akoma-ntoso/*.html");
        for (Resource res: resources) {
            if (!res.getFilename().contains("Zakoni")) {
                retVal.add(res.getFilename());
            }
        }
        return ResponseEntity.ok()
                .body(retVal);
    }

    @GetMapping("/cases-akoma-ntoso/{caseName}")
    public ResponseEntity<?> getCaseAkomaNtoso(@PathVariable String caseName) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:akoma-ntoso/" + caseName);
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XHTML_XML)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/extract-case-features-from-pdf/{caseNumber}")
    public ResponseEntity<?> extractCaseFeaturesFromPdf(@PathVariable String caseNumber) throws IOException {
        Map<String, String> retVal = new HashMap<>();

        retVal.put("Broj slučaja", featureExtractionService.extractCaseNumber(caseNumber));
        retVal.put("Optuženi", featureExtractionService.extractDefendantInitials(caseNumber));
        retVal.put("Sud", featureExtractionService.extractCourt(caseNumber));
        retVal.put("Sudija", featureExtractionService.extractJudgeName(caseNumber));
        retVal.put("Zapisničar", featureExtractionService.extractCourtReporterName(caseNumber));
        retVal.put("Oduzimajne sredstava", featureExtractionService.extractConfiscationStatus(caseNumber));

        return ResponseEntity.ok(retVal);
    }

    /***
     * Anina metodica za testiranje koju ne diram!
     */
    @GetMapping("/extract-case-features/{caseNumber}")
    public ResponseEntity<?> extractCaseFeatures(@PathVariable String caseNumber) throws IOException {
        String text = featureExtractionService.extractConfiscationStatus(caseNumber);

        return ResponseEntity.ok(text);
    }

}
