## RxNotifier
- É uma extenção do ValueNotifier(reatividade muito comum no flutter) que dá mais poderes ao ValueNotifier;
- o	Dá a possibilidade do valuenotifier ser transparente, igual ao mobx, sendo que não temos um limite arquitetural de precisar de uma action alí.
- Isso não é uma gerencia de estado, mas vc pode gerenciar o estado usando ele.
- Transparência: pq eu não preciso realemte definir o cara que eu quero escutar, so de eu ter ele dentro do escopo já é o suficiente para ele rebuidar para cada alteração.

<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/1.png">

- o	Para escutar vc pode usar na forma de ValueNotifier tbm, pq tudo é isso. Mas ele possibilita escutar desta forma.

<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/2.png">
<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/3.png">


## ValueNotifier
- o	objeto em mutação: 

<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/4.png">

- o	objeto que observa:   

<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/5.png">

- o	outra forma de escutar: 

<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/6.png">

##	Comparativo com o  MobX
- O MobX impõe um limite arquitetural que é pertinente porque força ter uma ação para fazer alguma alteração.
- Mas comparado ao RxNotifier é a mesma coisa.

<img src="https://github.com/jcarloscody/RxNotifier/blob/main/imgs/7.png">

- Pq o MobX faz isso? Para proibir de alterar uma observable sem ter uma ação, isso facilita a manutenção posteriormente e tbm os logs.
- É um gerenciador de estado como o ValueNotifier.