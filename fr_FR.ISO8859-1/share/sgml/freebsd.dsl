<!--
     The FreeBSD Documentation Project
     The FreeBSD French Documentation Project

     $Id: freebsd.dsl,v 1.4 2002-02-19 15:53:58 gioria Exp $
     $FreeBSD$
     Original revision: 1.3

-->

<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY freebsd.dsl PUBLIC "-//FreeBSD//DOCUMENT DocBook Language Neutral Stylesheet//EN" CDATA DSSSL>
]>

<style-sheet>
  <style-specification use="docbook">
    <style-specification-body>
 
      <![ %output.html; [ 
        <!-- Fix a problem with the French localisation.  This should really
             be a patch to the dsssl-docbook-modular port, but this gets it
             more widely available sooner.  A patch will be applied to the
             port as well, and then this can be removed. -->
        (define (gentext-fr-nav-prev prev)
          (make sequence (literal "Pr\U-00E9;c\U-00E9;dent")))

        (define ($email-footer$)
          (make sequence
            (make element gi: "p"
                  attributes: (list (list "align" "center"))
              (make element gi: "small"
                (literal "Ce document, ainsi que d'autres peut etre téléchargé a ")
                (make element gi: "a"
                      attributes: (list (list "href" "ftp://ftp.FreeBSD.org/pub/FreeBSD/doc"))
                  (literal "ftp.FreeBSD.org/pub/FreeBSD/doc/"))
                (literal ".")))
            (make element gi: "p"
                  attributes: (list (list "align" "center"))
              (make element gi: "small"  
                (literal "Pour toutes questions a propos de FreeBSD, lisez la ")
                (make element gi: "a"
                      attributes: (list (list "href" "http://www.freebsd.org/docs.html"))
                  (literal "documentation"))
                (literal " avant de contacter <")
                (make element gi: "a"
                      attributes: (list (list "href" "mailto:questions@FreeBSD.org"))
                  (literal "questions@FreeBSD.org"))
                (literal ">.")
                (make empty-element gi: "br")
                (literal "Pour les questions sur cette documentation, contactez <")
                (make element gi: "a"
                      attributes: (list (list "href" "mailto:doc@FreeBSD.org"))
                  (literal "doc@FreeBSD.org"))
                (literal ">.")))))

      ]]>
    </style-specification-body>
  </style-specification>

  <external-specification id="docbook" document="freebsd.dsl">
</style-sheet>
