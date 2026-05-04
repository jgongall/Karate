package com.curso.KarateCurso;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.intuit.karate.RuntimeHook;
import com.intuit.karate.core.ScenarioRuntime;

public class MyLoggingHook implements RuntimeHook {
    private static final Logger logger = LoggerFactory.getLogger(MyLoggingHook.class);

    @Override
    public boolean beforeScenario(ScenarioRuntime sr) {
        // Obtiene el nombre del escenario actual
        String scenarioName = sr.scenario.getName();
        logger.info(">>> INICIANDO ESCENARIO: {}", scenarioName);
        return true; // Continuar con la ejecución
    }

    @Override
    public void afterScenario(ScenarioRuntime sr) {
        logger.info("<<< FINALIZADO ESCENARIO: {}", sr.scenario.getName());
    }
}
