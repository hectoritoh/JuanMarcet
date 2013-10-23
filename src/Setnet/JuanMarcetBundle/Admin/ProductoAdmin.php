<?php

namespace Setnet\JuanMarcetBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class ProductoAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
                ->add('nombre')
                ->add('descripcion')
                ->add('tags')
//                ->add('subcategoria')
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        $datagridMapper
                ->add('nombre')
                ->add('descripcion')
                ->add('tags')
                ->add('subcategoria')
        ;
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('nombre')
                ->add('descripcion')
                ->add('tags')
                ->add('subcategoria')
        ;
    }

}

?>
