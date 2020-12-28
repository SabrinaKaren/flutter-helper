### Passos com explicações básicas de como utilizar o Provider como gerenciador de estado

1°) Incluir a dependência no pubspec.yaml:  
```yaml
dependencies:
  provider: ^4.3.2+3
```  
Obs.: Verificar a versão mais recente [aqui](https://pub.dev/packages/provider).
##

2°) Envelopar toda a aplicação com "MultiProvider", como mostra o trecho abaixo:
```yaml
void main() {
  runApp(
    MultiProvider(
      providers: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    ),
  );
}
```  
Obs.: No exemplo acima, o "MaterialApp" foi envelopado com o "MultiProvider" no próprio arquivo "main.dart".  
##

3º) O "MultiProvider" requer uma lista de providers que deve ter seus itens declarados como mostra o exemplo abaixo:
```yaml
providers: [
   ChangeNotifierProvider<HomeController>.value(value: HomeController())
]
```
Obs.: Este "HomeController" é a classe responsável por "controlar" a aplicação do [exemplo anexado](https://github.com/SabrinaKaren/flutter-helper/blob/master/state-management-provider/example.md). Você deve substituir pelo nome de sua classe "controladora".
##

4º) Para recuperar o provider, basta envelopar o body do scaffold com um Consumer, assim, todos os widgets dentro do body terão acesso ao consumer do provider. A imagem abaixo exemplifica um pouco a utilização de um consumer:

[IMAGEM]
##

5º) O controller precisa extender de ChangeNotifier, pois assim ele será capaz de notificar mudanças para todos os seus consumers:

[IMAGEM]
##

6º) Pronto! Agora só falta noficar as alterações. Para isto, basta chamar a função "notifyListeners()" que pertence a classe "ChangeNotifier".
##

- Para um entendimento mais aprofundado, sempre recomendo a leitura da documentação oficial do package, disponível [aqui](https://pub.dev/packages/provider).
- Para um entendimento dos passos que descrevi aqui, recomendo a análise do projetinho que fiz aplicando Provider como gerenciador de estados.
