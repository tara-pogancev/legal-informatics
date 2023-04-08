package com.springboot.project.service.cbr;

import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Interval;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;

public class BaseCbrApplication implements StandardCBRApplication {

    Connector _connector;  /** Connector object */
    CBRCaseBase _caseBase;  /** CaseBase object */

    NNConfig simConfig;  /** KNN configuration */

    public void configure() throws ExecutionException {
        _connector =  new CsvConnector();

        _caseBase = new LinealCaseBase();  // Create a Lineal case base for in-memory organization

        simConfig = new NNConfig(); // KNN configuration
        simConfig.setDescriptionSimFunction(new Average());  // global similarity function = average

        TabularSimilarity slicnostImanjaDozvoleZaMalo = new TabularSimilarity(Arrays.asList(
                "ima dozvolu",
                "nema dozvolu"));
        slicnostImanjaDozvoleZaMalo.setSimilarity("ima dozvolu", "nema dozvolu", 0.1);
        simConfig.addMapping(new Attribute("imaDozvoluZaMalo", CaseDescription.class), slicnostImanjaDozvoleZaMalo);

        TabularSimilarity slicnostImanjaDozvoleZaVeliko = new TabularSimilarity(Arrays.asList(
                "ima dozvolu",
                "nema dozvolu"));
        slicnostImanjaDozvoleZaVeliko.setSimilarity("ima dozvolu", "nema dozvolu", 0.1);
        simConfig.addMapping(new Attribute("imaDozvoluZaVeliko", CaseDescription.class), slicnostImanjaDozvoleZaVeliko);


        TabularSimilarity slicnostVrsteTrgovine = new TabularSimilarity(Arrays.asList(
                "promet na malo",
                "promet na veliko",
                "promet na malo i veliko"));
        slicnostVrsteTrgovine.setSimilarity("promet na malo", "promet na veliko", 0.5);
        slicnostVrsteTrgovine.setSimilarity("promet na malo", "promet na malo i veliko", 0.8);
        slicnostVrsteTrgovine.setSimilarity("promet na veliko", "promet na malo i veliko", 0.8);
        simConfig.addMapping(new Attribute("vrstaTrgovine", CaseDescription.class), slicnostVrsteTrgovine);

        TabularSimilarity slicnostAkcije = new TabularSimilarity(Arrays.asList(
                "kupovina",
                "prodaja",
                "krijumcarenje"));
        slicnostAkcije.setSimilarity("kupovina", "prodaja", 0.7);
        slicnostAkcije.setSimilarity("prodaja", "krijumcarenje", 0.3);
        slicnostAkcije.setSimilarity("kupovina", "krijumcarenje", 0.3);
        simConfig.addMapping(new Attribute("akcija", CaseDescription.class), slicnostAkcije);


        TabularSimilarity slicnostVrsteDuvana = new TabularSimilarity(Arrays.asList(
                "rezani duvan",
                "cigarete"));
        slicnostVrsteDuvana.setSimilarity("rezani duvan", "cigarete", 0.7);
        simConfig.addMapping(new Attribute("vrstaDuvana", CaseDescription.class), slicnostVrsteDuvana);


        simConfig.addMapping(new Attribute("vrednostDuvana", CaseDescription.class), new Interval(15000));
        simConfig.addMapping(new Attribute("brojPakovanja", CaseDescription.class), new Interval(1000));
        simConfig.addMapping(new Attribute("masaDuvana", CaseDescription.class), new Interval(1000));


        // Equal - returns 1 if both individuals are equal, otherwise returns 0
        // Interval - returns the similarity of two number inside an interval: sim(x,y) = 1-(|x-y|/interval)
        // Threshold - returns 1 if the difference between two numbers is less than a threshold, 0 in the other case
        // EqualsStringIgnoreCase - returns 1 if both String are the same despite case letters, 0 in the other case
        // MaxString - returns a similarity value depending of the biggest substring that belong to both strings
        // EnumDistance - returns the similarity of two enum values as the their distance: sim(x,y) = |ord(x) - ord(y)|
        // EnumCyclicDistance - computes the similarity between two enum values as their cyclic distance
        // Table - uses a table to obtain the similarity between two values. Allowed values are Strings or Enums. The table is read from a text file.
        // TabularSimilarity - calculates similarity between two strings or two lists of strings on the basis of tabular similarities
    }

    public void cycle(CBRQuery query) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
    }

    public List<String> getCycle(CBRQuery query) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        List<String> retVal = new ArrayList<>();
        for (RetrievalResult nse : eval)
            retVal.add(nse.get_case().getDescription() + " -> " + nse.getEval());
        return  retVal;
    }

    public void postCycle() throws ExecutionException {

    }

    public CBRCaseBase preCycle() throws ExecutionException {
        _caseBase.init(_connector);
        java.util.Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
        return _caseBase;
    }

}
