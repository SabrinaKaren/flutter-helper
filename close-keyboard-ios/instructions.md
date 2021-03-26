### Como fechar o teclado de dispositivo iOS  

> O teclado numérico do iOS não possui um botão responsável por fechar o mesmo, como acontece no Android. Dispositivos com sistema iOS não possuem botão de voltar, que facilita a navegação entre as páginas. Então neste read-me vou mostrar uma forma simples de sua aplicação pode fechar o teclado em um aplicativo Flutter.

- Os dispositivos que possuem o sistema operacional android possuem um recurso de "retorno" que permite que os usuários voltem uma tela; além de ter um recurso no seu teclado virtual de fechá-lo, como é possível ver na imagem abaixo:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/close-keyboard-ios/assets/01.png)

- Já os dispositivos ios não possuem este recurso, e assim, surge um problema: ao abrir o teclado numérico, como fecha-lo? A imagem abaixo mostra o teclado numérico virtual de um emulador ios:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/close-keyboard-ios/assets/02.png)

#### Sendo assim, como o usuário vai fechar o teclado numérico em seu iPhone?
#### Este post vai solucionar justamente este problema, e o melhor, de uma forma tão simples que irá te surpreender!  

#### Solução:
Basta envolver toda a sua tela em um widget GestureDetector, e no onTap colocar o seguinte código:  
```yaml
FocusScope.of(context).requestFocus(new FocusNode());
```

Desta forma, basta apertar em qualquer parte da tela que o teclado será fechado; e é útil tanto para dispositivos android e iOS! 😉
