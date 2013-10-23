<?php

namespace Setnet\JuanMarcetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TrabajaConNosotros
 */
class TrabajaConNosotros
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $lugar;
    /**
     * @var string
     */
    private $cedula;

    /**
     * @var string
     */
    private $apellidos;

    /**
     * @var string
     */
    private $nombres;

    /**
     * @var \DateTime
     */
    private $nacimiento;

    /**
     * @var string
     */
    private $genero;

    /**
     * @var string
     */
    private $nacionalidad;

    /**
     * @var string
     */
    private $direccion;

    /**
     * @var string
     */
    private $celular;

    /**
     * @var string
     */
    private $fijo;

    /**
     * @var string
     */
    private $email;

    /**
     * @var string
     */
    private $areaAplica;

    /**
     * @var string
     */
    private $nivelAplica;

    /**
     * @var string
     */
    private $estadoCivil;

    /**
     * @var string
     */
    private $contactoEmergencia;

    /**
     * @var string
     */
    private $telelfonoEmergencia;

    /**
     * @var integer
     */
    private $estado;


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
     * Set lugar
     *
     * @param string $lugar
     * @return TrabajaConNosotros
     */
    public function setLugar($lugar)
    {
        $this->lugar = $lugar;
    
        return $this;
    }

    /**
     * Get lugar
     *
     * @return string 
     */
    public function getLugar()
    {
        return $this->lugar;
    }
        /**
     * Set cedula
     *
     * @param string $cedula
     * @return TrabajaConNosotros
     */
    public function setCedula($cedula)
    {
        $this->cedula = $cedula;
    
        return $this;
    }

    /**
     * Get cedula
     *
     * @return string 
     */
    public function getCedula()
    {
        return $this->cedula;
    }


    /**
     * Set apellidos
     *
     * @param string $apellidos
     * @return TrabajaConNosotros
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;
    
        return $this;
    }

    /**
     * Get apellidos
     *
     * @return string 
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * Set nombres
     *
     * @param string $nombres
     * @return TrabajaConNosotros
     */
    public function setNombres($nombres)
    {
        $this->nombres = $nombres;
    
        return $this;
    }

    /**
     * Get nombres
     *
     * @return string 
     */
    public function getNombres()
    {
        return $this->nombres;
    }

    /**
     * Set nacimiento
     *
     * @param \DateTime $nacimiento
     * @return TrabajaConNosotros
     */
    public function setNacimiento($nacimiento)
    {
        $this->nacimiento = $nacimiento;
    
        return $this;
    }

    /**
     * Get nacimiento
     *
     * @return \DateTime 
     */
    public function getNacimiento()
    {
        return $this->nacimiento;
    }

    /**
     * Set genero
     *
     * @param string $genero
     * @return TrabajaConNosotros
     */
    public function setGenero($genero)
    {
        $this->genero = $genero;
    
        return $this;
    }

    /**
     * Get genero
     *
     * @return string 
     */
    public function getGenero()
    {
        return $this->genero;
    }

    /**
     * Set nacionalidad
     *
     * @param string $nacionalidad
     * @return TrabajaConNosotros
     */
    public function setNacionalidad($nacionalidad)
    {
        $this->nacionalidad = $nacionalidad;
    
        return $this;
    }

    /**
     * Get nacionalidad
     *
     * @return string 
     */
    public function getNacionalidad()
    {
        return $this->nacionalidad;
    }

    /**
     * Set direccion
     *
     * @param string $direccion
     * @return TrabajaConNosotros
     */
    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;
    
        return $this;
    }

    /**
     * Get direccion
     *
     * @return string 
     */
    public function getDireccion()
    {
        return $this->direccion;
    }

    /**
     * Set celular
     *
     * @param string $celular
     * @return TrabajaConNosotros
     */
    public function setCelular($celular)
    {
        $this->celular = $celular;
    
        return $this;
    }

    /**
     * Get celular
     *
     * @return string 
     */
    public function getCelular()
    {
        return $this->celular;
    }

    /**
     * Set fijo
     *
     * @param string $fijo
     * @return TrabajaConNosotros
     */
    public function setFijo($fijo)
    {
        $this->fijo = $fijo;
    
        return $this;
    }

    /**
     * Get fijo
     *
     * @return string 
     */
    public function getFijo()
    {
        return $this->fijo;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return TrabajaConNosotros
     */
    public function setEmail($email)
    {
        $this->email = $email;
    
        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set areaAplica
     *
     * @param string $areaAplica
     * @return TrabajaConNosotros
     */
    public function setAreaAplica($areaAplica)
    {
        $this->areaAplica = $areaAplica;
    
        return $this;
    }

    /**
     * Get areaAplica
     *
     * @return string 
     */
    public function getAreaAplica()
    {
        return $this->areaAplica;
    }

    /**
     * Set nivelAplica
     *
     * @param string $nivelAplica
     * @return TrabajaConNosotros
     */
    public function setNivelAplica($nivelAplica)
    {
        $this->nivelAplica = $nivelAplica;
    
        return $this;
    }

    /**
     * Get nivelAplica
     *
     * @return string 
     */
    public function getNivelAplica()
    {
        return $this->nivelAplica;
    }

    /**
     * Set estadoCivil
     *
     * @param string $estadoCivil
     * @return TrabajaConNosotros
     */
    public function setEstadoCivil($estadoCivil)
    {
        $this->estadoCivil = $estadoCivil;
    
        return $this;
    }

    /**
     * Get estadoCivil
     *
     * @return string 
     */
    public function getEstadoCivil()
    {
        return $this->estadoCivil;
    }

    /**
     * Set contactoEmergencia
     *
     * @param string $contactoEmergencia
     * @return TrabajaConNosotros
     */
    public function setContactoEmergencia($contactoEmergencia)
    {
        $this->contactoEmergencia = $contactoEmergencia;
    
        return $this;
    }

    /**
     * Get contactoEmergencia
     *
     * @return string 
     */
    public function getContactoEmergencia()
    {
        return $this->contactoEmergencia;
    }

    /**
     * Set telelfonoEmergencia
     *
     * @param string $telelfonoEmergencia
     * @return TrabajaConNosotros
     */
    public function setTelelfonoEmergencia($telelfonoEmergencia)
    {
        $this->telelfonoEmergencia = $telelfonoEmergencia;
    
        return $this;
    }

    /**
     * Get telelfonoEmergencia
     *
     * @return string 
     */
    public function getTelelfonoEmergencia()
    {
        return $this->telelfonoEmergencia;
    }

    /**
     * Set estado
     *
     * @param integer $estado
     * @return TrabajaConNosotros
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
}