initial_print.
+initial_print : true
  <- .print("I'm a killer agent").


+kill(Str_one, Str_two, Strthree, Agent_name) : true
  <- .print("I've received a message to kill agent ",Agent_name);
  	 .print("Killing agent ",Agent_name);
  	 .wait(10000);
  	 mylib.aaa_my_delete_ag(Str_one, Str_two, Strthree, Agent_name);
  	 .wait(2000);
     .print("Agent killed").



/*
FUNCIONA NORMAL COM 3
+previous_information_all(X, Y, Z) : true
  <- 
  .print("Previous Information Function:");
  .print("My previous information X, Y, Z: ", X, Y, Z).
*/

/*
+previous_information(X, Y, Z) : true
  <- 
  .print("Previous Information Function:");
  .print("My previous information X: ", X);
  .print("My previous information Y: ", Y);
  .print("My previous information Z: ", Z).
*/

/* -!kill[error(ia_failed)]       <- print("Erro no kill"). */



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