<?php

namespace Setnet\JuanMarcetBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class TrabajaConNosotrosType extends AbstractType
{
       public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('cedula' , null , array(
                "label" => "Cédula de identidad:"
            ))
            ->add('apellidos' , null , array(
                "label" => "Apellidos:"
            ))
            ->add('nombres' , null , array(
                "label" => "Nombres:"
            ))
            ->add('genero', 'choice', array(
                "label" => "Género:" , 
                "choices" => array(
                    "s"=> "Masculino", 
                    "c"=> "Femenino"
                    )
            ))
            ->add('nacionalidad', 'choice', array(
                "label" => "Nacionalidad:" , 
                "choices" => array(
                    "s"=> "Ecuatoriano(a)", 
                    "c"=> "Extranjero(a)"
                    )
            ))
            ->add('direccion' , null , array(
                "label" => "Dirección:"
            ))
            ->add('lugar' , null , array(
                "label" => "Lugar de Nacimiento:"
            ))
            ->add('celular' , null , array(
                "label" => "Télefono Celular:"
            ))
             ->add('fijo' , null , array(
                "label" => "Télefono Fijo:"
            ))
            ->add('email' , null , array(
                "label" => "E-mail:"
            ))
            ->add('areaAplica', 'choice', array(
                "label" => "Área a la que aplica:" , 
                "choices" => array(
                    "fin"=> "Financiero", 
                    "otr"=> "Otro"
                    )
            ))
            ->add('nivelAplica', 'choice', array(
                "label" => "Nivel al que aplica:" , 
                "choices" => array(
                    "asis"=> "Asistente", 
                    "o"=> "Otro"
                    )
            ))
            ->add('estadoCivil', 'choice', array(
                "label" => "Estado civil:" , 
                "choices" => array(
                    "s"=> "Soltero", 
                    "c"=> "casado"
                    )
            ))
            ->add('contactoEmergencia' , null , array(
                "label" => "Contacto en caso de emergencia:"
            ))
            ->add('telelfonoEmergencia' , null , array(
                "label" => "Telefono en caso de emergencia:"
            ))
//            ->add('estado')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Setnet\JuanMarcetBundle\Entity\TrabajaConNosotros'
        ));
    }

    public function getName()
    {
        return 'setnet_juanmarcetbundle_trabajaconnosotrostype';
    }
}
