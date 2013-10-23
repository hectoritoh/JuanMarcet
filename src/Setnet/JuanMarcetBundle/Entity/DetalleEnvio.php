<?php

namespace Setnet\JuanMarcetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DetalleEnvio
 */
class DetalleEnvio
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
     * @var string
     */
    private $calle;

    /**
     * @var string
     */
    private $departamento;

    /**
     * @var string
     */
    private $ciudad;

    /**
     * @var string
     */
    private $provincia;

    /**
     * @var string
     */
    private $region;

    /**
     * @var string
     */
    private $codigo_postal;

    /**
     * @var \Setnet\JuanMarcetBundle\Entity\Compra
     */
    private $compra;


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
     * @return DetalleEnvio
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
     * Set calle
     *
     * @param string $calle
     * @return DetalleEnvio
     */
    public function setCalle($calle)
    {
        $this->calle = $calle;
    
        return $this;
    }

    /**
     * Get calle
     *
     * @return string 
     */
    public function getCalle()
    {
        return $this->calle;
    }

    /**
     * Set departamento
     *
     * @param string $departamento
     * @return DetalleEnvio
     */
    public function setDepartamento($departamento)
    {
        $this->departamento = $departamento;
    
        return $this;
    }

    /**
     * Get departamento
     *
     * @return string 
     */
    public function getDepartamento()
    {
        return $this->departamento;
    }

    /**
     * Set ciudad
     *
     * @param string $ciudad
     * @return DetalleEnvio
     */
    public function setCiudad($ciudad)
    {
        $this->ciudad = $ciudad;
    
        return $this;
    }

    /**
     * Get ciudad
     *
     * @return string 
     */
    public function getCiudad()
    {
        return $this->ciudad;
    }

    /**
     * Set provincia
     *
     * @param string $provincia
     * @return DetalleEnvio
     */
    public function setProvincia($provincia)
    {
        $this->provincia = $provincia;
    
        return $this;
    }

    /**
     * Get provincia
     *
     * @return string 
     */
    public function getProvincia()
    {
        return $this->provincia;
    }

    /**
     * Set region
     *
     * @param string $region
     * @return DetalleEnvio
     */
    public function setRegion($region)
    {
        $this->region = $region;
    
        return $this;
    }

    /**
     * Get region
     *
     * @return string 
     */
    public function getRegion()
    {
        return $this->region;
    }

    /**
     * Set codigo_postal
     *
     * @param string $codigoPostal
     * @return DetalleEnvio
     */
    public function setCodigoPostal($codigoPostal)
    {
        $this->codigo_postal = $codigoPostal;
    
        return $this;
    }

    /**
     * Get codigo_postal
     *
     * @return string 
     */
    public function getCodigoPostal()
    {
        return $this->codigo_postal;
    }

    /**
     * Set compra
     *
     * @param \Setnet\JuanMarcetBundle\Entity\Compra $compra
     * @return DetalleEnvio
     */
    public function setCompra(\Setnet\JuanMarcetBundle\Entity\Compra $compra = null)
    {
        $this->compra = $compra;
    
        return $this;
    }

    /**
     * Get compra
     *
     * @return \Setnet\JuanMarcetBundle\Entity\Compra 
     */
    public function getCompra()
    {
        return $this->compra;
    }
}