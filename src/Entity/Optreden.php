<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\OptredenRepository")
 */
class Optreden
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Artiest", inversedBy="optredens")
     * @ORM\JoinColumn(nullable=false)
     */
    private $artiest_id;

    /**
     * @ORM\Column(type="date")
     */
    private $datum;

    /**
     * @ORM\Column(type="datetime")
     */
    private $aanvang;

    /**
     * @ORM\Column(type="integer")
     */
    private $zaal;

    /**
     * @ORM\Column(type="integer")
     */
    private $maxSeats;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getArtiestId(): ?Artiest
    {
        return $this->artiest_id;
    }

    public function setArtiestId(?Artiest $artiest_id): self
    {
        $this->artiest_id = $artiest_id;

        return $this;
    }

    public function getDatum(): ?\DateTimeInterface
    {
        return $this->datum;

    }

    public function setDatum(\DateTimeInterface $datum): self
    {
        $this->datum = $datum;
        $datum->format('Y-m-d');

        return $this;
    }

    public function getAanvang(): ?\DateTimeInterface
    {
        return $this->aanvang;
    }

    public function setAanvang(\DateTimeInterface $aanvang): self
    {
        $this->aanvang = $aanvang;
        $aanvang->format('h:i:m');

        return $this;
    }

    public function getZaal(): ?int
    {
        return $this->zaal;
    }

    public function setZaal(int $zaal): self
    {
        $this->zaal = $zaal;

        return $this;
    }

    public function getMaxSeats(): ?int
    {
        return $this->maxSeats;
    }

    public function setMaxSeats(int $maxSeats): self
    {
        $this->maxSeats = $maxSeats;

        return $this;
    }

}
