// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_176516]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_144320]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_144176]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_143996]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_22667]) & (Ans =.. [NS,F,T,NLA])))).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([],[]).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
initial_print6.
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_582),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_582),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
initial_print4.
initial_print1.
teste(0.8443865001359747).
teste(0.7112355700214444).
teste(0.8837932815542183).
teste(0.7949209366598677).
teste(0.3093752480375823).


// initial goals
!start.
!say(hello).


// plans from file:src/agt/list/582.asl

@p__927[source(self),url("file:src/agt/list/582.asl"),url("file:src/agt/regular_agent.asl")] +initial_print1 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_22642)); .abolish(path(_22643)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_22644)); .abolish(metabolism(_22645)); .abolish(vision(_22646)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__928[source(self),url("file:src/agt/list/582.asl"),url("file:src/agt/regular_agent.asl")] +initial_print5 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .abolish(agent_id(_22647)); .abolish(path(_22648)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_22649)); .abolish(metabolism(_22650)); .abolish(vision(_22651)); (NewA = (B0+1)); (NewB = (B1+1)); (NewC = (B2+1)); .print("Sugar after",NewA); .print("Metabolism after",NewB); .print("Vision after",NewC); +sugar(NewA); +metabolism(NewB); +vision(NewC); ?sugar(A); ?metabolism(B); ?vision(C); .print("Sugar ",A); .print("Metabolism ",B); .print("Vision ",C); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation").
@p__929[source(self),url("file:src/agt/list/582.asl"),url("file:src/agt/regular_agent.asl")] +initial_print7 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .abolish(agent_id(_22652)); .abolish(path(_22653)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_22654)); .abolish(metabolism(_22655)); .abolish(vision(_22656)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation").

