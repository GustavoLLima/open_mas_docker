initial_print.
+initial_print : true
<- 
	.print("Hello there. I'm a saver agent");
	.my_name(X);
	.concat("src/agt/",X,".asl",NAME)
	.save_agent(NAME,[start,say(hello)]);
	.print("Saved my information on file. Sending message to remove agent from simulation");
	.send(killer_agent, tell, kill(X)).
