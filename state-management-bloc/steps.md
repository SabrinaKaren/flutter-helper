### Passos com explicações básicas de como utilizar o Bloc combinado com StreamController como arquitetura e gerenciador de estado

1°) Quem faz a gerência dos estados é o StreamController. Então, no [exemplo](/state-management-bloc/example.md) exposto, StreamControllers foram criados para controlarem o input e output dos estados da String em questão:  
![](/state-management-bloc/assets/01.png)
> "outputLink" é utilizado para exibir o estado atual e "inputLink" para incluir/inputar/atualizar um novo estado.  

Na imagem ainda é possível perceber mais dois trechos de códigos destacados; ambos mostrando como é feita a entrada de um novo estado. A variável link foi atualizada, e então o "inputLink" foi utilizado para receber o novo estado desta variável.
##

2º) Agora é necessário apresentar esta mudança de estado na tela, e como dito, utilizamos o "outputLink" para isto:  
![](/state-management-bloc/assets/02.png)
O widget a receber o novo valor deve ser envelopado por "StreamBuilder", onde informamos:
- o stream (que na verdade é o nosso output);
- e o builder (que é o construtor).
> Dentro do builder retornamos o nosso widget que passará a acessar o estado atual da varável, que está sendo alterado atraves do "inputLink".
##

- Para um entendimento dos passos que descrevi aqui, recomendo a análise do [projetinho](https://github.com/SabrinaKaren/flutter-projects/tree/master/35_get_whatsapp_bloc) que fiz aplicando Provider como gerenciador de estados.
