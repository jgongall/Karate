package com.curso.KarateCurso;

import com.intuit.karate.junit5.Karate;

class KarateOptionsRunner {
    
    @Karate.Test
    Karate testCountries() {
        return Karate.run("classpath:10usuariosCRUD.feature").hook(new MyLoggingHook()).relativeTo(getClass());
    }

}
