package com.springboot.project.controller;


import com.springboot.project.dto.CaseDTO;
import com.springboot.project.dto.RecommendationsDTO;
import com.springboot.project.service.FileDownloadUtil;
import com.springboot.project.service.cbr.BaseCbrApplication;
import com.springboot.project.service.cbr.CaseDescription;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cbr")
public class CbrController  {

    @Autowired ResourceLoader resourceLoader;

    @Autowired
    ResourcePatternResolver resourceResolver;

    /***
     * Cao cao Annaaa
     * Ova ovde metoda te zanima!
     */
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

            /***
             * Ana ovde treba da uradis deo koji se tice dr device~
             * Dodaj to u retVal.pravila ;--;
             */
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

}
