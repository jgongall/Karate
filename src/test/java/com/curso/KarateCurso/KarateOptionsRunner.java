package com.curso.KarateCurso;

import com.intuit.karate.junit5.Karate;

class KarateOptionsRunner {
    
    @Karate.Test
    Karate testCountries() {
        return Karate.run("classpath:10productCRUD.feature").relativeTo(getClass());
    }

}
