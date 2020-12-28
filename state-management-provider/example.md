- O projeto completo pode ser acessado [aqui](https://github.com/SabrinaKaren/flutter-projects/tree/master/34_get_whatsapp).  

#### Divisão do projeto:
- [main.dart](https://github.com/SabrinaKaren/flutter-projects/blob/master/34_get_whatsapp/lib/main.dart)  
Classe responsável por dar o "starter" do projeto. Aqui possui 2 configurações principais: definição dos providers (classes que vão prover dados e estados) e a definição da página home do app.
- [home_view.dart](https://github.com/SabrinaKaren/flutter-projects/blob/master/34_get_whatsapp/lib/home_page/home_view.dart)
Classe stateful responsável por montar todo o visual do app, valendo ressaltar que o app em questão possui apenas uma tela. Esta classe possui toda a estrutura de widgets que foram identificados como necessários, e com um diferencial: Consumer. Este widget permite que seu filho e os filhos de seus filhos consumem o provider identificado. Desta forma, se uma propriedade for alterada, quem estiver consumindo-a sofrerá a mudança de estado sem a necessidade da reconstrução de toda a tela (como acontece com o setState).
- [home_controller.dart](https://github.com/SabrinaKaren/flutter-projects/blob/master/34_get_whatsapp/lib/home_page/home_controller.dart)
Classe controladora, responsável pela parte lógica da aplicação. Esta classe é a provider, é quem notifica os consumers de alguma alteração de estado em alguma propriedade. Isto é possível porque a classe extende de ChangeNotifier, e esta, por sua vez, possui o método notifyListeners, que notifica os consumers da alteração ocorrida.
