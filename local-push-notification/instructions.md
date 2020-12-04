### Instruções para configurar um projeto para disparar e receber notificações

1°) Incluir a dependência no pubspec.yaml: [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications)  

2º) (Plus) Você pode habilitar o recurso de exibir a notificação quando o dispositivo está bloqueado. Para isso, basta adicionar o trecho de código abaixo no arquivo main/AndroidManifest.xml:  
```yaml
<activity
   android:showWhenLocked="true"
   android:turnScreenOn="true">
```

3º) Incluir um ícone para as notificações. Para isso, basta incluir uma imagem dentro da pasta destacada na imagem abaixo:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/local-push-notification/assets/01.png)
> O nome do ícone é importante, pois será utilizado no código de [exemplo](example.dart)!  

Pronto! As configurações básicas necessárias foram feitas, agora que tal irmos para um [exemplo](example.dart)?  
Este exemplo possui o gif abaixo como resultado:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/local-push-notification/assets/02.gif)
