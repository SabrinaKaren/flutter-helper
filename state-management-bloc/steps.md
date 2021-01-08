### Passos com explicações básicas de como utilizar o Bloc combinado com StreamController como arquitetura e gerenciador de estado

1°) Quem faz a gerência dos estados é o StreamController. Então, no [exemplo](/state-management-bloc/example.md) exposto, StreamControllers foram criados para controlarem o input e output dos estados da String em questão:  
![](/state-management-bloc/assets/01.png)
> "outputLink" é utilizado para exibir o estado atual e "inputLink" para incluir/inputar/atualizar um novo estado.  

Na imagem ainda é possível perceber mais dois trechos de códigos destacados; ambos mostrando como é feita a entrada de um novo estado. A variável link foi atualizada, e então o "inputLink" foi utilizado para receber o novo estado desta variável.
