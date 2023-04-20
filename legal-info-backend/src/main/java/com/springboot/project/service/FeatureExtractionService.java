package com.springboot.project.service;

import com.springboot.project.model.LegalCase;
import com.springboot.project.repository.LegalCaseRepository;
import lombok.RequiredArgsConstructor;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@RequiredArgsConstructor
public class FeatureExtractionService {
    private final LegalCaseRepository legalCaseRepository;
    private final ResourceLoader resourceLoader;

    public LegalCase testMethod(String caseNumber) {
        LegalCase c = new LegalCase();
        c.setCaseNumber(caseNumber);
        c.setCourt("Osnovni sud u Ulcinju");
        c.setDefendant("N.N.");
        c.setJudge("Neki Sudija");
        c.setCourtReporter("Neki Zapisnicar");
        legalCaseRepository.save(c);
        return c;
    }

    public String readPDF(String caseNumber) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:cases/" + caseNumber + ".pdf");
        Path path = Paths.get(resource.getURI());
        File file = new File(path.toString());
        PDDocument document = PDDocument.load(file);
        PDFTextStripper stripper = new PDFTextStripper();
        String text = stripper.getText(document);
        document.close();
        return text;
    }

    //radi za sve slucajeve
    public String extractCaseNumber(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("^[kK]\\.\\s?([Bb]r\\.\\s?)?[0-9]{1,4}/[0-9]{2}\\s");
        Matcher matcher = pattern.matcher(str);
        String ret = " ";
        if (matcher.find()) {
            ret = matcher.group();
        } else {
            Pattern pattern2 = Pattern.compile("\\s[kK]\\.\\s?([Bb]r\\.\\s?)?[0-9]{1,4}/[0-9]{2}\\s");
            Matcher matcher2 = pattern2.matcher(str);
            if (matcher2.find()) {
                ret = matcher2.group();
            }
        }
        return ret.trim();
    }

    //radi za sve slucajeve
    public String extractDefendantInitials(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s((PRESUDU)|(P R E S U D U))\\s*((Okrivljen[ai])|(OKRIVLJEN[AI])|(Optužen[ia])):?\\s*[A-ZŽĐŠČĆ]{1,2}(\\.|,) ?[A-ZŽĐŠČĆ]{1,2}(\\.|,)");
        Matcher matcher = pattern.matcher(str);
        String ret = "unknown";
        if (matcher.find()) {
            ret = matcher.group();
            Pattern pattern2 = Pattern.compile("\\s[A-ZŽĐŠČĆ]{1,2}(\\.|,) ?[A-ZŽĐŠČĆ]{1,2}(\\.|,)");
            Matcher matcher2 = pattern2.matcher(ret);
            if (matcher2.find()) {
                ret = matcher2.group();
            }
        }
        return ret.replace(",", ".").replace(". ", ".").replace(".", ". ").trim();
    }

    //radi za sve slucajeve
    public String extractCourt(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\sU IME CRNE GORE\\s*[A-ZŽĐŠČĆa-zžđšćčć]+ ((SUD U)|(sud u)) [A-ZŽĐŠČĆa-zžđšćčć]+");
        Matcher matcher = pattern.matcher(str);
        String ret = "unknown";
        if (matcher.find()) {
            ret = matcher.group();

            Pattern pattern2 = Pattern.compile("\\s[A-ZŽĐŠČĆa-zžđšćčć]+ ((SUD U)|(sud u)) [A-ZŽĐŠČĆa-zžđšćčć]+");
            Matcher matcher2 = pattern2.matcher(ret);
            if (matcher2.find()) {
                ret = matcher2.group();
            }
        }
        return ret.trim();
    }

    //radi za sve slucajeve
    public String extractJudgeName(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s((ZAPISNIČAR(KA)?)|(Zapisničar(ka)?))(,|\\s)?\\s*((SUDIJA)|(S U D I J A)|(SUTKINJA)|(S U T K I N J A)),?\\s+[A-ZŽĐŠČĆa-zžđšćčć]+ [A-ZŽĐŠČĆa-zžđšćčć]+((,\\s?s.r.)|,|\\s)\\s?[A-ZŽĐŠČĆa-zžđšćčć]+ [A-ZŽĐŠČĆa-zžđšćčć]+,?(\\s?s.r.)?");
        Matcher matcher = pattern.matcher(str);
        String ret = "unknown";
        if (matcher.find()) {
            ret = matcher.group();
            String lines[] = ret.split("\\r?\\n");
            ret = lines[2];

            String names[] = ret.split(",");
            if (names.length > 1)
                ret = names[1].replace("s.r.", "").trim();
            else {
                names = ret.split(" ");
                ret = names[2] + " " + names[3];
            }
        } else {
            Pattern pattern2 = Pattern.compile("\\s((Sudija)|(SUDIJA)|(S U D I J A)|(Sutkinja)|(SUTKINJA)|(S U T K I N J A))(:|,)?\\s+(Mr )?[A-ZŽĐŠČĆa-zžđšćčć]+ [A-ZŽĐŠČĆa-zžđšćčć]+");
            Matcher matcher2 = pattern2.matcher(str);
            if (matcher2.find()) {
                ret = matcher2.group();

                String lines[] = ret.split("\\r?\\n");
                int i = 1;
                do {
                    i++;
                    ret = lines[i].replace("s.r.", "").trim();

                } while (lines[i].matches("^\\s*$"));
            }
        }
        return ret;
    }

    //radi za sve, za slucaj K 12 2021 - ostavljen je recenicni kontekst jer se ime nalazi u padezu
    public String extractCourtReporterName(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s((ZAPISNIČAR(KA)?)|(Zapisničar(ka)?))(,|\\s)?\\s*((SUDIJA)|(S U D I J A)|(SUTKINJA)|(S U T K I N J A)),?\\s+[A-ZŽĐŠČĆa-zžđšćčć]+ [A-ZŽĐŠČĆa-zžđšćčć]+");
        Matcher matcher = pattern.matcher(str);
        String ret = "unknown";
        if (matcher.find()) {
            ret = matcher.group();
            String lines[] = ret.split("\\r?\\n");
            ret = lines[2];
            return ret.replace("s.r.", "").trim();
        }
        Pattern pattern2 = Pattern.compile("\\sZTO(:|-)\\s?[A-ZŽĐŠČĆa-zžđšćčć]+ [A-ZŽĐŠČĆa-zžđšćčć]+");
        Matcher matcher2 = pattern2.matcher(str);

        //Pattern pattern3 = Pattern.compile("\\s((uz\\sučešće(\\snamještenika\\ssuda)?)|(sa\\szapisničarom))\\s+[A-ZŽĐŠČĆa-zžđšćčć]+ [A-ZŽĐŠČĆa-zžđšćčć]+");
        if (matcher2.find())
            return matcher2.group().replace("ZTO:", "").replace("ZTO-", "").trim();
        Pattern pattern3 = Pattern.compile("\\s((uz učešće\\s([a-zžđšćčć]+\\s){0,5})|(sa zapisničarom\\s))\\s*[A-ZŽĐŠČĆ]{1,2}[a-zžđšćčć]+ [A-ZŽĐŠČĆ]{1,2}[a-zžđšćčć]+");
        Matcher matcher3 = pattern3.matcher(str);
        if (matcher3.find()) {
            ret = matcher3.group().replace(",", "").replace("\r\n", " ").replace("\n", " ").trim();
        }
        return ret;
    }

    //radi za sve slucajeve
    public String extractConfiscationStatus(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s[Ii] ?z ?r ?i ?č ?e(,|:)?\\s+(MJER[AU] BEZBI?JEDNOSTI)\\s+((ODUZIMAN[jJ]E PREDMETA)|((([A-ZŽĐŠČĆa-zžđšćčć0-9/\\.]+\\s){0,10})[Oo]duzima((nje)|(ti))?))");
        Matcher matcher = pattern.matcher(str);
        String ret = "NE";
        if (matcher.find()) {
            ret = "DA";
        }
        else {
            Pattern pattern2 = Pattern.compile("\\s+izrekao(\\s+i)?\\s+mjeru\\s+bezbjednosti\\s?-?\\s+oduzimanj(e|a)\\s+predmeta,?\\s");
            Matcher matcher2 = pattern2.matcher(str);
            if (matcher2.find()) {
                ret = "DA";
            }
        }
        return ret;
    }

    //radi za sve
    public String extractReasonForProsecution(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s+zbog\\s+krivičnog\\s+djela\\s+[A-ZŽĐŠČĆa-zžđšćčć0-9.\\s]*?\\s+Krivičnog\\s+zakonika\\s+Crne\\s+Gore");
        Matcher matcher = pattern.matcher(str);
        String ret = "unknown";
        if (matcher.find()) {
            ret = matcher.group();
        }
        else {
            Pattern pattern2 = Pattern.compile("(\\szbog)?\\skrivičnog\\sdjela\\s[A-ZŽĐŠČĆa-zžđšćčć0-9.\\s]*?\\sKrivičnog\\szakonika\\sCrne\\sGore");
            Matcher matcher2 = pattern2.matcher(str);
            if (matcher2.find()) {
                ret = matcher2.group();
            }
        }
        return ret.replace("\r\n", " ").replace("\n", " ").trim();
    }

    //radii, ne nadje uvek bas sve
    public String extractCitedArticles(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s[Čč]l([.,]|(an))?\\s*[0-9]{1,3}(\\s*st[.,]\\s*[0-9]{1,3})?(\\s+u\\s+vezi\\s((st[.,]\\s*)|(stava\\s+))[0-9]{1,3})?(((,\\s*)|(\\s+i\\s+))([Čč]l([.,]|(an))?)?\\s*[0-9]{1,3}(\\s*st[.,]\\s*[0-9]{1,3})?)*\\s+((Krivičnog\\s+zakonika(\\s+Crne\\s+Gore)?)|(KZ\\s*CG)|(Zakonika\\s+o\\s+krivičnom\\s+postupku)|(ZKP-a)|(Zakona\\s+o\\s+duvanu))");
        Matcher matcher = pattern.matcher(str);
        String ret = "";
        while (matcher.find()) {
            ret = ret + ", " + matcher.group();
        }
        return ret.replace("\r\n", " ").replace("\n", " ").trim();
    }

    //radi za sve
    public String extractPunishment(String caseNumber) throws IOException {
        String str = this.readPDF(caseNumber);
        Pattern pattern = Pattern.compile("\\s((U ?S ?L ?O ?V ?N ?U ? O ?S ?U ?D ?U)|(O ?S ?U ?Đ ?U ?J ?E))\\s+[A-ZŽĐŠČĆA-ZŽĐŠČĆa-zžđšćčć,0-9()€:.\\s]*?\\.\r?\n");
        Matcher matcher = pattern.matcher(str);
        String ret = "unknown";
        if (matcher.find()) {
            ret = matcher.group();
        }
        return ret.replace("\r\n", " ").replace("\n", " ").trim();
    }



}
