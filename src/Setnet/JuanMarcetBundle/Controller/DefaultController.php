<?php

namespace Setnet\JuanMarcetBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller {

    public function agregarAction($id_producto) {


        $session = $this->getRequest()->getSession();
        $cesta = $session->get("cesta");
        if ($cesta == null)
            $cesta = array();

        $producto = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Producto")->findOneBy(
                array("id" => $id_producto)
        );

        $cesta[] = $producto;
        $session->set("cesta", $cesta);

        return $this->redirect($this->generateUrl('descripcion_producto', array('id' => $id_producto)));
    }

    public function indexAction() {

        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        $tag = '';
        $em = $this->getDoctrine()->getEntityManager();
        $qb = $em->createQueryBuilder();
        $productos = $qb->select('n')->from('Setnet\JuanMarcetBundle\Entity\Producto', 'n')
                ->where($qb->expr()->like('n.tags', $qb->expr()->literal($tag . '%')))
                ->groupBy("n.grupo")
                ->getQuery()
                ->setMaxResults(9)
                ->getResult();



        return $this->render('SetnetJuanMarcetBundle:Default:index.html.twig', array(
                    "banners" => $banners,
                    "categorias" => $categorias,
                    "productos" => $productos,
                    "noticias" => $noticias,
                        )
        );
    }

    public function categoriaAction($id_categoria) {


        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $categoria = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findOneBy(
                array("id" => $id_categoria));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        $i = 0;
        $indices_noticias_aleatorias = array_rand($noticias, 3);
        $noticias_mostrar = array();

        foreach ($noticias as $noticia) {

            if (in_array($i, $indices_noticias_aleatorias))
                $noticias_mostrar[] = $noticia;
        }

        return $this->render('SetnetJuanMarcetBundle:Default:categoria.html.twig', array(
                    "banners" => $banners,
                    "categoria" => $categoria,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                        )
        );
    }

    public function subcategoriaAction($id) {


        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $subcategoria = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Subcategoria")->findOneBy(
                array("id" => $id));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        $i = 0;
        $indices_noticias_aleatorias = array_rand($noticias, 2);
        $noticias_mostrar = array();

        foreach ($noticias as $noticia) {

            if (in_array($i, $indices_noticias_aleatorias))
                $noticias_mostrar[] = $noticia;
        }

        return $this->render('SetnetJuanMarcetBundle:Default:subcategoria.html.twig', array(
                    "banners" => $banners,
                    "subcategoria" => $subcategoria,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                        )
        );
    }

    public function tiendaAction() {


        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();
        
        // $i = 0;
        // $indices_noticias_aleatorias = array_rand($noticias, 3);
        // $noticias_mostrar = array();

        // foreach ($noticias as $noticia) {

        //     if (in_array($i, $indices_noticias_aleatorias))
        //         $noticias_mostrar[] = $noticia;
        // }

        return $this->render('SetnetJuanMarcetBundle:Default:tienda.html.twig', array(
                    "banners" => $banners,
                    "categorias" => $categorias
                    ,"noticias" => $noticias
                        )
        );
    }

    public function buscarAction(Request $request) {

        $tag = $request->get('buscar');

        $tag = strtolower ($tag) ;

        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();




        $em = $this->getDoctrine()->getEntityManager();
        $qb = $em->createQueryBuilder();
        $productos = $qb->select('n')->from('Setnet\JuanMarcetBundle\Entity\Producto', 'n')
                ->where($qb->expr()->like('n.tags', $qb->expr()->literal('%' .  $tag . '%')))
                ->groupBy('n.grupo')
                ->getQuery()
                ->getResult();



//
//        $qb = $this->getDoctrine()->getEntityManager()->createQueryBuilder('u');
//        $productos =  $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Producto")->findAll();
//

        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();



        return $this->render('SetnetJuanMarcetBundle:Default:buscar.html.twig', array(
                    "banners" => $banners,
                    "productos" => $productos,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                        )
        );
    }

    public function aboutAction() {

        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $contenido = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Contenido")->findBy(
                array("categoria" => 'nosotros'));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        return $this->render('SetnetJuanMarcetBundle:Default:about.html.twig', array(
                    "banners" => $banners,
                    "contenidos" => $contenido,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                        )
        );
    }

    public function preguntasAction() {
        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();
        $contenido = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Contenido")->findBy(
                array("categoria" => 'preguntas'));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        return $this->render('SetnetJuanMarcetBundle:Default:preguntas.html.twig', array(
                    "banners" => $banners,
                    "contenidos" => $contenido,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                        )
        );
    }

    public function prensaAction() {

        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $contenido = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Contenido")->findBy(
                array("categoria" => 'preguntas'));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        return $this->render('SetnetJuanMarcetBundle:Default:prensa.html.twig', array(
                    "banners" => $banners,
                    "contenidos" => $contenido,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                        )
        );
    }

    public function noticiaAction($id_noticia) {
        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $contenido = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Contenido")->findBy(
                array("categoria" => 'preguntas'));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();
        $noticias_mostrar = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findOneBy(
                array("id" => $id_noticia)
        );

        return $this->render('SetnetJuanMarcetBundle:Default:noticia.html.twig', array(
                    "banners" => $banners,
                    "contenidos" => $contenido,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                    "selected" => $noticias_mostrar,
                        )
        );
    }

    public function trabajaNosotrosAction() {
        
        
        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();

        $contenido = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Contenido")->findBy(
                array("categoria" => 'preguntas'));
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();



        $trabaja = new \Setnet\JuanMarcetBundle\Entity\TrabajaConNosotros();
        $trabajaForm = $this->createForm(new \Setnet\JuanMarcetBundle\Form\TrabajaConNosotrosType(), $trabaja);


        return $this->render('SetnetJuanMarcetBundle:Default:trabajaNosotros.html.twig', 
                array(
                    "banners" => $banners,
                    "contenidos" => $contenido,
                    "noticias" => $noticias,
                    "categorias" => $categorias,
                    "form" => $trabajaForm->createView(),
                        )
        );
    }

    public function cestaAction() {




        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();
        $banners = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Banner")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();

        return $this->render('SetnetJuanMarcetBundle:Default:cesta.html.twig', array(
                    "banners" => $banners,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
        ));
    }






    public function descripcionAction($id) {



        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();
        $producto = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Producto")->findOneBy(array(
            "id" => $id
                )
        );

        // $categoria = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findOneBy(array(
        //     "sub" => $id
        //         )
        // );


        $productos = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Producto")->findBy(array(
            "grupo" => $producto->getGrupo()
                )
        );




        return $this->render('SetnetJuanMarcetBundle:Default:producto.html.twig', array(
                    "producto" => $producto,
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                    "productos" => $productos
                ));
    }





    public function contactenosAction() {



        $categorias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Categoria")->findAll();
        $noticias = $this->getDoctrine()->getRepository("SetnetJuanMarcetBundle:Noticias")->findAll();


        return $this->render('SetnetJuanMarcetBundle:Default:contactenos.html.twig', array(
                    "categorias" => $categorias,
                    "noticias" => $noticias,
                ));
    }

}
