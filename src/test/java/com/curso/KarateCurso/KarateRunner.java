package com.curso.KarateCurso;

import com.intuit.karate.junit5.Karate;

class KarateRunner {
    
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:").hook(new MyLoggingHook()).relativeTo(getClass());
    }

}
