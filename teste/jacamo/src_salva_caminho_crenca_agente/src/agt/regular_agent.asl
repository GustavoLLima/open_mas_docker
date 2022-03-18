initial_print.
+initial_print : true
  <- .print("I'm a regular agent, from the model running").


initial_print2.
+initial_print2 : true
<- 
	.print("Hello there. I'm a saver agent");
	.my_name(X);
	.concat("src/agt/list/",X,".asl",NAME)
	.save_agent(NAME,[start,say(hello)]);
	.print("Saved my information on file. Sending message to remove agent from simulation");
	/* .send(killer_agent, tell, previous_information(10, 20, 30)); */
	.concat("",previous_0, TESTE0)
	.concat("",previous_1, TESTE1)
	.concat("",previous_2, TESTE2)
	.print("Teste0: ",TESTE0);
	/* .send(killer_agent, tell, previous_information(previous_0, previous_1, previous_2)); */
	/* .send(killer_agent, tell, previous_information(TESTE0, TESTE1, TESTE2)); */
	+teste(uma_string);
	?teste(V);
	.print("V:",V);
	.send(killer_agent, tell, previous_information(V));

	?previous_0(V0);
	.print("V0:",V0);
	.send(killer_agent, tell, previous_information(V0));

	?previous_1(V1);
	.print("V1:",V1);
	.send(killer_agent, tell, previous_information(V1));

	?previous_2(V2);
	.print("V2:",V2);
	.send(killer_agent, tell, previous_information(V2));

	.send(killer_agent, tell, previous_information_all(V0, V1, V2));

	.send(killer_agent, tell, kill(X)).

+anser_previous(X) : true
  <- .print("I've received a message to kill agent ",X);
  	 .print("Killing agent ",X).

/*

+kill(X) : true
  <- .print("I've received a message to kill agent ",X);
  	 .print("Killing agent ",X);
     .kill_agent(X);
     .print("Agent killed").

*/




/*
+!a : true
  <- .print("ok, I am here").

.send(bob, achieve, a);
      .wait(100);
      .print("Killing agent bob!");
      .kill_agent(bob);

+!start : true
<- .my_name(X);
	.print("Meu nome e: ", X);
	.wait(1000);
	.print("Salvando agente...");
	.save_agent("ag1.txt");
	.print("Salvo!");
	.send(bob, tell, save_and_kill);
	.print("Mensagem enviada pra bob");
	.send(bob, tell, soma(ae, dale));
	!start.


+hello[source(A)]
	<- .print("Recebi a mensagem de ",A);
	.print("Preciso descobrir como eliminar ele");
	.kill_agent(bob);
	.print("Matei o bob, criando agente com base no asl");
	.create_agent(lalala,"aehoo.asl");
	.send(lalala, tell, hello);
	.print("Agente criado").

*/