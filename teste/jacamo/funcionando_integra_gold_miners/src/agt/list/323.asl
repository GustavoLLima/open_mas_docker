// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_337163]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_276735]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_269331]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_253611]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_253350]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_253108]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_252897]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_227674]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_227419]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_227270]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_205433]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_205271]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_205088]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_204982]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_182589]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_177829]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_141890]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_132398]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_116231]) & (Ans =.. [NS,F,T,NLA])))).
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
pos(26,24)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(22,20)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(11,19)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(10,14)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(12,15)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(10,15)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(7,15)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(11,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(12,20)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(9,21)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(32,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(30,21)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(31,21)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(29,20)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(31,14)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(28,17)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(33,14)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(27,18)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(31,17)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
score(0).
initial_print1.
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focused(WksName,ArtName[artifact_type(Type)],ArtId) :- focusing(ArtId,ArtName,Type,_116189,WksName,_116190).
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_323),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_323),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_323),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_323),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joined(WksName,WksId) :- joinedWsp(WksId,WksName,_116191).
last_dir(right).
free.
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_323),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_323),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
teste(0.1564392770026758).
teste(0.6887943466680183).
teste(0.6393403846368703).
teste(0.8871482982698562).
teste(0.15325698555717882).
teste(0.4867804700320828).
teste(0.31353999072744687).
teste(0.1727771834780395).
teste(0.05575530592937572).
teste(0.1720656461567076).
teste(0.12555063982168457).
teste(0.27842015390869357).
teste(0.31683011815681605).
teste(0.8954267629137134).
teste(0.9843820746228024).
teste(0.9932418581370538).
teste(0.10041604857950126).
teste(0.7363302372745155).
teste(0.0747604597266549).


// initial goals
!start.
!say(hello).


// plans from file:src/agt/list/323.asl

@p__13065[source(self),url("file:src/agt/list/323.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([],_116186).
@p__13066[source(self),url("file:src/agt/list/323.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(L,0) <- .print("Error focusing on environment artifact ",L).
@lf_env_art[atomic,source(self),url("file:src/agt/list/323.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([H|T],Try) <- !jcm::focus_env_art(H,Try); !jcm::focus_env_art(T,Try).
@p__13067[source(self),url("file:src/agt/list/323.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,"",_116187),Try) <- .concat("/main/",W,FullW); joinWorkspace(FullW,_116188); .print("joinned workspace ",FullW).
@p__13068[source(self),url("file:src/agt/list/323.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,A,NS),Try) <- .concat("/main/",W,FullW); .print("focusing on artifact ",A," (at workspace ",FullW,") using namespace ",NS); joinWorkspace(FullW,WId); lookupArtifact(A,AId)[wid(WId)]; NS::focus(AId)[wid(WId)].
@p__13069[source(self),url("file:src/agt/list/323.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] -!jcm::focus_env_art(L,Try) <- .print("waiting a bit to focus on ",L," try #",Try); .wait(200); !jcm::focus_env_art(L,(Try-1)).
@p__13070[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +initial_print1 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_116192)); .abolish(path(_116193)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_116194)); .abolish(metabolism(_116195)); .abolish(vision(_116196)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__13071[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +free : (gsize(_116197,W,H) & (jia.random(RX,(W-1)) & jia.random(RY,(H-1)))) <- .print("I am going to go near (",RX,",",RY,")"); !go_near(RX,RY).
@p__13072[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +free <- .wait(100); -+free.
@p__13073[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +near(X,Y) : free <- -+free.
@p__13074[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!go_near(X,Y) : free <- -near(_116198,_116199); -last_dir(_116200); !near(X,Y).
@p__13075[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & jia.neighbour(AgX,AgY,X,Y)) <- .print("I am at ","(",AgX,",",AgY,")"," which is near (",X,",",Y,")"); +near(X,Y).
@p__13076[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & last_dir(skip)) <- .print("I am at ","(",AgX,",",AgY,")"," and I can't get to' (",X,",",Y,")"); +near(X,Y).
@p__13077[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : not (near(X,Y)) <- !next_step(X,Y); !near(X,Y).
@p__13078[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) <- !near(X,Y).
@p__13079[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : pos(AgX,AgY) <- jia.get_direction(AgX,AgY,X,Y,D); -+last_dir(D); D.
@p__13080[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : not (pos(_116201,_116202)) <- !next_step(X,Y).
@p__13081[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] -!next_step(X,Y) <- -+last_dir(null); !next_step(X,Y).
@p__13082[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : pos(X,Y) <- .print("I've reached ",X,"x",Y).
@p__13083[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : not (pos(X,Y)) <- !next_step(X,Y); !pos(X,Y).
@p__13084[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +cell(X,Y,gold) <- +gold(X,Y).
@pcell[atomic,source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & free) <- -free; .print("Gold perceived: ",gold(X,Y)); !init_handle(gold(X,Y)).
@pcell2[atomic,source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & (not (free) & (.desire(handle(gold(OldX,OldY))) & (pos(AgX,AgY) & (jia.dist(X,Y,AgX,AgY,DNewG) & (jia.dist(OldX,OldY,AgX,AgY,DOldG) & (DNewG < DOldG))))))) <- .drop_desire(handle(gold(OldX,OldY))); .print("Giving up current gold ",gold(OldX,OldY)," to handle ",gold(X,Y)," which I am seeing!"); !init_handle(gold(X,Y)).
@pih1[atomic,source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : .desire(near(_116203,_116204)) <- .print("Dropping near(_,_) desires and intentions to handle ",Gold); .drop_desire(near(_116205,_116206)); !init_handle(Gold).
@pih2[atomic,source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : pos(X,Y) <- .print("Going for ",Gold); !!handle(Gold).
@p__13085[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!handle(gold(X,Y)) : not (free) <- .print("Handling ",gold(X,Y)," now."); !pos(X,Y); !ensure(pick,gold(X,Y)); ?depot(_116207,DX,DY); !pos(DX,DY); !ensure(drop,0); .print("Finish handling ",gold(X,Y)); ?score(S); -+score((S+1)); .send(leader,tell,dropped); !choose_gold.
@p__13086[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] -!handle(G) : G <- .print("failed to catch gold ",G); .abolish(G); !!choose_gold.
@p__13087[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] -!handle(G) <- .print("failed to handle ",G,", it isn't in the BB anyway"); !!choose_gold.
@p__13088[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!ensure(pick,_116208) : (pos(X,Y) & gold(X,Y)) <- pick; ?carrying_gold; -gold(X,Y).
@p__13089[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!ensure(drop,_116209) : (carrying_gold & (pos(X,Y) & depot(_116210,X,Y))) <- drop.
@p__13090[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] : .my_name(A) <- -winning(A,S); .print("I am the greatest!!!").
@p__13091[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] <- -winning(A,S).
@p__13092[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : not (gold(_116211,_116212)) <- -+free.
@p__13093[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : gold(_116213,_116214) <- .findall(gold(X,Y),gold(X,Y),LG); !calc_gold_distance(LG,LD); .length(LD,LLD); (LLD > 0); .print("Gold distances: ",LD,LLD); .min(LD,d(_116215,NewG)); .print("Next gold is ",NewG); !!handle(NewG).
@p__13094[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] -!choose_gold <- -+free.
@p__13095[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([],[]).
@p__13096[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([gold(GX,GY)|R],[d(D,gold(GX,GY))|RD]) : pos(IX,IY) <- jia.dist(IX,IY,GX,GY,D); !calc_gold_distance(R,RD).
@p__13097[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([_116216|R],RD) <- !calc_gold_distance(R,RD).
@p__13098[source(self),url("file:src/agt/list/323.asl"),url("file:src/agt/miner2.asl")] +end_of_simulation(S,_116217) <- .drop_all_desires; .abolish(gold(_116218,_116219)); .abolish(picked(_116220)); -+free; .print("-- END ",S," --").

