//.my_id
init.
+init : true
  <-
  	.print("i am running");
  	mylib.my_create_ag.

+soma(X, Y) : true
	<- .print("Resultado");
	   .print(X);
	   .print(Y).

+save_and_kill[source(A)]
  <- .print("Recebi mensagem do agente: ",A);
	.print("Vou me matar");
	.my_name(X);
	.print("Me chamo:", X);
	.save_agent("aehoo.asl");
	.print("Salvei meus dados");
	/*.create_agent(lalala,"aehoo.asl");*/
	.print("Vou enviar mensagem");
	.send(ag1,tell,hello).
	/*kill_agent(X).*/