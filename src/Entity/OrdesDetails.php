<?php

namespace App\Entity;

use App\Repository\OrdesDetailsRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OrdesDetailsRepository::class)]
class OrdesDetails
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $quantity = null;


    #[ORM\Column]
    private ?int $price = null;




    #[ORM\ManyToOne(inversedBy: 'ordesDetails')]
    private ?Orders $orders = null;


    #[ORM\ManyToOne(inversedBy: 'ordesDetails')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Products $products = null;



    public function getQuantity(): ?int
    {
        return $this->quantity;
    }

    public function getrice(): ?int
    {
        return $this->price;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setPrie(int $price): self
    {
        $this->price = $price;

        return $this;
    }


    public function setQuantity(int $quantity): self
    {
        $this->quantity = $quantity;

        return $this;
    }

    public function getOrders(): ?Orders
    {
        return $this->orders;
    }

    public function setOrders(?Orders $orders): self
    {
        $this->orders = $orders;

        return $this;
    }

    public function getProducts(): ?Products
    {
        return $this->products;
    }

    public function setProducts(?Products $products): self
    {
        $this->products = $products;

        return $this;
    }
}
