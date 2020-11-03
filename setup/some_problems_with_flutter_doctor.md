## Alguns problemas com 'flutter doctor'

##
Se acontecer de o flutter não reconhecer os plugins instalados, como demonstado abaixo, uma alternativa é utilizar a vesão master ou dev em vez da versão stable.

```yaml
    X Flutter plugin not installed; this adds Flutter specific functionality.
    X Dart plugin not installed; this adds Dart specific functionality.
```

Nesse caso execute o comando 'flutter channel master' ou 'flutter channel dev', uma nova versão do fluter será instalado de um desses channels e o problema poderá ser resolvido.
Teste novamente com o commando 'flutter doctor --android-licenses'.

##

Pode ocorrer de o flutter não reconhecer nenhum device, mesmo estando ele configurado e estartado, exibindo a mensagem abaixo. 

[!] No connected devices.

Nesse caso deve-se verificar se existe um device configurado no Android Studio, em Configure > AVD Manager. Ao abrir a tela de Android Virtual Device Manager, verifirque 
se o device necessita de ser configurado. Após a configuração abra um terminal e execute novamente o comando 'flutter doctor' para verificar se a mensagem foi corrigida.

##

Para efeito de verificação de pendências por parte do flutter, um device do Angular Studio deve estar estartado no momento em que for executado o commando 'flutter doctor'. 
Porém pode ocorrer de o device estar configurado, estar estardado e mesmo assim continuar exibindo a mensagem de erro abaixo:

[!] Connected device
    ! No devices available

Nesse caso entre no menu de configuração, na tela de boas vindas do Android Studio. Clique no Item 'AVD Manager'. Ao abrir a tela de Android Virtual Device Manager, 
clique com o botão direito do mouse sobre o device que deseja estartar, e execute 'Cold Boot Now'. Espere encerrar o device e então estarte-o novamente. Abra um terminal e 
execute novamente o comando 'flutter doctor' para verificar se a mensagem abaixo foi corrigida.

##

Se ao executar o commando 'fluter doctor', a mensagem abaixo for exibida, é porque ficou faltado configurar as licenças do Android Studio.

[!] Android toolchain - develop for Android devices (Android SDK 27.0.3)

Nesse caso execute o comando flutter doctor --android-licenses, ou se preferir execute C:\Users\<usuario>\AppData\Local\Android\Sdk\tools\bin\sdkmanager --licenses. Terá o mesmo efeito.

Porém se ao rodar o comando 'flutter doctor --android-licenses' e como resultado exibir a mensagem abaixo, é porque a variável de ambiente JAVA_HOME existe no SO e está apontando para uma versão não 
suportada do jdk, geralmente 9 ou superior.
Exception in thread "main" java.lang.NoClassDefFoundError: javax/xml/bind/annotation/XmlSchema
        at com.android.repository.api.SchemaModule$SchemaModuleVersion.<init>(SchemaModule.java:156)
        at com.android.repository.api.SchemaModule.<init>(SchemaModule.java:75)
        at com.android.sdklib.repository.AndroidSdkHandler.<clinit>(AndroidSdkHandler.java:81)
        at com.android.sdklib.tool.sdkmanager.SdkManagerCli.main(SdkManagerCli.java:73)
        at com.android.sdklib.tool.sdkmanager.SdkManagerCli.main(SdkManagerCli.java:48)
Caused by: java.lang.ClassNotFoundException: javax.xml.bind.annotation.XmlSchema
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:581)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:178)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:521)
        ... 5 more

Nesse caso baixe e instale a versão 8 do jdk, aponte a variável de ambiente JAVA_HOME para o home da instalação. Se o terminal estiver aberto, feche-o e abra-o novamente. Teste com o commando 'flutter doctor'.

##
