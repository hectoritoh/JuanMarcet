<?php

namespace Setnet\JuanMarcetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Compra
 */
class Compra
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var \DateTime
     */
    private $created;

    /**
     * @var \DateTime
     */
    private $updated;

    /**
     * @var integer
     */
    private $estado;

    /**
     * @var \Setnet\JuanMarcetBundle\Entity\DetalleEnvio
     */
    private $detalleEnvio;

    /**
     * @var \Setnet\JuanMarcetBundle\Entity\DetallePago
     */
    private $detallePago;

    /**
     * @var \Setnet\JuanMarcetBundle\Entity\Usuario
     */
    private $usuario;


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
     * Set created
     *
     * @param \DateTime $created
     * @return Compra
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
     * @return Compra
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
     * Set estado
     *
     * @param integer $estado
     * @return Compra
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
     * Set detalleEnvio
     *
     * @param \Setnet\JuanMarcetBundle\Entity\DetalleEnvio $detalleEnvio
     * @return Compra
     */
    public function setDetalleEnvio(\Setnet\JuanMarcetBundle\Entity\DetalleEnvio $detalleEnvio)
    {
        $this->detalleEnvio = $detalleEnvio;
    
        return $this;
    }

    /**
     * Get detalleEnvio
     *
     * @return \Setnet\JuanMarcetBundle\Entity\DetalleEnvio 
     */
    public function getDetalleEnvio()
    {
        return $this->detalleEnvio;
    }

    /**
     * Set detallePago
     *
     * @param \Setnet\JuanMarcetBundle\Entity\DetallePago $detallePago
     * @return Compra
     */
    public function setDetallePago(\Setnet\JuanMarcetBundle\Entity\DetallePago $detallePago)
    {
        $this->detallePago = $detallePago;
    
        return $this;
    }

    /**
     * Get detallePago
     *
     * @return \Setnet\JuanMarcetBundle\Entity\DetallePago 
     */
    public function getDetallePago()
    {
        return $this->detallePago;
    }

    /**
     * Set usuario
     *
     * @param \Setnet\JuanMarcetBundle\Entity\Usuario $usuario
     * @return Compra
     */
    public function setUsuario(\Setnet\JuanMarcetBundle\Entity\Usuario $usuario)
    {
        $this->usuario = $usuario;
    
        return $this;
    }

    /**
     * Get usuario
     *
     * @return \Setnet\JuanMarcetBundle\Entity\Usuario 
     */
    public function getUsuario()
    {
        return $this->usuario;
    }
}