<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index()
    {
        $posts = $this->getDoctrine()->getRepository('App\Entity\Optreden')->findAll();
        dump($posts);
        return $this->render('home/index.html.twig', [
            'Optreden' =>$posts

        ]);
    }
}
