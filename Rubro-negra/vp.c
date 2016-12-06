#include <stdio.h>
//#include "vp.h"
#include "arvore.h"

void rotacaoEsq (arvore *x)
{
     arvore *w, *y, *z;

     y=x->dir;
     z=y->esq;
     y->esq=x;
     y->pai=x->pai;
     x->pai=y;
     if(z!=NULL)
     {
         x->dir=z;
         z->pai=x;
     }else{
     	x->dir = NULL;
     }
     if(y->pai->raiz<=y->raiz)
         y->pai->dir=y;
     else
        y->pai->esq=y;
}

void rotacaoDir (arvore *x)
{
     arvore *w, *y, *z;

     y=x->esq;
     z=y->dir;
     y->dir=x;
     y->pai=x->pai;
     x->pai=y;
     if(z!=NULL)
     {
         x->esq=z;
         z->pai=x;
     }else{
     	x->esq = NULL;
     }
     if(y->pai->raiz<=y->raiz)
         y->pai->dir=y;
     else
        y->pai->esq=y;
}
