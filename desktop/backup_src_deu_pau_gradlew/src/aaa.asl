// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_11]) & (Ans =.. [NS,F,T,NLA])))).
kqml::clear_source_self([],[]).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_saver_agent),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
initial_print.


// initial goals
!start.
!say(hello).


// plans from file:src/agt/saver_agent.asl

@p__1[source(self),url("file:src/agt/saver_agent.asl")] +initial_print <- .print("Hello there. I'm a saver agent"); .my_name(X); .save_agent("aaa.asl",[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(X)).

