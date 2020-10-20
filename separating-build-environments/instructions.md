### Instruções para separação de ambientes (dev/prod/etc)

1°) Criar o objeto de configuração com as variáveis que você julgar necessárias
Exemplo:

```yaml
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class AppConfig extends InheritedWidget {
  AppConfig({
    @required this.appName,
    @required this.apiBaseUrl,
    @required Widget child,
  }) : super(child: child);

  final String appName;
  final String apiBaseUrl;

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
```

##

2°) Criar um arquivo de inicialização para cada ambiente.
Exemplo de um arquivo de inicialização simulando ambiente dev:

```yaml
import 'package:flutter/material.dart';
import 'app/app-widget.dart';
import 'config/app-config.dart';

void main() {

  var configuredApp = AppConfig(
    appName: 'App em Dev',
    apiBaseUrl: 'https://url.api/dev',
    child: AppWidget(),
  );

  runApp(configuredApp);

}
```

Exemplo de um arquivo de inicialização simulando ambiente prod:

```yaml
import 'package:flutter/material.dart';
import 'app/app-widget.dart';
import 'config/app-config.dart';

void main() {

  var configuredApp = new AppConfig(
    appName: 'App em Prod',
    apiBaseUrl: 'https://url.api/prod',
    child: new AppWidget(),
  );

  runApp(configuredApp);

}
```

##

3º) Executando o aplicativo em diferentes ambientes
Veja como criar configuração de execução específica por ambiente em IntelliJ IDEA ou Android Studio [aqui](/separating-build-environments/add-run-debug-config-ide.md)

##

4º) Utilizando uma varável do arquivo de configuração em seu projeto
Exemplo:

```yaml
AppConfig.of(context).apiBaseUrl;
```

##

5º) Executando efetivamente seu projeto
Basta selecionar o arquivo de inicialização correspondente ao ambiente desejado e executar:
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/separating-build-environments/assets/selecionando_para_exec.png)
