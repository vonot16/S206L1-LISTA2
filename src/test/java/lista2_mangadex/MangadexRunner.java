package lista2_mangadex;

import com.intuit.karate.junit5.Karate;

class MangadexRunner {
    
    @Karate.Test
    Karate testJson() {
        return Karate.run("mangadex").relativeTo(getClass());
    }    

}