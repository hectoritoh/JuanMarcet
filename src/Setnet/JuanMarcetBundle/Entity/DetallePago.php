<?php

namespace Setnet\JuanMarcetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DetallePago
 */
class DetallePago
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $nombre_tarjeta;

    /**
     * @var string
     */
    private $ccv;

    /**
     * @var string
     */
    private $mes_vence;

    /**
     * @var string
     */
    private $anio_vence;

    /**
     * @var string
     */
    private $numero_tarjeta;

    /**
     * @var integer
     */
    private $estado;

    /**
     * @var \DateTime
     */
    private $created;

    /**
     * @var \DateTime
     */
    private $updated;

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
     * Set nombre_tarjeta
     *
     * @param string $nombreTarjeta
     * @return DetallePago
     */
    public function setNombreTarjeta($nombreTarjeta)
    {
        $this->nombre_tarjeta = $nombreTarjeta;
    
        return $this;
    }

    /**
     * Get nombre_tarjeta
     *
     * @return string 
     */
    public function getNombreTarjeta()
    {
        return $this->nombre_tarjeta;
    }

    /**
     * Set ccv
     *
     * @param string $ccv
     * @return DetallePago
     */
    public function setCcv($ccv)
    {
        $this->ccv = $ccv;
    
        return $this;
    }

    /**
     * Get ccv
     *
     * @return string 
     */
    public function getCcv()
    {
        return $this->ccv;
    }

    /**
     * Set mes_vence
     *
     * @param string $mesVence
     * @return DetallePago
     */
    public function setMesVence($mesVence)
    {
        $this->mes_vence = $mesVence;
    
        return $this;
    }

    /**
     * Get mes_vence
     *
     * @return string 
     */
    public function getMesVence()
    {
        return $this->mes_vence;
    }

    /**
     * Set anio_vence
     *
     * @param string $anioVence
     * @return DetallePago
     */
    public function setAnioVence($anioVence)
    {
        $this->anio_vence = $anioVence;
    
        return $this;
    }

    /**
     * Get anio_vence
     *
     * @return string 
     */
    public function getAnioVence()
    {
        return $this->anio_vence;
    }

    /**
     * Set numero_tarjeta
     *
     * @param string $numeroTarjeta
     * @return DetallePago
     */
    public function setNumeroTarjeta($numeroTarjeta)
    {
        $this->numero_tarjeta = $numeroTarjeta;
    
        return $this;
    }

    /**
     * Get numero_tarjeta
     *
     * @return string 
     */
    public function getNumeroTarjeta()
    {
        return $this->numero_tarjeta;
    }

    /**
     * Set estado
     *
     * @param integer $estado
     * @return DetallePago
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;
    
        return $this;
    }

    /**
     * Get estado
     *
     * @return integer 
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set created
     *
     * @param \DateTime $created
     * @return DetallePago
     */
    public function setCreated($created)
    {
        $this->created = $created;
    
        return $this;
    }

    /**
     * Get created
     *
     * @return \DateTime 
     */
    public function getCreated()
    {
        return $this->created;
    }

    /**
     * Set updated
     *
     * @param \DateTime $updated
     * @return DetallePago
     */
    public function setUpdated($updated)
    {
        $this->updated = $updated;
    
        return $this;
    }

    /**
     * Get updated
     *
     * @return \DateTime 
     */
    public function getUpdated()
    {
        return $this->updated;
    }

    /**
     * Set compra
     *
     * @param \Setnet\JuanMarcetBundle\Entity\Compra $compra
     * @return DetallePago
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