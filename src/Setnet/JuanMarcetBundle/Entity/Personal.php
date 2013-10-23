<?php

namespace Setnet\JuanMarcetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Personal
 */
class Personal
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $nombre;

    /**
     * @var float
     */
    private $estatura;

    /**
     * @var string
     */
    private $sponsor;

    /**
     * @var string
     */
    private $anecdota;

    /**
     * @var integer
     */
    private $edad;

    /**
     * @var string
     */
    private $extra1;

    /**
     * @var string
     */
    private $extra2;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    private $entrevista;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->entrevista = new \Doctrine\Common\Collections\ArrayCollection();
    }
    
    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Personal
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;
    
        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set estatura
     *
     * @param float $estatura
     * @return Personal
     */
    public function setEstatura($estatura)
    {
        $this->estatura = $estatura;
    
        return $this;
    }

    /**
     * Get estatura
     *
     * @return float 
     */
    public function getEstatura()
    {
        return $this->estatura;
    }

    /**
     * Set sponsor
     *
     * @param string $sponsor
     * @return Personal
     */
    public function setSponsor($sponsor)
    {
        $this->sponsor = $sponsor;
    
        return $this;
    }

    /**
     * Get sponsor
     *
     * @return string 
     */
    public function getSponsor()
    {
        return $this->sponsor;
    }

    /**
     * Set anecdota
     *
     * @param string $anecdota
     * @return Personal
     */
    public function setAnecdota($anecdota)
    {
        $this->anecdota = $anecdota;
    
        return $this;
    }

    /**
     * Get anecdota
     *
     * @return string 
     */
    public function getAnecdota()
    {
        return $this->anecdota;
    }

    /**
     * Set edad
     *
     * @param integer $edad
     * @return Personal
     */
    public function setEdad($edad)
    {
        $this->edad = $edad;
    
        return $this;
    }

    /**
     * Get edad
     *
     * @return integer 
     */
    public function getEdad()
    {
        return $this->edad;
    }

    /**
     * Set extra1
     *
     * @param string $extra1
     * @return Personal
     */
    public function setExtra1($extra1)
    {
        $this->extra1 = $extra1;
    
        return $this;
    }

    /**
     * Get extra1
     *
     * @return string 
     */
    public function getExtra1()
    {
        return $this->extra1;
    }

    /**
     * Set extra2
     *
     * @param string $extra2
     * @return Personal
     */
    public function setExtra2($extra2)
    {
        $this->extra2 = $extra2;
    
        return $this;
    }

    /**
     * Get extra2
     *
     * @return string 
     */
    public function getExtra2()
    {
        return $this->extra2;
    }

    /**
     * Add entrevista
     *
     * @param \Setnet\JuanMarcetBundle\Entity\Entrevista $entrevista
     * @return Personal
     */
    public function addEntrevista(\Setnet\JuanMarcetBundle\Entity\Entrevista $entrevista)
    {
        $this->entrevista[] = $entrevista;
    
        return $this;
    }

    /**
     * Remove entrevista
     *
     * @param \Setnet\JuanMarcetBundle\Entity\Entrevista $entrevista
     */
    public function removeEntrevista(\Setnet\JuanMarcetBundle\Entity\Entrevista $entrevista)
    {
        $this->entrevista->removeElement($entrevista);
    }

    /**
     * Get entrevista
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getEntrevista()
    {
        return $this->entrevista;
    }
}