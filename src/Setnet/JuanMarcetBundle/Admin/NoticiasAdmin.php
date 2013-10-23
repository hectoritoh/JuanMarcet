<?php

namespace Setnet\JuanMarcetBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class NoticiasAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
                ->add('titulo')
                ->add('file', 'file', array(
                    "label" => "imagen"
                ))
                ->add('descripcion')
                ->add('peso')
                ->add('estado', 'choice', array(
                    'choices' => array(1 => 'publicado', 0 => 'secundario')))
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('imagen')
                ->add('descripcion')
                ->add('peso')
                ->add('created')
                ->add('estado', 'choice', array(
                    'choices' => array('p' => 'publicado', 's' => 'secundario')))
        ;
    }

    public function prePersist($objEntity) {
        $objEntity->setEstado("p");
        $objEntity->setCreated(new \DateTime());
        $objEntity->setUpdated(new \DateTime());
        $objEntity->upload();
    }

    public function preUpdate($objEntity) {
        $objEntity->setUpdated(new \DateTime());
        $objEntity->upload();
    }

}

?>
