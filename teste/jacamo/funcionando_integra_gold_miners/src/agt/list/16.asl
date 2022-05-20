// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_315719]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_315608]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_315486]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_315290]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_315123]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_259528]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_200544]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_200318]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_177691]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_177527]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_110285]) & (Ans =.. [NS,F,T,NLA])))).
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
pos(15,16)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(14,10)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(11,6)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(6,3)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(4,5)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(7,11)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(29,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(27,22)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(28,17)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(28,3)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
score(0).
initial_print1.
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focused(WksName,ArtName[artifact_type(Type)],ArtId) :- focusing(ArtId,ArtName,Type,_110243,WksName,_110244).
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_16),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_16),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_16),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_16),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joined(WksName,WksId) :- joinedWsp(WksId,WksName,_110245).
last_dir(left).
free.
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_16),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_16),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
teste(0.2557320393207887).
teste(0.9460757634151155).
teste(0.18019384552411655).
teste(0.6820465384297374).
teste(0.5036602299060415).
teste(0.839703709893597).
teste(0.009077242513558903).
teste(0.34715540178563553).
teste(0.9557354671758606).
teste(0.003866502540283867).
teste(0.26292488983712514).


// initial goals
!start.
!say(hello).


// plans from file:src/agt/list/16.asl

@p__12963[source(self),url("file:src/agt/list/16.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([],_110240).
@p__12964[source(self),url("file:src/agt/list/16.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(L,0) <- .print("Error focusing on environment artifact ",L).
@lf_env_art[atomic,source(self),url("file:src/agt/list/16.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([H|T],Try) <- !jcm::focus_env_art(H,Try); !jcm::focus_env_art(T,Try).
@p__12965[source(self),url("file:src/agt/list/16.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,"",_110241),Try) <- .concat("/main/",W,FullW); joinWorkspace(FullW,_110242); .print("joinned workspace ",FullW).
@p__12966[source(self),url("file:src/agt/list/16.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,A,NS),Try) <- .concat("/main/",W,FullW); .print("focusing on artifact ",A," (at workspace ",FullW,") using namespace ",NS); joinWorkspace(FullW,WId); lookupArtifact(A,AId)[wid(WId)]; NS::focus(AId)[wid(WId)].
@p__12967[source(self),url("file:src/agt/list/16.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] -!jcm::focus_env_art(L,Try) <- .print("waiting a bit to focus on ",L," try #",Try); .wait(200); !jcm::focus_env_art(L,(Try-1)).
@p__12968[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +initial_print1 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_110246)); .abolish(path(_110247)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_110248)); .abolish(metabolism(_110249)); .abolish(vision(_110250)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__12969[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +free : (gsize(_110251,W,H) & (jia.random(RX,(W-1)) & jia.random(RY,(H-1)))) <- .print("I am going to go near (",RX,",",RY,")"); !go_near(RX,RY).
@p__12970[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +free <- .wait(100); -+free.
@p__12971[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +near(X,Y) : free <- -+free.
@p__12972[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!go_near(X,Y) : free <- -near(_110252,_110253); -last_dir(_110254); !near(X,Y).
@p__12973[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & jia.neighbour(AgX,AgY,X,Y)) <- .print("I am at ","(",AgX,",",AgY,")"," which is near (",X,",",Y,")"); +near(X,Y).
@p__12974[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & last_dir(skip)) <- .print("I am at ","(",AgX,",",AgY,")"," and I can't get to' (",X,",",Y,")"); +near(X,Y).
@p__12975[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : not (near(X,Y)) <- !next_step(X,Y); !near(X,Y).
@p__12976[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) <- !near(X,Y).
@p__12977[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : pos(AgX,AgY) <- jia.get_direction(AgX,AgY,X,Y,D); -+last_dir(D); D.
@p__12978[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : not (pos(_110255,_110256)) <- !next_step(X,Y).
@p__12979[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] -!next_step(X,Y) <- -+last_dir(null); !next_step(X,Y).
@p__12980[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : pos(X,Y) <- .print("I've reached ",X,"x",Y).
@p__12981[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : not (pos(X,Y)) <- !next_step(X,Y); !pos(X,Y).
@p__12982[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +cell(X,Y,gold) <- +gold(X,Y).
@pcell[atomic,source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & free) <- -free; .print("Gold perceived: ",gold(X,Y)); !init_handle(gold(X,Y)).
@pcell2[atomic,source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & (not (free) & (.desire(handle(gold(OldX,OldY))) & (pos(AgX,AgY) & (jia.dist(X,Y,AgX,AgY,DNewG) & (jia.dist(OldX,OldY,AgX,AgY,DOldG) & (DNewG < DOldG))))))) <- .drop_desire(handle(gold(OldX,OldY))); .print("Giving up current gold ",gold(OldX,OldY)," to handle ",gold(X,Y)," which I am seeing!"); !init_handle(gold(X,Y)).
@pih1[atomic,source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : .desire(near(_110257,_110258)) <- .print("Dropping near(_,_) desires and intentions to handle ",Gold); .drop_desire(near(_110259,_110260)); !init_handle(Gold).
@pih2[atomic,source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : pos(X,Y) <- .print("Going for ",Gold); !!handle(Gold).
@p__12983[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!handle(gold(X,Y)) : not (free) <- .print("Handling ",gold(X,Y)," now."); !pos(X,Y); !ensure(pick,gold(X,Y)); ?depot(_110261,DX,DY); !pos(DX,DY); !ensure(drop,0); .print("Finish handling ",gold(X,Y)); ?score(S); -+score((S+1)); .send(leader,tell,dropped); !choose_gold.
@p__12984[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] -!handle(G) : G <- .print("failed to catch gold ",G); .abolish(G); !!choose_gold.
@p__12985[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] -!handle(G) <- .print("failed to handle ",G,", it isn't in the BB anyway"); !!choose_gold.
@p__12986[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!ensure(pick,_110262) : (pos(X,Y) & gold(X,Y)) <- pick; ?carrying_gold; -gold(X,Y).
@p__12987[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!ensure(drop,_110263) : (carrying_gold & (pos(X,Y) & depot(_110264,X,Y))) <- drop.
@p__12988[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] : .my_name(A) <- -winning(A,S); .print("I am the greatest!!!").
@p__12989[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] <- -winning(A,S).
@p__12990[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : not (gold(_110265,_110266)) <- -+free.
@p__12991[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : gold(_110267,_110268) <- .findall(gold(X,Y),gold(X,Y),LG); !calc_gold_distance(LG,LD); .length(LD,LLD); (LLD > 0); .print("Gold distances: ",LD,LLD); .min(LD,d(_110269,NewG)); .print("Next gold is ",NewG); !!handle(NewG).
@p__12992[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] -!choose_gold <- -+free.
@p__12993[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([],[]).
@p__12994[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([gold(GX,GY)|R],[d(D,gold(GX,GY))|RD]) : pos(IX,IY) <- jia.dist(IX,IY,GX,GY,D); !calc_gold_distance(R,RD).
@p__12995[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([_110270|R],RD) <- !calc_gold_distance(R,RD).
@p__12996[source(self),url("file:src/agt/list/16.asl"),url("file:src/agt/miner2.asl")] +end_of_simulation(S,_110271) <- .drop_all_desires; .abolish(gold(_110272,_110273)); .abolish(picked(_110274)); -+free; .print("-- END ",S," --").

