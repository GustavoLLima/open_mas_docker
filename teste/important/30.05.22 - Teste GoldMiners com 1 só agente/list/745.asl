// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_937]) & (Ans =.. [NS,F,T,NLA])))).
kqml::clear_source_self([],[]).
kqml::clear_source_self([source(self)|T],NT) :- kqml::clear_source_self(T,NT).
kqml::clear_source_self([A|T],[A|NT]) :- ((A \== source(self)) & kqml::clear_source_self(T,NT)).
depot(7,5,27)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(5,27)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
score(1).
initial_print1.
gsize(7,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focused(WksName,ArtName[artifact_type(Type)],ArtId) :- focusing(ArtId,ArtName,Type,_895,WksName,_896).
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_745),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_745),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joined(WksName,WksId) :- joinedWsp(WksId,WksName,_897).
last_dir(down).
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_745),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
teste(0.08626301441855633).


// initial goals
!start.
!say(hello).


// plans from file:src/agt/miner3.asl

@pteste2[atomic,source(self),url("file:src/agt/miner3.asl")] +initial_print1 <- .print("Hello there. I'm saving myself to leave the simulation"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_898)); .abolish(path(_899)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_900)); .abolish(metabolism(_901)); .abolish(vision(_902)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__176[source(self),url("file:src/agt/miner3.asl")] +free : (gsize(_903,W,H) & (jia.random(RX,(W-1)) & jia.random(RY,(H-1)))) <- .print("I am going to go near (",RX,",",RY,")"); !go_near(RX,RY).
@p__177[source(self),url("file:src/agt/miner3.asl")] +free <- .wait(100); -+free.
@p__178[source(self),url("file:src/agt/miner3.asl")] +near(X,Y) : free <- -+free.
@p__179[source(self),url("file:src/agt/miner3.asl")] +!go_near(X,Y) : free <- -near(_904,_905); -last_dir(_906); !near(X,Y).
@p__180[source(self),url("file:src/agt/miner3.asl")] +!near(X,Y) : (pos(AgX,AgY) & jia.neighbour(AgX,AgY,X,Y)) <- .print("I am at ","(",AgX,",",AgY,")"," which is near (",X,",",Y,")"); +near(X,Y).
@p__181[source(self),url("file:src/agt/miner3.asl")] +!near(X,Y) : (pos(AgX,AgY) & last_dir(skip)) <- .print("I am at ","(",AgX,",",AgY,")"," and I can't get to' (",X,",",Y,")"); +near(X,Y).
@p__182[source(self),url("file:src/agt/miner3.asl")] +!near(X,Y) : not (near(X,Y)) <- !next_step(X,Y); !near(X,Y).
@p__183[source(self),url("file:src/agt/miner3.asl")] +!near(X,Y) <- !near(X,Y).
@p__184[source(self),url("file:src/agt/miner3.asl")] +!next_step(X,Y) : pos(AgX,AgY) <- jia.get_direction(AgX,AgY,X,Y,D); -+last_dir(D); D.
@p__185[source(self),url("file:src/agt/miner3.asl")] +!next_step(X,Y) : not (pos(_907,_908)) <- !next_step(X,Y).
@p__186[source(self),url("file:src/agt/miner3.asl")] -!next_step(X,Y) <- -+last_dir(null); !next_step(X,Y).
@p__187[source(self),url("file:src/agt/miner3.asl")] +!pos(X,Y) : pos(X,Y) <- .print("I've reached ",X,"x",Y).
@p__188[source(self),url("file:src/agt/miner3.asl")] +!pos(X,Y) : not (pos(X,Y)) <- !next_step(X,Y); !pos(X,Y).
@p__189[source(self),url("file:src/agt/miner3.asl")] +cell(X,Y,gold) <- +gold(X,Y).
@pcell[atomic,source(self),url("file:src/agt/miner3.asl")] +gold(X,Y) : (not (carrying_gold) & free) <- -free; .print("Gold perceived: ",gold(X,Y)); !init_handle(gold(X,Y)).
@pcell2[atomic,source(self),url("file:src/agt/miner3.asl")] +gold(X,Y) : (not (carrying_gold) & (not (free) & (.desire(handle(gold(OldX,OldY))) & (pos(AgX,AgY) & (jia.dist(X,Y,AgX,AgY,DNewG) & (jia.dist(OldX,OldY,AgX,AgY,DOldG) & (DNewG < DOldG))))))) <- .drop_desire(handle(gold(OldX,OldY))); .print("Giving up current gold ",gold(OldX,OldY)," to handle ",gold(X,Y)," which I am seeing!"); !init_handle(gold(X,Y)).
@pih1[atomic,source(self),url("file:src/agt/miner3.asl")] +!init_handle(Gold) : .desire(near(_909,_910)) <- .print("Dropping near(_,_) desires and intentions to handle ",Gold); .drop_desire(near(_911,_912)); !init_handle(Gold).
@pih2[atomic,source(self),url("file:src/agt/miner3.asl")] +!init_handle(Gold) : pos(X,Y) <- .print("Going for ",Gold); !!handle(Gold).
@pteste[atomic,source(self),url("file:src/agt/miner3.asl")] +!handle(gold(X,Y)) : not (free) <- .print("Handling ",gold(X,Y)," now."); !pos(X,Y); !ensure(pick,gold(X,Y)); ?depot(_913,DX,DY); !pos(DX,DY); !ensure(drop,0); .print("Finish handling ",gold(X,Y)); ?score(S); -+score((S+1)); .send(leader,tell,dropped); +initial_print1.
@p__190[source(self),url("file:src/agt/miner3.asl")] -!handle(G) : G <- .print("failed to catch gold ",G); .abolish(G); !!choose_gold.
@p__191[source(self),url("file:src/agt/miner3.asl")] -!handle(G) <- .print("failed to handle ",G,", it isn't in the BB anyway"); !!choose_gold.
@p__192[source(self),url("file:src/agt/miner3.asl")] +!ensure(pick,_914) : (pos(X,Y) & gold(X,Y)) <- pick; ?carrying_gold; -gold(X,Y).
@p__193[source(self),url("file:src/agt/miner3.asl")] +!ensure(drop,_915) : (carrying_gold & (pos(X,Y) & depot(_916,X,Y))) <- drop.
@p__194[source(self),url("file:src/agt/miner3.asl")] +winning(A,S)[source(leader)] : .my_name(A) <- -winning(A,S); .print("I am the greatest!!!").
@p__195[source(self),url("file:src/agt/miner3.asl")] +winning(A,S)[source(leader)] <- -winning(A,S).
@p__196[source(self),url("file:src/agt/miner3.asl")] +!choose_gold : not (gold(_917,_918)) <- -+free.
@p__197[source(self),url("file:src/agt/miner3.asl")] +!choose_gold : gold(_919,_920) <- .findall(gold(X,Y),gold(X,Y),LG); !calc_gold_distance(LG,LD); .length(LD,LLD); (LLD > 0); .print("Gold distances: ",LD,LLD); .min(LD,d(_921,NewG)); .print("Next gold is ",NewG); !!handle(NewG).
@p__198[source(self),url("file:src/agt/miner3.asl")] -!choose_gold <- -+free.
@p__199[source(self),url("file:src/agt/miner3.asl")] +!calc_gold_distance([],[]).
@p__200[source(self),url("file:src/agt/miner3.asl")] +!calc_gold_distance([gold(GX,GY)|R],[d(D,gold(GX,GY))|RD]) : pos(IX,IY) <- jia.dist(IX,IY,GX,GY,D); !calc_gold_distance(R,RD).
@p__201[source(self),url("file:src/agt/miner3.asl")] +!calc_gold_distance([_922|R],RD) <- !calc_gold_distance(R,RD).
@p__202[source(self),url("file:src/agt/miner3.asl")] +end_of_simulation(S,_923) <- .drop_all_desires; .abolish(gold(_924,_925)); .abolish(picked(_926)); -+free; .print("-- END ",S," --").


// plans from jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl

@p__171[source(self),url("jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([],_892).
@p__172[source(self),url("jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(L,0) <- .print("Error focusing on environment artifact ",L).
@lf_env_art[atomic,source(self),url("jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([H|T],Try) <- !jcm::focus_env_art(H,Try); !jcm::focus_env_art(T,Try).
@p__173[source(self),url("jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,"",_893),Try) <- .concat("/main/",W,FullW); joinWorkspace(FullW,_894); .print("joinned workspace ",FullW).
@p__174[source(self),url("jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,A,NS),Try) <- .concat("/main/",W,FullW); .print("focusing on artifact ",A," (at workspace ",FullW,") using namespace ",NS); joinWorkspace(FullW,WId); lookupArtifact(A,AId)[wid(WId)]; NS::focus(AId)[wid(WId)].
@p__175[source(self),url("jar:file:C:\Users\Gustavo\.gradle\caches\modules-2\files-2.1\org.jacamo\jacamo\1.0\bda076187adb93bc05a91ab0cdcb2fb44b039ed6\jacamo-1.0.jar!/templates/common-cartago.asl")] -!jcm::focus_env_art(L,Try) <- .print("waiting a bit to focus on ",L," try #",Try); .wait(200); !jcm::focus_env_art(L,(Try-1)).

