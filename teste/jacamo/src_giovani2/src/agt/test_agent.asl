!create_initial_agents. //initial goal
!start. // initial goal

+!create_initial_agents : true
   <-
      .create_agent(agenteA, "src/agt/bob.asl");
      .create_agent(agenteB, "src/agt/bob.asl");
      .create_agent(agenteC, "src/agt/bob.asl");
      .create_agent(bob, "src/agt/bob.asl");
      +create_initial_agents.

+!start : true
   <-
      .wait(1000);
      date.add_days(T2);  // VAI ESCOLHER UM
      .print("Agente escolhido = ",T2);
      .print("Matando agente pelo AS...:");
      .kill_agent(T2);
      .print("Agente ",T2," morto");
      +test(T);                // to see the date in BB (and mind inspector)
      !start.
      .send(ag1,tell,hello).
/*

+!start : true
   <- date.today(T);           // Create a term T that is a java Calendar object
                               // note that all operation on T should be done by
                               // internal actions
      .print("Today=", T);
      date.add_days(T,20,T2);  // change the java object
      .print("more 20 days=",T2);
      +test(T);                // to see the date in BB (and mind inspector)
      +start.
*/

-!start[error(ia_failed)]       <- print("algo deu errado").