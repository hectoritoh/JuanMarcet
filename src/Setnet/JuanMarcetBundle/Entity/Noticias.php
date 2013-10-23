<?php

namespace Setnet\JuanMarcetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Noticias
 */
class Noticias
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $titulo;

    /**
     * @var string
     */
    private $descripcion;

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
     * @var string
     */
    private $imagen;

    /**
     * @var integer
     */
    private $peso;


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
     * Set titulo
     *
     * @param string $titulo
     * @return Noticias
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;
    
        return $this;
    }

    /**
     * Get titulo
     *
     * @return string 
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Noticias
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;
    
        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set created
     *
     * @param \DateTime $created
     * @return Noticias
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
     * @return Noticias
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
     * @return Noticias
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
     * Set imagen
     *
     * @param string $imagen
     * @return Noticias
     */
    public function setImagen($imagen)
    {
        $this->imagen = $imagen;
    
        return $this;
    }

    /**
     * Get imagen
     *
     * @return string 
     */
    public function getImagen()
    {
        return $this->imagen;
    }

    /**
     * Set peso
     *
     * @param integer $peso
     * @return Noticias
     */
    public function setPeso($peso)
    {
        $this->peso = $peso;
    
        return $this;
    }

    /**
     * Get peso
     *
     * @return integer 
     */
    public function getPeso()
    {
        return $this->peso;
    }
    
    
    
    
    
    
    
    
    
    
    ////// tienda 


    protected $file;

    public function getFile() {
        return $this->file;
    }

    public function setFile($file) {
        $this->file = $file;
    }

    public function getAbsolutePath() {
        return null === $this->$url ? null : $this->getUploadRootDir() . '/' . $this->$url;
    }

    public function getWebPath() {
        return null === $this->$url ? null : $this->getUploadDir() . '/' . $this->$url;
    }

    protected function getUploadRootDir($basepath = "") {
        // the absolute directory path where uploaded documents should be saved
        return __DIR__ . '/../../../../web/' . $this->getUploadDir();
    }

    protected function getUploadDir() {
        // get rid of the __DIR__ so it doesn't screw when displaying uploaded doc/image in the view.
        return '/uploads/noticias';
    }

    public function upload() {



        // the file property can be empty if the field is not required
//    if (null === $this->file) {
//        return;
//    }

        $basepath = $this->getUploadRootDir();

        // we use the original file name here but you should
        // sanitize it at least to avoid any security issues
        // move takes the target directory and then the target filename to move to
        $var1 = $this->getUploadRootDir($basepath);
        $var2 = $this->file->getClientOriginalName();

        $this->file->move($this->getUploadRootDir($basepath), $this->file->getClientOriginalName());


        // set the path property to the filename where you'ved saved the file
        $this->setImagen($this->file->getClientOriginalName());


        // clean up the file property as you won't need it anymore
        $this->file = null;
    }
    
    
}