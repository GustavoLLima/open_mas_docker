// beliefs and rules
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_341802]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_341712]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_328511]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_293199]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_293036]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_272662]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_256945]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_247459]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_237503]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_204465]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_204243]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_192239]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_136257]) & (Ans =.. [NS,F,T,NLA])))).
kqml::bel_no_source_self(NS::Content,Ans) :- (NS::Content[|LA] & (kqml::clear_source_self(LA,NLA) & ((Content =.. [F,T,_62027]) & (Ans =.. [NS,F,T,NLA])))).
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
pos(25,24)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(24,24)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(8,24)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(10,11)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(10,13)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(5,6)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(4,18)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(5,13)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(5,19)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(23,20)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(25,20)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(33,17)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(30,16)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
pos(10,9)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
score(0).
initial_print1.
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
gsize(4,35,35)[artifact_id(cobj_3),artifact_name(m2view),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focused(WksName,ArtName[artifact_type(Type)],ArtId) :- focusing(ArtId,ArtName,Type,_61983,WksName,_61984).
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_708),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_708),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_2,mining,"/main/mining")[artifact_id(cobj_1),artifact_name(session_708),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joinedWsp(cobj_0,main,"/main")[artifact_id(cobj_1),artifact_name(session_708),percept_type(obs_prop),source(percept),workspace("/main",cobj_0)].
joined(WksName,WksId) :- joinedWsp(WksId,WksName,_61985).
last_dir(left).
free.
teste(0.24848964446172195).
teste(0.6053301500281966).
teste(0.3864393711487094).
teste(0.5950905096112602).
teste(0.11102039080669535).
teste(0.8590910527951163).
teste(0.04835659679080384).
teste(0.49707731510615905).
teste(0.17143482290835588).
teste(0.4834412134160133).
teste(0.4414335608439979).
teste(0.37891968630225603).
teste(0.3931992472393051).
teste(0.2829258742112163).
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_708),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].
focusing(cobj_3,m2view,"mining.MiningPlanet",cobj_2,mining,"/main/mining")[artifact_id(cobj_4),artifact_name(body_708),percept_type(obs_prop),source(percept),workspace("/main/mining",cobj_2)].


// initial goals
!start.
!say(hello).


// plans from file:src/agt/list/708.asl

@p__11739[source(self),url("file:src/agt/list/708.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([],_61980).
@p__11740[source(self),url("file:src/agt/list/708.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(L,0) <- .print("Error focusing on environment artifact ",L).
@lf_env_art[atomic,source(self),url("file:src/agt/list/708.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art([H|T],Try) <- !jcm::focus_env_art(H,Try); !jcm::focus_env_art(T,Try).
@p__11741[source(self),url("file:src/agt/list/708.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,"",_61981),Try) <- .concat("/main/",W,FullW); joinWorkspace(FullW,_61982); .print("joinned workspace ",FullW).
@p__11742[source(self),url("file:src/agt/list/708.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] +!jcm::focus_env_art(art_env(W,A,NS),Try) <- .concat("/main/",W,FullW); .print("focusing on artifact ",A," (at workspace ",FullW,") using namespace ",NS); joinWorkspace(FullW,WId); lookupArtifact(A,AId)[wid(WId)]; NS::focus(AId)[wid(WId)].
@p__11743[source(self),url("file:src/agt/list/708.asl"),url("jar:file:/home/gradle/.gradle/caches/modules-2/files-2.1/org.jacamo/jacamo/1.0/bda076187adb93bc05a91ab0cdcb2fb44b039ed6/jacamo-1.0.jar!/templates/common-cartago.asl")] -!jcm::focus_env_art(L,Try) <- .print("waiting a bit to focus on ",L," try #",Try); .wait(200); !jcm::focus_env_art(L,(Try-1)).
@p__11744[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +initial_print1 <- .print("Hello there. I'm a saver agent"); ?agent_id(V0); ?path(V1); .random(R); +teste(R); ?teste(R); .print("R: ",R); .abolish(agent_id(_61986)); .abolish(path(_61987)); ?sugar(B0); ?metabolism(B1); ?vision(B2); .print("Sugar ",B0); .print("Metabolism ",B1); .print("Vision ",B2); .abolish(sugar(_61988)); .abolish(metabolism(_61989)); .abolish(vision(_61990)); .my_name(X); .concat("src/agt/list/",X,".asl",NAME); .save_agent(NAME,[start,say(hello)]); .print("Saved my information on file. Sending message to remove agent from simulation"); .send(killer_agent,tell,kill(V0,V1,X,B0,B1,B2)); .send(killer_agent,untell,kill(V0,V1,X,B0,B1,B2)).
@p__11745[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +free : (gsize(_61991,W,H) & (jia.random(RX,(W-1)) & jia.random(RY,(H-1)))) <- .print("I am going to go near (",RX,",",RY,")"); !go_near(RX,RY).
@p__11746[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +free <- .wait(100); -+free.
@p__11747[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +near(X,Y) : free <- -+free.
@p__11748[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!go_near(X,Y) : free <- -near(_61992,_61993); -last_dir(_61994); !near(X,Y).
@p__11749[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & jia.neighbour(AgX,AgY,X,Y)) <- .print("I am at ","(",AgX,",",AgY,")"," which is near (",X,",",Y,")"); +near(X,Y).
@p__11750[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : (pos(AgX,AgY) & last_dir(skip)) <- .print("I am at ","(",AgX,",",AgY,")"," and I can't get to' (",X,",",Y,")"); +near(X,Y).
@p__11751[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) : not (near(X,Y)) <- !next_step(X,Y); !near(X,Y).
@p__11752[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!near(X,Y) <- !near(X,Y).
@p__11753[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : pos(AgX,AgY) <- jia.get_direction(AgX,AgY,X,Y,D); -+last_dir(D); D.
@p__11754[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!next_step(X,Y) : not (pos(_61995,_61996)) <- !next_step(X,Y).
@p__11755[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] -!next_step(X,Y) <- -+last_dir(null); !next_step(X,Y).
@p__11756[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : pos(X,Y) <- .print("I've reached ",X,"x",Y).
@p__11757[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!pos(X,Y) : not (pos(X,Y)) <- !next_step(X,Y); !pos(X,Y).
@p__11758[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +cell(X,Y,gold) <- +gold(X,Y).
@pcell[atomic,source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & free) <- -free; .print("Gold perceived: ",gold(X,Y)); !init_handle(gold(X,Y)).
@pcell2[atomic,source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +gold(X,Y) : (not (carrying_gold) & (not (free) & (.desire(handle(gold(OldX,OldY))) & (pos(AgX,AgY) & (jia.dist(X,Y,AgX,AgY,DNewG) & (jia.dist(OldX,OldY,AgX,AgY,DOldG) & (DNewG < DOldG))))))) <- .drop_desire(handle(gold(OldX,OldY))); .print("Giving up current gold ",gold(OldX,OldY)," to handle ",gold(X,Y)," which I am seeing!"); !init_handle(gold(X,Y)).
@pih1[atomic,source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : .desire(near(_61997,_61998)) <- .print("Dropping near(_,_) desires and intentions to handle ",Gold); .drop_desire(near(_61999,_62000)); !init_handle(Gold).
@pih2[atomic,source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!init_handle(Gold) : pos(X,Y) <- .print("Going for ",Gold); !!handle(Gold).
@p__11759[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!handle(gold(X,Y)) : not (free) <- .print("Handling ",gold(X,Y)," now."); !pos(X,Y); !ensure(pick,gold(X,Y)); ?depot(_62001,DX,DY); !pos(DX,DY); !ensure(drop,0); .print("Finish handling ",gold(X,Y)); ?score(S); -+score((S+1)); .send(leader,tell,dropped); !choose_gold.
@p__11760[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] -!handle(G) : G <- .print("failed to catch gold ",G); .abolish(G); !!choose_gold.
@p__11761[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] -!handle(G) <- .print("failed to handle ",G,", it isn't in the BB anyway"); !!choose_gold.
@p__11762[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!ensure(pick,_62002) : (pos(X,Y) & gold(X,Y)) <- pick; ?carrying_gold; -gold(X,Y).
@p__11763[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!ensure(drop,_62003) : (carrying_gold & (pos(X,Y) & depot(_62004,X,Y))) <- drop.
@p__11764[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] : .my_name(A) <- -winning(A,S); .print("I am the greatest!!!").
@p__11765[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +winning(A,S)[source(leader)] <- -winning(A,S).
@p__11766[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : not (gold(_62005,_62006)) <- -+free.
@p__11767[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!choose_gold : gold(_62007,_62008) <- .findall(gold(X,Y),gold(X,Y),LG); !calc_gold_distance(LG,LD); .length(LD,LLD); (LLD > 0); .print("Gold distances: ",LD,LLD); .min(LD,d(_62009,NewG)); .print("Next gold is ",NewG); !!handle(NewG).
@p__11768[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] -!choose_gold <- -+free.
@p__11769[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([],[]).
@p__11770[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([gold(GX,GY)|R],[d(D,gold(GX,GY))|RD]) : pos(IX,IY) <- jia.dist(IX,IY,GX,GY,D); !calc_gold_distance(R,RD).
@p__11771[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +!calc_gold_distance([_62010|R],RD) <- !calc_gold_distance(R,RD).
@p__11772[source(self),url("file:src/agt/list/708.asl"),url("file:src/agt/miner2.asl")] +end_of_simulation(S,_62011) <- .drop_all_desires; .abolish(gold(_62012,_62013)); .abolish(picked(_62014)); -+free; .print("-- END ",S," --").

