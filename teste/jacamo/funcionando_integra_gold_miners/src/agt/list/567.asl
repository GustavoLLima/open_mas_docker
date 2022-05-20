// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_139687]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_139405]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_112048]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_111913]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_31162]) & (Ans =.. [NS,F,T,NLA])))).
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
pos(23,15)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(22,15)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(29,8)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(6,25)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
score(0).
initial_print1.
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
carrying_gold[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focused(WksName,ArtName[artifact_type(Type)],ArtId) :- focusing(ArtId,ArtName,Type,_31120,WksName,_31121).
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_567),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_567),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_567),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_567),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joined(WksName,WksId) :- joinedWsp(WksId,WksName,_31122).
last_dir(down).
free.
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_567),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_567),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
teste(0.16148361025235847).
teste(0.14807495407518467).
teste(0.7017184986252449).
teste(0.8966295261005858).
teste(0.4041981610031127).


// initial goals
!start.
!say(hello).


// plans from file:src/agt/list/567.asl

@p__9189[source(self),url("file:src/agt/list/567.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([],_31117).
@p__9190[source(self),url("file:src/agt/list/567.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(L,0) <- .print("Error focusing on environment artifact ",L).
@lf_env_art[atomic,source(self),url("file:src/agt/list/567.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([H|T],Try) <- !jcm::focus_env_art(H,Try); !jcm::focus_env_art(T,Try).
@p__9191[source(self),url("file:src/agt/list/567.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,"",_31118),Try) <- .concat("/main/",W,FullW); joinWorkspace(FullW,_31119); .print("joinned workspace ",FullW).
@p__9192[source(self),url("file:src/agt/list/567.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,A,NS),Try) <- .concat("/main/",W,FullW); .print("focusing on artifact ",A," (at workspace ",FullW,") using namespace ",NS); joinWorkspace(FullW,WId); lookupArtifact(A,AId)[wid(WId)]; NS::focus(AId)[wid(WId)].
@p__9193[source(self),url("file:src/agt/list/567.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] -!jcm::focus_env_art(L,Try) <- .print("waiting a bit to focus on ",L," try #",Try); .wait(200); !jcm::focus_env_art(L,(Try-1)).
@p__9194[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +initial_print1 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_31123)); .abolish(path(_31124)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_31125)); .abolish(metabolism(_31126)); .abolish(vision(_31127)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__9195[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +free : (gsize(_31128,W,H) & (jia.random(RX,(W-1)) & jia.random(RY,(H-1)))) <- .print("I am going to go near (",RX,",",RY,")"); !go_near(RX,RY).
@p__9196[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +free <- .wait(100); -+free.
@p__9197[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +near(X,Y) : free <- -+free.
@p__9198[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!go_near(X,Y) : free <- -near(_31129,_31130); -last_dir(_31131); !near(X,Y).
@p__9199[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & jia.neighbour(AgX,AgY,X,Y)) <- .print("I am at ","(",AgX,",",AgY,")"," which is near (",X,",",Y,")"); +near(X,Y).
@p__9200[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & last_dir(skip)) <- .print("I am at ","(",AgX,",",AgY,")"," and I can't get to' (",X,",",Y,")"); +near(X,Y).
@p__9201[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : not (near(X,Y)) <- !next_step(X,Y); !near(X,Y).
@p__9202[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) <- !near(X,Y).
@p__9203[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : pos(AgX,AgY) <- jia.get_direction(AgX,AgY,X,Y,D); -+last_dir(D); D.
@p__9204[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : not (pos(_31132,_31133)) <- !next_step(X,Y).
@p__9205[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] -!next_step(X,Y) <- -+last_dir(null); !next_step(X,Y).
@p__9206[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : pos(X,Y) <- .print("I've reached ",X,"x",Y).
@p__9207[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : not (pos(X,Y)) <- !next_step(X,Y); !pos(X,Y).
@p__9208[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +cell(X,Y,gold) <- +gold(X,Y).
@pcell[atomic,source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & free) <- -free; .print("Gold perceived: ",gold(X,Y)); !init_handle(gold(X,Y)).
@pcell2[atomic,source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & (not (free) & (.desire(handle(gold(OldX,OldY))) & (pos(AgX,AgY) & (jia.dist(X,Y,AgX,AgY,DNewG) & (jia.dist(OldX,OldY,AgX,AgY,DOldG) & (DNewG < DOldG))))))) <- .drop_desire(handle(gold(OldX,OldY))); .print("Giving up current gold ",gold(OldX,OldY)," to handle ",gold(X,Y)," which I am seeing!"); !init_handle(gold(X,Y)).
@pih1[atomic,source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : .desire(near(_31134,_31135)) <- .print("Dropping near(_,_) desires and intentions to handle ",Gold); .drop_desire(near(_31136,_31137)); !init_handle(Gold).
@pih2[atomic,source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : pos(X,Y) <- .print("Going for ",Gold); !!handle(Gold).
@p__9209[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!handle(gold(X,Y)) : not (free) <- .print("Handling ",gold(X,Y)," now."); !pos(X,Y); !ensure(pick,gold(X,Y)); ?depot(_31138,DX,DY); !pos(DX,DY); !ensure(drop,0); .print("Finish handling ",gold(X,Y)); ?score(S); -+score((S+1)); .send(leader,tell,dropped); !choose_gold.
@p__9210[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] -!handle(G) : G <- .print("failed to catch gold ",G); .abolish(G); !!choose_gold.
@p__9211[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] -!handle(G) <- .print("failed to handle ",G,", it isn't in the BB anyway"); !!choose_gold.
@p__9212[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!ensure(pick,_31139) : (pos(X,Y) & gold(X,Y)) <- pick; ?carrying_gold; -gold(X,Y).
@p__9213[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!ensure(drop,_31140) : (carrying_gold & (pos(X,Y) & depot(_31141,X,Y))) <- drop.
@p__9214[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] : .my_name(A) <- -winning(A,S); .print("I am the greatest!!!").
@p__9215[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] <- -winning(A,S).
@p__9216[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : not (gold(_31142,_31143)) <- -+free.
@p__9217[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : gold(_31144,_31145) <- .findall(gold(X,Y),gold(X,Y),LG); !calc_gold_distance(LG,LD); .length(LD,LLD); (LLD > 0); .print("Gold distances: ",LD,LLD); .min(LD,d(_31146,NewG)); .print("Next gold is ",NewG); !!handle(NewG).
@p__9218[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] -!choose_gold <- -+free.
@p__9219[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([],[]).
@p__9220[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([gold(GX,GY)|R],[d(D,gold(GX,GY))|RD]) : pos(IX,IY) <- jia.dist(IX,IY,GX,GY,D); !calc_gold_distance(R,RD).
@p__9221[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([_31147|R],RD) <- !calc_gold_distance(R,RD).
@p__9222[source(self),url("file:src/agt/list/567.asl"),url("file:src/agt/miner2.asl")] +end_of_simulation(S,_31148) <- .drop_all_desires; .abolish(gold(_31149,_31150)); .abolish(picked(_31151)); -+free; .print("-- END ",S," --").

