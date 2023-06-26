<?php

namespace App\Controller;

use App\Entity\Products;
use Doctrine\Persistence\ManagerRegistry;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/products', name: 'app_products')]
class ProduitController extends AbstractController
{
    private $managerRegistry;

    public function __construct(ManagerRegistry $managerRegistry)
    {
        $this->managerRegistry = $managerRegistry;
    }

    #[Route('/', name: 'index')]
    public function index(): Response
    {
        return $this->render('products/index.html.twig');
    }

    #[Route('/{slug}', name: 'details')]
    public function details(string $slug): Response
    {
        $entityManager = $this->managerRegistry->getManager();
        $product = $entityManager->getRepository(Products::class)->findOneBy(['slug' => $slug]);

        if (!$product) {
            throw $this->createNotFoundException('Product not found');
        }

        return $this->render('products/details.html.twig', [
            'product' => $product,
        ]);
    }
}

#Dans cette version, j'ai ajouté un constructeur à la classe ProduitController et injecté ManagerRegistry en tant que dépendance. Ensuite, j'ai utilisé $this->managerRegistry pour obtenir l'EntityManager. Assurez-vous également que la classe ManagerRegistry est correctement importée dans votre fichier.
