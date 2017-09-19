<?php

namespace MicroCMS\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

class CompetenceController {

    public function competenceAction(Application $app) {
        $competences = $app['dao.competence']->findAll();
        // var_dump($experiences);
        return $app['twig']->render('competence.html.twig', array('competences' => $competences));
    }

    public function competencesingleAction($id, Application $app) {
       // Traitement pour récupérer une seule expérience avec la requete find($id) du DAO :)
       $competence = $app['dao.competence']->find($id);
       // print_r($experience);
       return $app['twig']->render( 'competence.html.twig', array(
           'competences' => [$competence],
         )
       );
    }
}
