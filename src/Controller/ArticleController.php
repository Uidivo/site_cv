<?php

namespace MicroCMS\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;
use MicroCMS\Domain\Comment;
use MicroCMS\Form\Type\CommentType;

class ArticleController {

    public function articleAction(Application $app) {
        $articles = $app['dao.article']->findAll();
        // var_dump($experiences);
        return $app['twig']->render('article.html.twig', array(
          'articles' => $articles
        ));
    }

    public function articlesingleAction($id, Request $request, Application $app) {
      $article = $app['dao.article']->find($id) ;
      // print_r($article);
      $commentFormView = null;
      if ($app['security.authorization_checker']->isGranted('IS_AUTHENTICATED_FULLY')) {
          // A user is fully authenticated : he can add comments
          $comment = new Comment();
          $comment->setArticle($article);
          $user = $app['user'];
          $comment->setAuthor($user);
          $commentForm = $app['form.factory']->create(CommentType::class, $comment);
          $commentForm->handleRequest($request);
          if ($commentForm->isSubmitted() && $commentForm->isValid()) {
              $app['dao.comment']->save($comment);
              $app['session']->getFlashBag()->add('success', 'Your comment was successfully added.');
          }
          $commentFormView = $commentForm->createView();
      }
      $comments = $app['dao.comment']->findAllByArticle($id);
      return $app['twig']->render('article.html.twig', array(
          'articles' => [$article],
          'comments' => $comments,
          'commentForm' => $commentFormView));
       // Traitement pour récupérer un seule article avec la requete find($id) du DAO :)
    }
}
