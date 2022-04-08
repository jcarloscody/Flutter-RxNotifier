# RxNotifier


•	RxNotifier é uma extenção do ValueNotifier(reatividade muito comum no flutter) que dá mais poderes ao ValueNotifier
o	Dá a possibilidade do valuenotifier ser transparente, igual ao mobx, sendo que não temos um limite arquitetural de precisar de uma action alí.
o	É bom mas é ruim
o	Isso não é uma gerencia de estado, mas vc pode gerenciar o estado usando ele.
o	Transparência: pq eu não preciso realemte definir o cara que eu quero escutar, so de eu ter ele dentro do escopo já é o suficiente para ele rebuidar para cada alteração.
o	Declarando:  
o	Para escutar vc pode usar na forma de ValueNotifier tbm, pq tudo é isso. Mas ele possibilita escutar desta forma
o	 
o	 
•	Server com dart
o	Dart create server
•	Package comum
o	Dart create –template=package-simple common
o	Se estivermos trabalhando com o flutter no front e o dart no back, podemos criar classes que são comuns, para evitar repetições
•	valueNotifier
o	objeto em mutação:  
o	objeto que observa:    
o	outra forma de escutar: 
o	
o	 
•	COMPARATIVO COM O MOBx
o	O mobx impõe um limite arquitetural que é pertinente pq força ter uma ação para fazer alguma alteração.
o	Mas comparado ao RxNotifier é a mesma coisa.
o	 
o	Pq o MobX faz isso? Para proibir de alterar uma observable sem ter uma ação, isso facilita a manutenção posteriormente e tbm os logs .
o	É um gerenciador de estado como o valueNotifier
•	SISTEMA DE MENSAGERIA
o	Socket io
	Socket_io   para o  server

DOCKER
•	Se funcionar na sua máquina, vai funcionar no servidor - premissa
•	Docker: é uma espécie de virtualização que vc cria imagens, pequenos sistemas operacionais , vc consegue colocar um sistema operacional para rodar o seu código especifico ali.
•	Comandos
o	Dart compile exe bin/arquivo.dart     ::: basicamente compila o arquivo dart para um formato binário 
o	docker build -t  dart-server -f Dockerfile ../
o	docker run –e PORT=3100 –rm –p 3100:3100 dart-server
