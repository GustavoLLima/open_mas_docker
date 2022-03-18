// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_47]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_11]) & (Ans =.. [NS,F,T,NLA])))).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([],[]).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_lalala),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_bob),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
init.
soma(ae,dale)[source(ag1)].
hello[source(ag1)].
save_and_kill[source(ag1)].


// initial goals


// plans from file:aehoo.asl

@p__1[source(self),url("file:aehoo.asl"),url("file:src/agt/bob.asl")] +init <- .print("i am running").
@p__2[source(self),url("file:aehoo.asl"),url("file:src/agt/bob.asl")] +soma(X,Y) <- .print("Resultado"); .print(X); .print(Y).
@p__3[source(self),url("file:aehoo.asl"),url("file:src/agt/bob.asl")] +save_and_kill[source(A)] <- .print("Recebi mensagem do agente: ",A); .print("Vou me matar"); .my_name(X); .print("Me chamo:",X); .save_agent("aehoo.asl"); .print("Salvei meus dados"); .print("Vou enviar mensagem"); .send(ag1,tell,hello).

