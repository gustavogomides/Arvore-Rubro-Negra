#include <stdio.h>
#include <stdlib.h>
#include "arvore.h"

arvore * criaArvore()
{
    arvore *sentinela;
    sentinela = (arvore*)calloc (1,sizeof(arvore));
    sentinela->raiz = -1000;
    sentinela->esq = NULL;
    sentinela->dir = NULL;
    sentinela->pai = NULL;
    sentinela->cor = 'P';

    return sentinela;
}
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

void insereno(arvore *A, int num)
{

    arvore *novoNo, *aux, *auxPai;

	novoNo = (arvore*)calloc(1,sizeof(arvore));
    novoNo->raiz = num;
    novoNo->esq = NULL;
    novoNo->dir = NULL;
    novoNo->pai = NULL;
    novoNo->cor = 'V';

    if (A->dir == NULL)
    {
        A->dir = novoNo;
        novoNo->pai = A;
        novoNo->dir = NULL;
        novoNo->esq = NULL;
        novoNo->cor = 'P';
        return;
    }

    aux = A->dir;
    while (aux != NULL)
    {
        auxPai = aux;

        if (num < aux->raiz)
            aux = aux->esq;
        else
            aux = aux->dir;
    }

    if (num < auxPai->raiz)
        auxPai->esq = novoNo;
    else
        auxPai->dir = novoNo;

    novoNo->pai = auxPai;
    balVP(A,novoNo);

}

void percorreOrdem(arvore *x){
    if(!x) return;
    percorreOrdem(x->esq);
    printf("Valor = %d\t\tCor = %c\n",x->raiz,x->cor);
    percorreOrdem(x->dir);
}

void balVP(arvore *A, arvore *no)
{
    arvore *pai, *avo, *tio;
    pai=no->pai;
    while(pai->cor=='V')
    {
        avo=pai->pai;
        if(no->raiz < avo->raiz)
        {
             if(avo->dir!=NULL)
                tio=avo->dir;
            if((tio->cor=='V')&&(avo->dir!=NULL))
            {
                pai->cor='P';
                tio->cor='P';
                avo->cor='V';
                no=avo;
                pai=no->pai;
            }
            else
            {
                if(no==pai->dir)
                {
                    rotacaoEsq(pai);
                    no=pai;
                    pai=no->pai;
                }
                pai->cor='P';
                avo->cor='V';
                rotacaoDir(avo);
            }
        }
        else
        {
            if(avo->esq!=NULL)
                tio=avo->esq;
            if((tio->cor=='V')&&(avo->esq!=NULL))
            {
                pai->cor='P';
                tio->cor='P';
                avo->cor='V';
                no=avo;
                pai=no->pai;
            }
            else
            {
                if(no==pai->esq)
                {
                    rotacaoDir(pai);
                    no=pai;
                    pai=no->pai;
                }
                pai->cor='P';
                avo->cor='V';
                rotacaoEsq(avo);
            }
        }
    }
    A->dir->cor='P';
}
