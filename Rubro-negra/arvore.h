#ifndef VP_H
#define	VP_H
struct arvore
{
    int raiz;
    char cor;
    struct arvore *esq;
    struct arvore *dir;
    struct arvore *pai;
};
typedef struct arvore arvore;
arvore * criaArvore();
void insereno(arvore *A, int num);
void percorreOrdem (arvore *A);
void balVP(arvore *A, arvore *no);
void rotacaoEsq (arvore *x);
void rotacaoDir(arvore *x);
#endif	/* VP_H */





