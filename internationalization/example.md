### Exemplo básico para testar se as configurações de 'internationalization' foram feitas com sucesso

1°) Incluir um novo arquivo 'arb' dando como sigla 'pt':  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/internationalization/assets/05_add_arb.png)
##
2°) Incluir uma chave de teste nos arquivos 'intl_en' e 'intl_pt', como sugere a imagem abaixo:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/internationalization/assets/06_chave_exemplo.png)  
No exemplo proposto, a chave é 'welcome', e para idiomas em inglês, o valor correspondente é 'Welcome!' e em português é 'Seja bem-vindo!'; valendo ressaltar que os valores das chaves fica a seu critério.
##
3°) Inclua a chave em alguma parte do seu código, como mostra o exemplo:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/internationalization/assets/07_usando_chave.png)
##
4º) Se o idioma do dispositivo estiver em inglês, o resultado será o seguinte:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/internationalization/assets/08_resultado_en.png)
##
5º) Se o idioma do dispositivo estiver em português, o resultado será o seguinte:  
![](https://github.com/SabrinaKaren/flutter-helper/blob/master/internationalization/assets/09_resultado_pt.png)
##
A partir desta base, é possível criar arb para diversos idiomas e todas as chaves necessárias.
