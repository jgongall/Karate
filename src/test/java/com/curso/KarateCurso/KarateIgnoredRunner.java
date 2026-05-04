package com.curso.KarateCurso;

import com.intuit.karate.junit5.Karate;

class KarateIgnoredRunner {
    
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:").hook(new MyLoggingHook()).tags("~@ignore").relativeTo(getClass());
    }

}
