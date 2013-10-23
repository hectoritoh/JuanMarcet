<?php

namespace Setnet\JuanMarcetBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Show\ShowMapper;

class BannerAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {



        $formMapper
                ->add('file', 'file')              
                ->add('tipo', 'choice', array(
                    'choices' => array('p' => 'principal', 's' => 'secundario')
                ))
                ->add('descripcion')
                ->add('estado', 'choice', array(
                    'choices' => array('1' => 'publicado', '0' => 'no publicado')
                ))
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        $datagridMapper
                ->add('tipo')
                ->add('descripcion')
                ->add('estado');
    }
     

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('imagen', null , array('template' => 'SetnetJuanMarcetBundle:Admin:image.preview.html.twig'))          
                ->add('tipo', 'choice', array(
                    'choices' => array('p' => 'principal', 's' => 'secundario')
                ))
                ->add('descripcion')
                ->add('estado', 'choice', array(
                    'choices' => array(1 => 'publicado', 0 => 'no publicado')))
                ->add('getPublishStatusName' , "string" , array("label" => "Estado"));
    }

    public function prePersist($banner) {
        $banner->setEstado("p");
        $banner->setCreated(new \DateTime());
        $banner->setUpdated(new \DateTime());
        $banner->upload();
    }

    public function preUpdate($banner) {
        $banner->setUpdated(new \DateTime());
        $banner->upload($banner);
    }

    
    
    
    public function getPublishStatusName()
{
//    return array( 0 => 'Validé', 1 => 'Supprimé', '2' => 'Spam', '3' => 'En attente validation');
    return "publciado";
}
    
}

?>
