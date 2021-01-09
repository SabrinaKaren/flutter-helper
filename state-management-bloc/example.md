- O projeto completo pode ser acessado [aqui](https://github.com/SabrinaKaren/flutter-projects/tree/master/35_get_whatsapp_bloc).  

#### Divisão do projeto:
- [main.dart](https://github.com/SabrinaKaren/flutter-projects/blob/master/35_get_whatsapp_bloc/lib/main.dart)  
Classe responsável por dar o "starter" do projeto. Não possui nenhuma configuração "especial".
- [home_view.dart](https://github.com/SabrinaKaren/flutter-projects/blob/master/35_get_whatsapp_bloc/lib/home_page/home_view.dart)  
Classe stateful responsável por montar todo o visual do app, valendo ressaltar que o app em questão possui apenas uma tela. Esta classe possui toda a estrutura de widgets que foram identificados como necessários, e com um diferencial: consumo de uma saída de StreamControler. Utilizamos o widget StreamBuilder para "envelopar" o(s) widget(s) que fará(ão) uso da saída de cada estado da varável que está sendo controlada. Basta informar o stream (que na verdade é o nosso output do stream) e o builder (que é o construtor). Dentro do builder retornamos o nosso widget que passará a acessar o estado atual da varável, que está sendo alterado através do "inputLink".
- [home_bloc.dart](https://github.com/SabrinaKaren/flutter-projects/blob/master/35_get_whatsapp_bloc/lib/home_page/home_bloc.dart)  
Classe responsável pela parte lógica da aplicação. Nesta classe fazemos o input dos estados da variável a ser controlada. No trecho "lógico" de seu código em que é necessário a alteração do estado visual de alguma variável, basta fazer o input da variável; e então o output la na view "ouvirá" a alteração de fará o "rebuild".
