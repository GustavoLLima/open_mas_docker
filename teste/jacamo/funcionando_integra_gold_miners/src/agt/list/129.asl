// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_326171]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_290815]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_290695]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_282763]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_279861]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_275241]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_263079]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_230010]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_227972]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_208200]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_207990]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_207854]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_194087]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_191081]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_190925]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_141776]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_112627]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_112558]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_93359]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_63388]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_53209]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_38069]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_37926]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_31338]) & (Ans =.. [NS,F,T,NLA])))).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
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
depot(4,5,27)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
depot(4,5,27)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(24,6)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(15,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(14,17)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(27,7)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(27,15)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(27,16)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(28,14)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(20,14)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(9,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(30,24)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(32,24)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(31,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(29,19)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(26,18)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(31,13)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(31,10)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(29,9)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(7,19)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(22,27)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(30,16)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(4,23)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(6,23)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(5,27)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
score(0).
initial_print1.
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
carrying_gold[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focused(WksName,ArtName[artifact_type(Type)],ArtId) :- focusing(ArtId,ArtName,Type,_31296,WksName,_31297).
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_129),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_129),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_129),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_129),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joined(WksName,WksId) :- joinedWsp(WksId,WksName,_31298).
last_dir(left).
free.
teste(0.32689652078111).
teste(0.43953734843365944).
teste(0.3953454043466007).
teste(0.49358985114625564).
teste(0.389979741428775).
teste(0.7500038147303129).
teste(0.9935074473665322).
teste(0.30417286761697393).
teste(0.25933182737894445).
teste(0.12571364281792152).
teste(0.5112480247863704).
teste(0.9428334792797888).
teste(0.6644050271173227).
teste(0.7435512149895028).
teste(0.6272331710484904).
teste(0.17800490467803998).
teste(0.5617774624222448).
teste(0.10225848088820522).
teste(0.14986665292119783).
teste(0.15794320364119974).
teste(0.8461393708474567).
teste(0.6045836926607382).
teste(0.764146821955218).
teste(0.5547772979087201).
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_129),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_129),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].


// initial goals
!start.
!say(hello).


// plans from file:src/agt/list/129.asl

@p__9257[source(self),url("file:src/agt/list/129.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([],_31293).
@p__9258[source(self),url("file:src/agt/list/129.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(L,0) <- .print("Error focusing on environment artifact ",L).
@lf_env_art[atomic,source(self),url("file:src/agt/list/129.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([H|T],Try) <- !jcm::focus_env_art(H,Try); !jcm::focus_env_art(T,Try).
@p__9259[source(self),url("file:src/agt/list/129.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,"",_31294),Try) <- .concat("/main/",W,FullW); joinWorkspace(FullW,_31295); .print("joinned workspace ",FullW).
@p__9260[source(self),url("file:src/agt/list/129.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,A,NS),Try) <- .concat("/main/",W,FullW); .print("focusing on artifact ",A," (at workspace ",FullW,") using namespace ",NS); joinWorkspace(FullW,WId); lookupArtifact(A,AId)[wid(WId)]; NS::focus(AId)[wid(WId)].
@p__9261[source(self),url("file:src/agt/list/129.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] -!jcm::focus_env_art(L,Try) <- .print("waiting a bit to focus on ",L," try #",Try); .wait(200); !jcm::focus_env_art(L,(Try-1)).
@p__9262[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +initial_print1 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_31299)); .abolish(path(_31300)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_31301)); .abolish(metabolism(_31302)); .abolish(vision(_31303)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__9263[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +free : (gsize(_31304,W,H) & (jia.random(RX,(W-1)) & jia.random(RY,(H-1)))) <- .print("I am going to go near (",RX,",",RY,")"); !go_near(RX,RY).
@p__9264[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +free <- .wait(100); -+free.
@p__9265[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +near(X,Y) : free <- -+free.
@p__9266[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!go_near(X,Y) : free <- -near(_31305,_31306); -last_dir(_31307); !near(X,Y).
@p__9267[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & jia.neighbour(AgX,AgY,X,Y)) <- .print("I am at ","(",AgX,",",AgY,")"," which is near (",X,",",Y,")"); +near(X,Y).
@p__9268[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & last_dir(skip)) <- .print("I am at ","(",AgX,",",AgY,")"," and I can't get to' (",X,",",Y,")"); +near(X,Y).
@p__9269[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : not (near(X,Y)) <- !next_step(X,Y); !near(X,Y).
@p__9270[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) <- !near(X,Y).
@p__9271[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : pos(AgX,AgY) <- jia.get_direction(AgX,AgY,X,Y,D); -+last_dir(D); D.
@p__9272[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : not (pos(_31308,_31309)) <- !next_step(X,Y).
@p__9273[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] -!next_step(X,Y) <- -+last_dir(null); !next_step(X,Y).
@p__9274[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : pos(X,Y) <- .print("I've reached ",X,"x",Y).
@p__9275[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : not (pos(X,Y)) <- !next_step(X,Y); !pos(X,Y).
@p__9276[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +cell(X,Y,gold) <- +gold(X,Y).
@pcell[atomic,source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & free) <- -free; .print("Gold perceived: ",gold(X,Y)); !init_handle(gold(X,Y)).
@pcell2[atomic,source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & (not (free) & (.desire(handle(gold(OldX,OldY))) & (pos(AgX,AgY) & (jia.dist(X,Y,AgX,AgY,DNewG) & (jia.dist(OldX,OldY,AgX,AgY,DOldG) & (DNewG < DOldG))))))) <- .drop_desire(handle(gold(OldX,OldY))); .print("Giving up current gold ",gold(OldX,OldY)," to handle ",gold(X,Y)," which I am seeing!"); !init_handle(gold(X,Y)).
@pih1[atomic,source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : .desire(near(_31310,_31311)) <- .print("Dropping near(_,_) desires and intentions to handle ",Gold); .drop_desire(near(_31312,_31313)); !init_handle(Gold).
@pih2[atomic,source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : pos(X,Y) <- .print("Going for ",Gold); !!handle(Gold).
@p__9277[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!handle(gold(X,Y)) : not (free) <- .print("Handling ",gold(X,Y)," now."); !pos(X,Y); !ensure(pick,gold(X,Y)); ?depot(_31314,DX,DY); !pos(DX,DY); !ensure(drop,0); .print("Finish handling ",gold(X,Y)); ?score(S); -+score((S+1)); .send(leader,tell,dropped); !choose_gold.
@p__9278[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] -!handle(G) : G <- .print("failed to catch gold ",G); .abolish(G); !!choose_gold.
@p__9279[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] -!handle(G) <- .print("failed to handle ",G,", it isn't in the BB anyway"); !!choose_gold.
@p__9280[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!ensure(pick,_31315) : (pos(X,Y) & gold(X,Y)) <- pick; ?carrying_gold; -gold(X,Y).
@p__9281[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!ensure(drop,_31316) : (carrying_gold & (pos(X,Y) & depot(_31317,X,Y))) <- drop.
@p__9282[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] : .my_name(A) <- -winning(A,S); .print("I am the greatest!!!").
@p__9283[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] <- -winning(A,S).
@p__9284[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : not (gold(_31318,_31319)) <- -+free.
@p__9285[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : gold(_31320,_31321) <- .findall(gold(X,Y),gold(X,Y),LG); !calc_gold_distance(LG,LD); .length(LD,LLD); (LLD > 0); .print("Gold distances: ",LD,LLD); .min(LD,d(_31322,NewG)); .print("Next gold is ",NewG); !!handle(NewG).
@p__9286[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] -!choose_gold <- -+free.
@p__9287[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([],[]).
@p__9288[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([gold(GX,GY)|R],[d(D,gold(GX,GY))|RD]) : pos(IX,IY) <- jia.dist(IX,IY,GX,GY,D); !calc_gold_distance(R,RD).
@p__9289[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([_31323|R],RD) <- !calc_gold_distance(R,RD).
@p__9290[source(self),url("file:src/agt/list/129.asl"),url("file:src/agt/miner2.asl")] +end_of_simulation(S,_31324) <- .drop_all_desires; .abolish(gold(_31325,_31326)); .abolish(picked(_31327)); -+free; .print("-- END ",S," --").

