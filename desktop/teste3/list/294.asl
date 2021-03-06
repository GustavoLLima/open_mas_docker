// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_2171]) & (Ans =.. [NS,F,T,NLA])))).
kqml::clear_source_self([],[]).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
metabolism(4).
previous_0("agent").
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_294),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
previous_1("294 -1 4 6").
previous_2("1-2").
sugar(-1).
initial_print2.
initial_print.
vision(6).


// initial goals
!start.
!say(hello).


// plans from file:src/agt/regular_agent.asl

@p__475[source(self),url("file:src/agt/regular_agent.asl")] +initial_print <- .print("I'm a regular agent, from the model running").
@p__476[source(self),url("file:src/agt/regular_agent.asl")] +initial_print2 <- .print("Hello there. I'm a saver agent"); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); ?previous_0(V0); ?previous_1(V1); ?previous_2(V2); .send(killer_agent,tell,kill(V0,V1,V2,X)); .send(killer_agent,untell,kill(V0,V1,V2,X)).
@p__477[source(self),url("file:src/agt/regular_agent.asl")] +initial_print3 <- .print("Hello there. I'm a saver agent"); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .concat("",previous_0,TESTE0); .concat("",previous_1,TESTE1); .concat("",previous_2,TESTE2); .print("Teste0: ",TESTE0); +teste(uma_string); ?teste(V); .print("V:",V); .send(killer_agent,tell,previous_information(V)); ?previous_0(V0); .print("V0:",V0); .send(killer_agent,tell,previous_information(V0)); ?previous_1(V1); .print("V1:",V1); .send(killer_agent,tell,previous_information(V1)); ?previous_2(V2); .print("V2:",V2); .send(killer_agent,tell,previous_information(V2)); .send(killer_agent,tell,previous_information_all(V0,V1,V2)); .send(killer_agent,untell,previous_information_all(V0,V1,V2)); .send(killer_agent,tell,kill(X)); .send(killer_agent,untell,kill(X)).
@p__478[source(self),url("file:src/agt/regular_agent.asl")] +anser_previous(X) <- .print("I've received a message to kill agent ",X); .print("Killing agent ",X).

