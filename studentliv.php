<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');


$spisesteders = Spisesteder::limit(3)->get();
$treningsenters = Treningsenter::limit(2)->get();
$utesteders = Utesteder::limit(3)->get();

?>

    <?php require 'header.php' ?>

    <main id="studentliv_main">
        <section> <img src="images/studentliv/student_banner.png" </section>
            <section class="studentliv_kategori">
                <div> <img src="images/studentliv/student1.png">
                    <header> </header>
                </div>
                <div>
                    <p>Hvert år er 1700 studenter innskrevet i Westerdals Oslo ACT i 25 forskjellige programmer. Hver student har ulike behov og interesser, og her kan du finne nyttige lenker for studentlivet ditt.</p>
                </div>
                <div> <img src="images/studentliv/student2.png">
                    <header>
                </div>
            </section>
            <section class="studentliv_link">
                <header> Noen nyttige linker</header>
                <div> <img src="images/studentliv/sio.jpeg"><header> <a href="https://www.sio.no/en/" target="_blank"> SIO</a> 
                    </header>
                    <p>SiO er studentsamskipnaden i Oslo og Akershus, hjelper med ulike områder som bolig, treningssenter, barnehage etc. Alle fordeler for sio medlemmer er tilgjengelige hvis du er en aktiv student og betaler semesteravgift.</p>
                </div>
    
                <div> <img src="images/studentliv/student_torget.jpeg">
                     <header> <a href="http://studenttorget.no/" target="_blank">Student Torget</a></header>
                     <p>Denne nettsiden inneholder informasjon om ulike transportørvalg, utdanning, studentliv. Du kan også finne om forskjellige rabatter etc</p>
                </div>
                </section>
        </main>
    <?php require 'footer.php' ?>