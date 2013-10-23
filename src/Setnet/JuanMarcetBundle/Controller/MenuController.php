<?php

namespace Setnet\JuanMarcetBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class MenuController extends Controller {

    public function mostrarSubcategoriasAction($id_categoria) {


        $categoria = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findOneBy(
                array("id" => $id_categoria));

        return $this->render('SetnetJuanMarcetBundle:Ajax:subcategorias.html.twig', array("categoria" => $categoria));
    }



    public function mostrarProductosAction($id_subcategoria) {


        $subcategoria = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Subcategoria")->findOneBy(
                array("id" => $id_subcategoria));

        return $this->render('SetnetJuanMarcetBundle:Ajax:productos.html.twig', array("subcategoria" => $subcategoria));
    }

}
