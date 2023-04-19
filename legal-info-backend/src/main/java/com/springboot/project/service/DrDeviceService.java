package com.springboot.project.service;

import com.springboot.project.dto.CaseDTO;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Objects;

@Service
@RequiredArgsConstructor
public class DrDeviceService {

    @Value("${drdevice.path}")
    private String BASE_PATH;

    public String startDrDevice(CaseDTO caseDTO) throws IOException, InterruptedException {
        String cleanPath = BASE_PATH + "clean.bat";
        String startPath = BASE_PATH + "start.bat";

        writeFactsRdf(caseDTO);

        try {
            ProcessBuilder pb = new ProcessBuilder(cleanPath);
            pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
            pb.redirectError(ProcessBuilder.Redirect.INHERIT);
            pb.directory(new File(cleanPath).getParentFile());

            Process process = pb.start();
            int exitCode = process.waitFor();
            // Print the exit code
            System.out.println("CLEAN.BAT file exited with code " + exitCode);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                ProcessBuilder pb = new ProcessBuilder(startPath);
                pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
                pb.redirectError(ProcessBuilder.Redirect.INHERIT);
                pb.directory(new File(startPath).getParentFile());

                Process process = pb.start();
                int exitCode = process.waitFor();
                // Print the exit code
                System.out.println("START.BAT file exited with code " + exitCode);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                return formatResults();
            }
        }
    }

    private void writeFactsRdf(CaseDTO caseDTO) throws IOException {
        String is_entity;
        String placed_on_market_rezani_duvan = "yes";
        String has_done_wholesale_distribution = "no";
        String has_wholesale_distribution_permit = "yes";
        String has_done_retail_distribution = "no";
        String has_retail_distribution_permit = "yes";
        String organized_reseller_network = "yes";

        if (Objects.equals(caseDTO.uloga, "fizicko lice")) {
            is_entity = "individual";
        } else if (Objects.equals(caseDTO.uloga, "pravno lice")) {
            is_entity = "legal_entity";
        } else {
            is_entity = "legal_entity_responsible_individual";
        }

        if (Objects.equals(caseDTO.vrstaTrgovine, "promet na malo") || Objects.equals(caseDTO.vrstaTrgovine, "promet na malo i veliko")) {
            has_done_retail_distribution = "yes";
        }

        if (Objects.equals(caseDTO.vrstaTrgovine, "promet na veliko") || Objects.equals(caseDTO.vrstaTrgovine, "promet na malo i veliko")) {
            has_done_wholesale_distribution = "yes";
        }

        if (Objects.equals(caseDTO.imaDozvoluZaVeliko, "nema dozvolu")) {
            has_wholesale_distribution_permit = "no";
        }

        if (Objects.equals(caseDTO.imaDozvoluZaMalo, "nema dozvolu")) {
            has_retail_distribution_permit = "no";
        }

        if (Objects.equals(caseDTO.mrezaPreprodavaca, "nije ukljucena")) {
            organized_reseller_network = "no";
        }


        String fileContent =
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n" +
                        "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n" +
                        "        xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\"\n" +
                        "        xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n" +
                        "        xmlns:lc=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#\">\n" +
                        "    <lc:case rdf:about=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#case01\">\n" +
                        "       <lc:defendant>John</lc:defendant>\n" +
                        "        <lc:name>case 01</lc:name>\n" +
                        "\t<lc:is_entity>" + is_entity + "</lc:is_entity>\n" +
                        "\t<lc:placed_on_market_rezani_duvan>" + placed_on_market_rezani_duvan + "</lc:placed_on_market_rezani_duvan>\n" +
                        "\t<lc:has_done_wholesale_distribution>" + has_done_wholesale_distribution + "</lc:has_done_wholesale_distribution>\n" +
                        "\t<lc:has_wholesale_distribution_permit>" + has_wholesale_distribution_permit + "</lc:has_wholesale_distribution_permit>\n" +
                        "\t<lc:has_done_retail_distribution>" + has_done_retail_distribution + "</lc:has_done_retail_distribution>\n" +
                        "\t<lc:has_retail_distribution_permit>" + has_retail_distribution_permit + "</lc:has_retail_distribution_permit>\n" +
                        "\t<lc:organized_reseller_network>" + organized_reseller_network + "</lc:organized_reseller_network>\n" +
                        "        <lc:profit rdf:datatype=\"http://www.w3.org/2001/XMLSchema#integer\">" + caseDTO.vrednostDuvana + "</lc:profit>\n" +
                        "    </lc:case>\n" +
                        "</rdf:RDF>";

        FileWriter writer = new FileWriter(BASE_PATH + "facts.rdf", false);
        writer.write(fileContent);
        writer.close();
    }

    private String formatResults() throws IOException {
        String retVal = "";
        String provenPositive = "<defeasible:truthStatus>defeasibly-proven-positive</defeasible:truthStatus>";

        String resultsPath = BASE_PATH + "export.rdf";
        String fileContent = new String(Files.readAllBytes(Paths.get(resultsPath)), StandardCharsets.UTF_8);

        String placed_on_market_rezani_duvan = StringUtils.substringBetween(fileContent, "<export:placed_on_market_rezani_duvan", "</export:placed_on_market_rezani_duvan");
        if (placed_on_market_rezani_duvan != null && placed_on_market_rezani_duvan.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen za ilegalnu prodaju duvana. \n\n";
        }

        String unauthorized_retail_distribution = StringUtils.substringBetween(fileContent, "<export:unauthorized_retail_distribution", "</export:unauthorized_retail_distribution>");
        if (unauthorized_retail_distribution != null && unauthorized_retail_distribution.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen za ilegalnu trgovinu u prometu na malo. \n\n";
        }

        String unauthorized_wholesale_distribution = StringUtils.substringBetween(fileContent, "<export:unauthorized_wholesale_distribution", "</export:unauthorized_wholesale_distribution>");
        if (unauthorized_wholesale_distribution != null && unauthorized_wholesale_distribution.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen za ilegalnu trgovinu u prometu na veliko. \n\n";
        }

        String to_pay_min = StringUtils.substringBetween(fileContent, "<export:to_pay_min", "</export:to_pay_min");
        if (to_pay_min != null && to_pay_min.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen da plati MINIMALNO " + StringUtils.substringBetween(to_pay_min, "<export:value>", "</export:value>") + "e. \n\n";
        }

        String to_pay_max = StringUtils.substringBetween(fileContent, "<export:to_pay_max", "</export:to_pay_max");
        if (to_pay_max != null && to_pay_max.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen da plati MAKSIMALNO " + StringUtils.substringBetween(to_pay_max, "<export:value>", "</export:value>") + "e. \n\n";
        }

        String to_confiscate = StringUtils.substringBetween(fileContent, "<export:to_confiscate", "</export:to_confiscate");
        if (to_confiscate != null && to_confiscate.contains(provenPositive)) {
            retVal += "Okrivljenom se oduzima ilegalno korišćen duvan. \n";
        }

        String to_prohibit_min = StringUtils.substringBetween(fileContent, "<export:to_prohibit_min", "</export:to_prohibit_min");
        if (to_prohibit_min != null && to_prohibit_min.contains(provenPositive)) {
            retVal += "Okrivljenom se izriče MINIMALNA zatvorska kazna od " + StringUtils.substringBetween(to_prohibit_min, "<export:value>", "</export:value>") + " meseci. \n\n";
        }

        String to_prohibit_max = StringUtils.substringBetween(fileContent, "<export:to_prohibit_max", "</export:to_prohibit_max");
        if (to_prohibit_max != null && to_prohibit_max.contains(provenPositive)) {
            retVal += "Okrivljenom se izriče MAKSIMALNA zatvorska kazna od " + StringUtils.substringBetween(to_prohibit_max, "<export:value>", "</export:value>") + " meseci. \n\n";
        }

        if (retVal.isEmpty()) {
            retVal = "Nema zaključaka.";
        }

        return retVal;
    }

}
