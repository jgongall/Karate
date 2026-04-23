package com.curso.KarateCurso;

import com.intuit.karate.junit5.Karate;

class KarateOptionsPokemonRunner {
    
    /**
     * @return
     */
    @Karate.Test
    Karate testPokemon() {
        return Karate.run("classpath:23PokeApi.feature").relativeTo(getClass());
    }

}
