## Primeiros passos com flutter: configurações

Obs.: É necessário que sua máquina já tenha configurado o JDK, veja aqui como fazer.

1º) Baixar o flutter e descompactar dentro de um diretório desejado (por exemplo, C:\src\flutter).
https://flutter.dev/docs/get-started/install

2º) Na variável de ambiente PATH, adicionar o caminho da pasta bin do flutter que foi descompactado no passo anterior.

3º) Baixar e instalar o Android Studio (IDE mais sugestiva).

4º) Instalar os plugins de flutter e dart na IDE.

5º) Instalar algumas ferramentas na IDE.
Ir em "Configure" > "SDK Manager"
Na janela que abrir: Appearance & Behavior > System Setting > Android SDK > SDK Tools
- Android SDK Build-Tools
- Android SDK Command-line Tools
- Android Emulator
- Android SDK Plataform-Tools
- Intel x86 Emulator Accelerator

5º) Digitar no prompt de comando 'flutter doctor' para verificar as configurações pendentes, e resolver todos os "issues" encontrados.
Há uma diversidade de possibilidades de "issues" que podem aparecer, veja aqui alguns e suas resoluções.
