<?php

namespace   Setnet\JuanMarcetBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class CategoriaAdmin extends Admin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('nombre')            
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('nombre')
            ->add('created')
            ->add('estado')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            
        ->addIdentifier('id')
            ->add('nombre')
            ->add('created')
            ->add('estado')
        ;
    }
     
}
?>
