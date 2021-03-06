### Passos para tirar o ícone padrão do Flutter e colocar o seu

1°) Incluir a dependência [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) no pubspec.yaml destacada na imagem abaixo:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/changing-app-icon/assets/01.png)
##
2°) Definir os ícones no pubspec.yaml, sendo necessário seu ícone já estar dentro do projeto. A imagem abaixo mostra o trecho de código a ser inserido, onde mostra a indicação do ícone (assets/icon-app-test.png).  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/changing-app-icon/assets/02.png)
##
3º) Executar o comando abaixo no prompt de comando dentro da pasta do seu projeto:
```yaml
flutter pub run flutter_launcher_icons:main
```
> Uma mensagem parecida a destacada na imagem abaixo deve aparecer ao executar o comando:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/changing-app-icon/assets/03.png)
##
4º) Verificar se os ícones foram gerados corretamente.  
Para isso, vá em:
```yaml
android > app > src > main > res > mipmap
```
E veja se os ícones dentro destas pastas mipmap são o seu ícone. Se estiver o ícone do Flutter significa que não deu certo.  
##
5º) Agora falta apenas ver o ícone aparecendo no dispositivo. Vamos executar o projeto, depois que estiver iniciado, vamos fechar e ver na tela do dispositivo qual ícone está atribuído para o seu app.  
Veja a visualização do meu em um dispositivo android:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/changing-app-icon/assets/04.png)
##
> Recomendo sempre ler e seguir a documentação oficial do plugin, disponível em: [https://pub.dev/packages/flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons).
