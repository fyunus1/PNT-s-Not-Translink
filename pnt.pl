% clock(H,M) and add(Y,I,N) are to make times easier
% to manipulate
clock(H,M) :- H >= 0,
	      H < 24,
	      M >= 0,
	      M < 60.

%time N is time Y plus I minutes
add(Y,I,N) :- Y = clock(H,M),
	      between(0, 1439,I),
	      NH is mod(H+floor((M+I)/60),24),
	      NM is mod(M+I,60),
	      N = clock(NH,NM).

%buses and skytrains are vehicles
prop(X,vehicle,Y) :- prop(X,bus,Y).
prop(X,bus,Y) :- prop(X,skytrain,Y).

%find routes from location Start to location Dest
%departing at or after time StartTime
%and arriving at destination within MaxTime minutes
%(Single-hop; no transfers)
findRoutes(Start,Dest,StartTime,MaxTime,Route,S,D,JourneyMinutes) :-
%Set S to Start, D to Dest; these are just to format the returned info
S = Start,
D = Dest,
%check if there’s a line with a route with stops at Start and Dest
prop(_, route, Route),
prop(Route, stop, StopOfStart),
prop(StopOfStart,location, Start),
prop(Route, stop, StopOfDest),
prop(StopOfDest, location, Dest),
%check if soonest bus at Start after StartTime
%gets to Dest within MaxTime
prop(Route,vehicle,Vehicle),
prop(Vehicle, schedule, Schedule),
prop(Schedule, arrival, ArrivalOfStart),
prop(ArrivalOfStart, location, StopOfStart),
prop(ArrivalOfStart, time, TimeOfStopOfStart),
add(StartTime,StartTimeDiff,TimeOfStopOfStart),
StartTimeDiff >= 0,
prop(Schedule, arrival, ArrivalAtDest),
prop(ArrivalAtDest, location, StopOfDest),
prop(ArrivalAtDest, time, TimeOfStopOfDest),
add(StartTime,JourneyMinutes,TimeOfStopOfDest),
JourneyMinutes >= StartTimeDiff,
JourneyMinutes =< MaxTime.

%find routes from location Start to location Dest
%departing at or after time StartTime
%and arriving at destination within MaxTime minutes
%(with transfers)
findRoutes(Start,Dest,StartTime,MaxTime,Route,S,D,JourneyMinutes) :-
%Set S to Start, D to Dest; these are just to format the returned info
S = Start,
D = Dest,
%check if there's a line with a route with stops at Start and Via,
%(where there exists a series of routes from Via to Dest)
prop(_, route, Route),
prop(Route, stop, StopOfStart),
prop(Route, stop, StopOfVia),
dif(StopOfStart,StopOfVia),
prop(StopOfStart,location, Start),
prop(StopOfVia, location, Via),
dif(Start,Via),
%check if soonest bus at Start after StartTime
%gets to Via, and soones bus at Via after arrival
%get to Dest within MaxTime
prop(Route,vehicle,Vehicle),
prop(Vehicle, schedule, Schedule),
prop(Schedule, arrival, ArrivalOfStart),
prop(ArrivalOfStart, location, StopOfStart),
prop(ArrivalOfStart, time, TimeOfStopOfStart),
add(StartTime,StartTimeDiff,TimeOfStopOfStart),
StartTimeDiff >= 0,
prop(Schedule, arrival, ArrivalAtVia),
prop(ArrivalAtVia, location, StopOfVia),
prop(ArrivalAtVia, time, TimeOfStopOfVia),
add(StartTime,FirstHopMinutes,TimeOfStopOfVia),
FirstHopMinutes >= StartTimeDiff,
TimeLeft is MaxTime - FirstHopMinutes,
TimeLeft >= 0,
findRoutes(Via,Dest,TimeOfStopOfVia,TimeLeft,_,_,_,SecondHopMinutes),
JourneyMinutes is FirstHopMinutes + SecondHopMinutes,
JourneyMinutes =< MaxTime.

% line41 has westbound and eastbound routes.
prop(line41, route, westbound41).
prop(line41, route, eastbound41).

% line2 has westbound and eastbound routes.
prop(line2, route, westbound2).
prop(line2, route, eastbound2).

% the westbound41 route has stop stop0_w41 through stop15_w41.
prop(westbound41, stop, stop0_w41).
prop(westbound41, stop, stop1_w41).
prop(westbound41, stop, stop2_w41).
prop(westbound41, stop, stop3_w41).
prop(westbound41, stop, stop4_w41).
prop(westbound41, stop, stop5_w41).
prop(westbound41, stop, stop6_w41).
prop(westbound41, stop, stop7_w41).
prop(westbound41, stop, stop8_w41).
prop(westbound41, stop, stop9_w41).
prop(westbound41, stop, stop10_w41).
prop(westbound41, stop, stop11_w41).
prop(westbound41, stop, stop12_w41).
prop(westbound41, stop, stop13_w41).
prop(westbound41, stop, stop14_w41).
prop(westbound41, stop, stop15_w41).

% the eastbound41 route has stop stop0_e41 through stop15_e41.
prop(eastbound41, stop, stop0_e41).
prop(eastbound41, stop, stop1_e41).
prop(eastbound41, stop, stop2_e41).
prop(eastbound41, stop, stop3_e41).
prop(eastbound41, stop, stop4_e41).
prop(eastbound41, stop, stop5_e41).
prop(eastbound41, stop, stop6_e41).
prop(eastbound41, stop, stop7_e41).
prop(eastbound41, stop, stop8_e41).
prop(eastbound41, stop, stop9_e41).
prop(eastbound41, stop, stop10_e41).
prop(eastbound41, stop, stop11_e41).
prop(eastbound41, stop, stop12_e41).

% the westbound2 route has stop stop0_w2 through stop13_w2.
prop(westbound2, stop, stop0_w2).
prop(westbound2, stop, stop1_w2).
prop(westbound2, stop, stop2_w2).
prop(westbound2, stop, stop3_w2).
prop(westbound2, stop, stop4_w2).
prop(westbound2, stop, stop5_w2).
prop(westbound2, stop, stop6_w2).
prop(westbound2, stop, stop7_w2).
prop(westbound2, stop, stop8_w2).
prop(westbound2, stop, stop9_w2).
prop(westbound2, stop, stop10_w2).
prop(westbound2, stop, stop11_w2).
prop(westbound2, stop, stop12_w2).
prop(westbound2, stop, stop13_w2).

% the eastbound2 route has stop stop0_e2 through stop13_e2.
prop(eastbound2, stop, stop0_e2).
prop(eastbound2, stop, stop1_e2).
prop(eastbound2, stop, stop2_e2).
prop(eastbound2, stop, stop3_e2).
prop(eastbound2, stop, stop4_e2).
prop(eastbound2, stop, stop5_e2).
prop(eastbound2, stop, stop6_e2).
prop(eastbound2, stop, stop7_e2).
prop(eastbound2, stop, stop8_e2).
prop(eastbound2, stop, stop9_e2).
prop(eastbound2, stop, stop10_e2).
prop(eastbound2, stop, stop11_e2).
prop(eastbound2, stop, stop12_e2).
prop(eastbound2, stop, stop13_e2).

% stopn_w41 is at location x.
prop(stop0_w41, location, loc(joyce_station, bay4)).
prop(stop1_w41, location, loc(e41_ave, commercial_dr)).
prop(stop2_w41, location, loc(e41_ave, fraser_st)).
prop(stop3_w41, location, loc(e41_ave, main_st)).
prop(stop4_w41, location, loc(w41_ave, columbia_st)).
prop(stop5_w41, location, loc(w41_ave, cambie_st)).
prop(stop6_w41, location, loc(w41_ave, oak_st)).
prop(stop7_w41, location, loc(w41_ave, granville_st)).
prop(stop8_w41, location, loc(w41_ave, west_boulevard)).
prop(stop9_w41, location, loc(w41_ave, larch_st)).
prop(stop10_w41, location, loc(w41_ave, mackenzie_st)).
prop(stop11_w41, location, loc(w41_ave, blenheim_st)).
prop(stop12_w41, location, loc(w41_ave, dunbar_st)).
prop(stop13_w41, location, loc(westbrook_mall, birney_ave)).
prop(stop14_w41, location, loc(westbrook_mall, thunderbird_blvd)).
prop(stop15_w41, location, loc(ubc_loop, bay4)).

% stopn_e41 is at location x.
prop(stop0_e41, location, loc(ubc_loop, bay4)).
prop(stop1_e41, location, loc(w41_ave, dunbar_st)).
prop(stop2_e41, location, loc(w41_ave, blenheim_st)).
prop(stop3_e41, location, loc(w41_ave, mackenzie_st)).
prop(stop4_e41, location, loc(w41_ave, west_boulevard)).
prop(stop5_e41, location, loc(w41_ave, granville_st)).
prop(stop6_e41, location, loc(w41_ave, oak_st)).
prop(stop7_e41, location, loc(w41_ave, cambie_st)).
prop(stop8_e41, location, loc(w41_ave, columbia_st)).
prop(stop9_e41, location, loc(e41_ave, main_st)).
prop(stop10_e41, location, loc(e41_ave, fraser_st)).
prop(stop11_e41, location, loc(e41_ave, commercial_dr)).
prop(stop12_e41, location, loc(joyce_station, bay4)).

% stopn_w2 is at location x.
prop(stop0_w2, location, loc(burrard_station, bay4)).
prop(stop1_w2, location, loc(burrard_st, w_georgia_st)).
prop(stop2_w2, location, loc(burrard_st, robson_st)).
prop(stop3_w2, location, loc(burrard_st, nelson_st)).
prop(stop4_w2, location, loc(burrard_st, davie_st)).
prop(stop5_w2, location, loc(macdonald_st, w_broadway)).
prop(stop6_w2, location, loc(macdonald_st, w16_ave)).
prop(stop7_w2, location, loc(quesnel_dr, w_king_edward_ave)).
prop(stop8_w2, location, loc(mackenzie_st, w33_ave)).
prop(stop9_w2, location, loc(w41_ave, mackenzie_st)).
prop(stop10_w2, location, loc(w41_ave, carnarvon_st)).
prop(stop11_w2, location, loc(w41_ave, blenheim_st)).
prop(stop12_w2, location, loc(w41_ave, collingwood_st)).
prop(stop13_w2, location, loc(w41_ave, dunbar_loop)).

% stopn_e2 is at location x.
prop(stop0_e2, location, loc(w41_ave, dunbar_loop)).
prop(stop1_e2, location, loc(w41_ave, collingwood_st)).
prop(stop2_e2, location, loc(w41_ave, blenheim_st)).
prop(stop3_e2, location, loc(w41_ave, carnarvon_st)).
prop(stop4_e2, location, loc(w41_ave, mackenzie_st)).
prop(stop5_e2, location, loc(mackenzie_st, w33_ave)).
prop(stop6_e2, location, loc(quesnel_dr, w_king_edward_ave)).
prop(stop7_e2, location, loc(macdonald_st, w16_ave)).
prop(stop8_e2, location, loc(macdonald_st, w_broadway)).
prop(stop9_e2, location, loc(burrard_st, davie_st)).
prop(stop10_e2, location, loc(burrard_st, nelson_st)).
prop(stop11_e2, location, loc(burrard_st, robson_st)).
prop(stop12_e2, location, loc(burrard_st, w_georgia_st)).
prop(stop13_e2, location, loc(burrard_station, bay4)).


% the westbound41 route has busn_w41.
prop(westbound41, bus, bus0_w41).
prop(westbound41, bus, bus1_w41).
prop(westbound41, bus, bus2_w41).
prop(westbound41, bus, bus3_w41).
prop(westbound41, bus, bus4_w41).

% the eastbound41 route has busn_e41.
prop(eastbound41, bus, bus0_e41).
prop(eastbound41, bus, bus1_e41).
prop(eastbound41, bus, bus2_e41).
prop(eastbound41, bus, bus3_e41).
prop(eastbound41, bus, bus4_e41).

% the westbound2 route has busn_w2.
prop(westbound2, bus, bus0_w2).
prop(westbound2, bus, bus1_w2).
prop(westbound2, bus, bus2_w2).
prop(westbound2, bus, bus3_w2).
prop(westbound2, bus, bus4_w2).

% the eastbound2 route has busn_e2.
prop(eastbound2, bus, bus0_e2).
prop(eastbound2, bus, bus1_e2).
prop(eastbound2, bus, bus2_e2).
prop(eastbound2, bus, bus3_e2).
prop(eastbound2, bus, bus4_e2).


% every line41 buses has a schedule.
prop(bus0_w41, schedule, sched0_w41).
prop(bus1_w41, schedule, sched1_w41).
prop(bus2_w41, schedule, sched2_w41).
prop(bus3_w41, schedule, sched3_w41).
prop(bus4_w41, schedule, sched4_w41).

prop(bus0_e41, schedule, sched0_e41).
prop(bus1_e41, schedule, sched1_e41).
prop(bus2_e41, schedule, sched2_e41).
prop(bus3_e41, schedule, sched3_e41).
prop(bus4_w41, schedule, sched4_w41).

% every line2 buses has a schedule.
prop(bus0_w2, schedule, sched0_w2).
prop(bus1_w2, schedule, sched1_w2).
prop(bus2_w2, schedule, sched2_w2).
prop(bus3_w2, schedule, sched3_w2).
prop(bus4_w2, schedule, sched4_w2).

prop(bus0_e2, schedule, sched0_e2).
prop(bus1_e2, schedule, sched1_e2).
prop(bus2_e2, schedule, sched2_e2).
prop(bus3_e2, schedule, sched3_e2).
prop(bus4_e2, schedule, sched4_e2).

% each line41 schedule has a start time.
prop(sched0_w41, startTime, clock(12, 00)).
% schenn_w41 has an arrival at...
prop(sched0_w41, arrival, a0_sched0_w41).
prop(sched0_w41, arrival, a1_sched0_w41).
prop(sched0_w41, arrival, a2_sched0_w41).
prop(sched0_w41, arrival, a3_sched0_w41).
prop(sched0_w41, arrival, a4_sched0_w41).
prop(sched0_w41, arrival, a5_sched0_w41).
prop(sched0_w41, arrival, a6_sched0_w41).
prop(sched0_w41, arrival, a7_sched0_w41).
prop(sched0_w41, arrival, a8_sched0_w41).
prop(sched0_w41, arrival, a9_sched0_w41).
prop(sched0_w41, arrival, a10_sched0_w41).
prop(sched0_w41, arrival, a11_sched0_w41).
prop(sched0_w41, arrival, a12_sched0_w41).
prop(sched0_w41, arrival, a13_sched0_w41).
prop(sched0_w41, arrival, a14_sched0_w41).
prop(sched0_w41, arrival, a15_sched0_w41).

prop(sched1_w41, startTime, clock(13, 00)).
prop(sched1_w41, arrival, a0_sched1_w41).
prop(sched1_w41, arrival, a1_sched1_w41).
prop(sched1_w41, arrival, a2_sched1_w41).
prop(sched1_w41, arrival, a3_sched1_w41).
prop(sched1_w41, arrival, a4_sched1_w41).
prop(sched1_w41, arrival, a5_sched1_w41).
prop(sched1_w41, arrival, a6_sched1_w41).
prop(sched1_w41, arrival, a7_sched1_w41).
prop(sched1_w41, arrival, a8_sched1_w41).
prop(sched1_w41, arrival, a9_sched1_w41).
prop(sched1_w41, arrival, a10_sched1_w41).
prop(sched1_w41, arrival, a11_sched1_w41).
prop(sched1_w41, arrival, a12_sched1_w41).
prop(sched1_w41, arrival, a13_sched1_w41).
prop(sched1_w41, arrival, a14_sched1_w41).
prop(sched1_w41, arrival, a15_sched1_w41).

prop(sched2_w41, startTime, clock(14, 00)).
prop(sched2_w41, arrival, a0_sched2_w41).
prop(sched2_w41, arrival, a1_sched2_w41).
prop(sched2_w41, arrival, a2_sched2_w41).
prop(sched2_w41, arrival, a3_sched2_w41).
prop(sched2_w41, arrival, a4_sched2_w41).
prop(sched2_w41, arrival, a5_sched2_w41).
prop(sched2_w41, arrival, a6_sched2_w41).
prop(sched2_w41, arrival, a7_sched2_w41).
prop(sched2_w41, arrival, a8_sched2_w41).
prop(sched2_w41, arrival, a9_sched2_w41).
prop(sched2_w41, arrival, a10_sched2_w41).
prop(sched2_w41, arrival, a11_sched2_w41).
prop(sched2_w41, arrival, a12_sched2_w41).
prop(sched2_w41, arrival, a13_sched2_w41).
prop(sched2_w41, arrival, a14_sched2_w41).
prop(sched2_w41, arrival, a15_sched2_w41).

prop(sched3_w41, startTime, clock(15, 00)).
prop(sched3_w41, arrival, a0_sched3_w41).
prop(sched3_w41, arrival, a1_sched3_w41).
prop(sched3_w41, arrival, a2_sched3_w41).
prop(sched3_w41, arrival, a3_sched3_w41).
prop(sched3_w41, arrival, a4_sched3_w41).
prop(sched3_w41, arrival, a5_sched3_w41).
prop(sched3_w41, arrival, a6_sched3_w41).
prop(sched3_w41, arrival, a7_sched3_w41).
prop(sched3_w41, arrival, a8_sched3_w41).
prop(sched3_w41, arrival, a9_sched3_w41).
prop(sched3_w41, arrival, a10_sched3_w41).
prop(sched3_w41, arrival, a11_sched3_w41).
prop(sched3_w41, arrival, a12_sched3_w41).
prop(sched3_w41, arrival, a13_sched3_w41).
prop(sched3_w41, arrival, a14_sched3_w41).
prop(sched3_w41, arrival, a15_sched3_w41).

prop(sched4_w41, startTime, clock(16, 00)).
prop(sched4_w41, arrival, a0_sched4_w41).
prop(sched4_w41, arrival, a1_sched4_w41).
prop(sched4_w41, arrival, a2_sched4_w41).
prop(sched4_w41, arrival, a3_sched4_w41).
prop(sched4_w41, arrival, a4_sched4_w41).
prop(sched4_w41, arrival, a5_sched4_w41).
prop(sched4_w41, arrival, a6_sched4_w41).
prop(sched4_w41, arrival, a7_sched4_w41).
prop(sched4_w41, arrival, a8_sched4_w41).
prop(sched4_w41, arrival, a9_sched4_w41).
prop(sched4_w41, arrival, a10_sched4_w41).
prop(sched4_w41, arrival, a11_sched4_w41).
prop(sched4_w41, arrival, a12_sched4_w41).
prop(sched4_w41, arrival, a13_sched4_w41).
prop(sched4_w41, arrival, a14_sched4_w41).
prop(sched4_w41, arrival, a15_sched4_w41).

prop(sched0_e41, startTime, clock(12, 00)).
prop(sched0_e41, arrival, a0_sched0_e41).
prop(sched0_e41, arrival, a1_sched0_e41).
prop(sched0_e41, arrival, a2_sched0_e41).
prop(sched0_e41, arrival, a3_sched0_e41).
prop(sched0_e41, arrival, a4_sched0_e41).
prop(sched0_e41, arrival, a5_sched0_e41).
prop(sched0_e41, arrival, a6_sched0_e41).
prop(sched0_e41, arrival, a7_sched0_e41).
prop(sched0_e41, arrival, a8_sched0_e41).
prop(sched0_e41, arrival, a9_sched0_e41).
prop(sched0_e41, arrival, a10_sched0_e41).
prop(sched0_e41, arrival, a11_sched0_e41).
prop(sched0_e41, arrival, a12_sched0_e41).

prop(sched1_e41, startTime, clock(13, 00)).
prop(sched1_e41, arrival, a0_sched1_e41).
prop(sched1_e41, arrival, a1_sched1_e41).
prop(sched1_e41, arrival, a2_sched1_e41).
prop(sched1_e41, arrival, a3_sched1_e41).
prop(sched1_e41, arrival, a4_sched1_e41).
prop(sched1_e41, arrival, a5_sched1_e41).
prop(sched1_e41, arrival, a6_sched1_e41).
prop(sched1_e41, arrival, a7_sched1_e41).
prop(sched1_e41, arrival, a8_sched1_e41).
prop(sched1_e41, arrival, a9_sched1_e41).
prop(sched1_e41, arrival, a10_sched1_e41).
prop(sched1_e41, arrival, a11_sched1_e41).
prop(sched1_e41, arrival, a12_sched1_e41).

prop(sched2_e41, startTime, clock(14, 00)).
prop(sched2_e41, arrival, a0_sched2_e41).
prop(sched2_e41, arrival, a1_sched2_e41).
prop(sched2_e41, arrival, a2_sched2_e41).
prop(sched2_e41, arrival, a3_sched2_e41).
prop(sched2_e41, arrival, a4_sched2_e41).
prop(sched2_e41, arrival, a5_sched2_e41).
prop(sched2_e41, arrival, a6_sched2_e41).
prop(sched2_e41, arrival, a7_sched2_e41).
prop(sched2_e41, arrival, a8_sched2_e41).
prop(sched2_e41, arrival, a9_sched2_e41).
prop(sched2_e41, arrival, a10_sched2_e41).
prop(sched2_e41, arrival, a11_sched2_e41).
prop(sched2_e41, arrival, a12_sched2_e41).

prop(sched3_e41, startTime, clock(15, 00)).
prop(sched3_e41, arrival, a0_sched3_e41).
prop(sched3_e41, arrival, a1_sched3_e41).
prop(sched3_e41, arrival, a2_sched3_e41).
prop(sched3_e41, arrival, a3_sched3_e41).
prop(sched3_e41, arrival, a4_sched3_e41).
prop(sched3_e41, arrival, a5_sched3_e41).
prop(sched3_e41, arrival, a6_sched3_e41).
prop(sched3_e41, arrival, a7_sched3_e41).
prop(sched3_e41, arrival, a8_sched3_e41).
prop(sched3_e41, arrival, a9_sched3_e41).
prop(sched3_e41, arrival, a10_sched3_e41).
prop(sched3_e41, arrival, a11_sched3_e41).
prop(sched3_e41, arrival, a12_sched3_e41).

prop(sched4_e41, startTime, clock(16, 00)).
prop(sched4_e41, arrival, a0_sched4_e41).
prop(sched4_e41, arrival, a1_sched4_e41).
prop(sched4_e41, arrival, a2_sched4_e41).
prop(sched4_e41, arrival, a3_sched4_e41).
prop(sched4_e41, arrival, a4_sched4_e41).
prop(sched4_e41, arrival, a5_sched4_e41).
prop(sched4_e41, arrival, a6_sched4_e41).
prop(sched4_e41, arrival, a7_sched4_e41).
prop(sched4_e41, arrival, a8_sched4_e41).
prop(sched4_e41, arrival, a9_sched4_e41).
prop(sched4_e41, arrival, a10_sched4_e41).
prop(sched4_e41, arrival, a11_sched4_e41).
prop(sched4_e41, arrival, a12_sched4_e41).

% each line2 schedule has a start time.
prop(sched0_w2, startTime, clock(12, 30)).
prop(sched0_w2, arrival, a0_sched0_w2).
prop(sched0_w2, arrival, a1_sched0_w2).
prop(sched0_w2, arrival, a2_sched0_w2).
prop(sched0_w2, arrival, a3_sched0_w2).
prop(sched0_w2, arrival, a4_sched0_w2).
prop(sched0_w2, arrival, a5_sched0_w2).
prop(sched0_w2, arrival, a6_sched0_w2).
prop(sched0_w2, arrival, a7_sched0_w2).
prop(sched0_w2, arrival, a8_sched0_w2).
prop(sched0_w2, arrival, a9_sched0_w2).
prop(sched0_w2, arrival, a10_sched0_w2).
prop(sched0_w2, arrival, a11_sched0_w2).
prop(sched0_w2, arrival, a12_sched0_w2).
prop(sched0_w2, arrival, a13_sched0_w2).

prop(sched1_w2, startTime, clock(13, 30)).
prop(sched1_w2, arrival, a0_sched1_w2).
prop(sched1_w2, arrival, a1_sched1_w2).
prop(sched1_w2, arrival, a2_sched1_w2).
prop(sched1_w2, arrival, a3_sched1_w2).
prop(sched1_w2, arrival, a4_sched1_w2).
prop(sched1_w2, arrival, a5_sched1_w2).
prop(sched1_w2, arrival, a6_sched1_w2).
prop(sched1_w2, arrival, a7_sched1_w2).
prop(sched1_w2, arrival, a8_sched1_w2).
prop(sched1_w2, arrival, a9_sched1_w2).
prop(sched1_w2, arrival, a10_sched1_w2).
prop(sched1_w2, arrival, a11_sched1_w2).
prop(sched1_w2, arrival, a12_sched1_w2).
prop(sched1_w2, arrival, a13_sched1_w2).

prop(sched2_w2, startTime, clock(14, 30)).
prop(sched2_w2, arrival, a0_sched2_w2).
prop(sched2_w2, arrival, a1_sched2_w2).
prop(sched2_w2, arrival, a2_sched2_w2).
prop(sched2_w2, arrival, a3_sched2_w2).
prop(sched2_w2, arrival, a4_sched2_w2).
prop(sched2_w2, arrival, a5_sched2_w2).
prop(sched2_w2, arrival, a6_sched2_w2).
prop(sched2_w2, arrival, a7_sched2_w2).
prop(sched2_w2, arrival, a8_sched2_w2).
prop(sched2_w2, arrival, a9_sched2_w2).
prop(sched2_w2, arrival, a10_sched2_w2).
prop(sched2_w2, arrival, a11_sched2_w2).
prop(sched2_w2, arrival, a12_sched2_w2).
prop(sched2_w2, arrival, a13_sched2_w2).

prop(sched3_w2, startTime, clock(15, 30)).
prop(sched3_w2, arrival, a0_sched3_w2).
prop(sched3_w2, arrival, a1_sched3_w2).
prop(sched3_w2, arrival, a2_sched3_w2).
prop(sched3_w2, arrival, a3_sched3_w2).
prop(sched3_w2, arrival, a4_sched3_w2).
prop(sched3_w2, arrival, a5_sched3_w2).
prop(sched3_w2, arrival, a6_sched3_w2).
prop(sched3_w2, arrival, a7_sched3_w2).
prop(sched3_w2, arrival, a8_sched3_w2).
prop(sched3_w2, arrival, a9_sched3_w2).
prop(sched3_w2, arrival, a10_sched3_w2).
prop(sched3_w2, arrival, a11_sched3_w2).
prop(sched3_w2, arrival, a12_sched3_w2).
prop(sched3_w2, arrival, a13_sched3_w2).

prop(sched4_w2, startTime, clock(16, 30)).
prop(sched4_w2, arrival, a0_sched4_w2).
prop(sched4_w2, arrival, a1_sched4_w2).
prop(sched4_w2, arrival, a2_sched4_w2).
prop(sched4_w2, arrival, a3_sched4_w2).
prop(sched4_w2, arrival, a4_sched4_w2).
prop(sched4_w2, arrival, a5_sched4_w2).
prop(sched4_w2, arrival, a6_sched4_w2).
prop(sched4_w2, arrival, a7_sched4_w2).
prop(sched4_w2, arrival, a8_sched4_w2).
prop(sched4_w2, arrival, a9_sched4_w2).
prop(sched4_w2, arrival, a10_sched4_w2).
prop(sched4_w2, arrival, a11_sched4_w2).
prop(sched4_w2, arrival, a12_sched4_w2).
prop(sched4_w2, arrival, a13_sched4_w2).

prop(sched0_e2, startTime, clock(12, 30)).
prop(sched0_e2, arrival, a0_sched0_e2).
prop(sched0_e2, arrival, a1_sched0_e2).
prop(sched0_e2, arrival, a2_sched0_e2).
prop(sched0_e2, arrival, a3_sched0_e2).
prop(sched0_e2, arrival, a4_sched0_e2).
prop(sched0_e2, arrival, a5_sched0_e2).
prop(sched0_e2, arrival, a6_sched0_e2).
prop(sched0_e2, arrival, a7_sched0_e2).
prop(sched0_e2, arrival, a8_sched0_e2).
prop(sched0_e2, arrival, a9_sched0_e2).
prop(sched0_e2, arrival, a10_sched0_e2).
prop(sched0_e2, arrival, a11_sched0_e2).
prop(sched0_e2, arrival, a12_sched0_e2).
prop(sched0_e2, arrival, a13_sched0_e2).

prop(sched1_e2, startTime, clock(13, 30)).
prop(sched1_e2, arrival, a0_sched1_e2).
prop(sched1_e2, arrival, a1_sched1_e2).
prop(sched1_e2, arrival, a2_sched1_e2).
prop(sched1_e2, arrival, a3_sched1_e2).
prop(sched1_e2, arrival, a4_sched1_e2).
prop(sched1_e2, arrival, a5_sched1_e2).
prop(sched1_e2, arrival, a6_sched1_e2).
prop(sched1_e2, arrival, a7_sched1_e2).
prop(sched1_e2, arrival, a8_sched1_e2).
prop(sched1_e2, arrival, a9_sched1_e2).
prop(sched1_e2, arrival, a10_sched1_e2).
prop(sched1_e2, arrival, a11_sched1_e2).
prop(sched1_e2, arrival, a12_sched1_e2).
prop(sched1_e2, arrival, a13_sched1_e2).

prop(sched2_e2, startTime, clock(14, 30)).
prop(sched2_e2, arrival, a0_sched2_e2).
prop(sched2_e2, arrival, a1_sched2_e2).
prop(sched2_e2, arrival, a2_sched2_e2).
prop(sched2_e2, arrival, a3_sched2_e2).
prop(sched2_e2, arrival, a4_sched2_e2).
prop(sched2_e2, arrival, a5_sched2_e2).
prop(sched2_e2, arrival, a6_sched2_e2).
prop(sched2_e2, arrival, a7_sched2_e2).
prop(sched2_e2, arrival, a8_sched2_e2).
prop(sched2_e2, arrival, a9_sched2_e2).
prop(sched2_e2, arrival, a10_sched2_e2).
prop(sched2_e2, arrival, a11_sched2_e2).
prop(sched2_e2, arrival, a12_sched2_e2).
prop(sched2_e2, arrival, a13_sched2_e2).

prop(sched3_e2, startTime, clock(15, 30)).
prop(sched3_e2, arrival, a0_sched3_e2).
prop(sched3_e2, arrival, a1_sched3_e2).
prop(sched3_e2, arrival, a2_sched3_e2).
prop(sched3_e2, arrival, a3_sched3_e2).
prop(sched3_e2, arrival, a4_sched3_e2).
prop(sched3_e2, arrival, a5_sched3_e2).
prop(sched3_e2, arrival, a6_sched3_e2).
prop(sched3_e2, arrival, a7_sched3_e2).
prop(sched3_e2, arrival, a8_sched3_e2).
prop(sched3_e2, arrival, a9_sched3_e2).
prop(sched3_e2, arrival, a10_sched3_e2).
prop(sched3_e2, arrival, a11_sched3_e2).
prop(sched3_e2, arrival, a12_sched3_e2).
prop(sched3_e2, arrival, a13_sched3_e2).

prop(sched4_e2, startTime, clock(16, 30)).
prop(sched4_e2, arrival, a0_sched4_e2).
prop(sched4_e2, arrival, a1_sched4_e2).
prop(sched4_e2, arrival, a2_sched4_e2).
prop(sched4_e2, arrival, a3_sched4_e2).
prop(sched4_e2, arrival, a4_sched4_e2).
prop(sched4_e2, arrival, a5_sched4_e2).
prop(sched4_e2, arrival, a6_sched4_e2).
prop(sched4_e2, arrival, a7_sched4_e2).
prop(sched4_e2, arrival, a8_sched4_e2).
prop(sched4_e2, arrival, a9_sched4_e2).
prop(sched4_e2, arrival, a10_sched4_e2).
prop(sched4_e2, arrival, a11_sched4_e2).
prop(sched4_e2, arrival, a12_sched4_e2).
prop(sched4_e2, arrival, a13_sched4_e2).

% an_sched0_w41 is at stopm_w41...
prop(a0_sched0_w41, location, stop0_w41).
prop(a0_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,0,N).
prop(a1_sched0_w41, location, stop1_w41).
prop(a1_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,1,N).
prop(a2_sched0_w41, location, stop2_w41).
prop(a2_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,2,N).
prop(a3_sched0_w41, location, stop3_w41).
prop(a3_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,3,N).
prop(a4_sched0_w41, location, stop4_w41).
prop(a4_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,4,N).
prop(a5_sched0_w41, location, stop5_w41).
prop(a5_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,6,N).
prop(a6_sched0_w41, location, stop6_w41).
prop(a6_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,7,N).
prop(a7_sched0_w41, location, stop7_w41).
prop(a7_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,9,N).
prop(a8_sched0_w41, location, stop8_w41).
prop(a8_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,10,N).
prop(a9_sched0_w41, location, stop9_w41).
prop(a9_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,13,N).
prop(a10_sched0_w41, location, stop10_w41).
prop(a10_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,14,N).
prop(a11_sched0_w41, location, stop11_w41).
prop(a11_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,19,N).
prop(a12_sched0_w41, location, stop12_w41).
prop(a12_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,21,N).
prop(a13_sched0_w41, location, stop13_w41).
prop(a13_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,34,N).
prop(a14_sched0_w41, location, stop14_w41).
prop(a14_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,39,N).
prop(a15_sched0_w41, location, stop15_w41).
prop(a15_sched0_w41, time, N) :- prop(sched0_w41, startTime, Y), add(Y,41,N).

% an_sched1_w41 is at stopm_w41...
prop(a0_sched1_w41, location, stop0_w41).
prop(a0_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,0,N).
prop(a1_sched1_w41, location, stop1_w41).
prop(a1_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,1,N).
prop(a2_sched1_w41, location, stop2_w41).
prop(a2_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,2,N).
prop(a3_sched1_w41, location, stop3_w41).
prop(a3_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,3,N).
prop(a4_sched1_w41, location, stop4_w41).
prop(a4_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,4,N).
prop(a5_sched1_w41, location, stop5_w41).
prop(a5_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,6,N).
prop(a6_sched1_w41, location, stop6_w41).
prop(a6_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,7,N).
prop(a7_sched1_w41, location, stop7_w41).
prop(a7_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,9,N).
prop(a8_sched1_w41, location, stop8_w41).
prop(a8_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,10,N).
prop(a9_sched1_w41, location, stop9_w41).
prop(a9_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,13,N).
prop(a10_sched1_w41, location, stop10_w41).
prop(a10_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,14,N).
prop(a11_sched1_w41, location, stop11_w41).
prop(a11_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,19,N).
prop(a12_sched1_w41, location, stop12_w41).
prop(a12_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,21,N).
prop(a13_sched1_w41, location, stop13_w41).
prop(a13_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,34,N).
prop(a14_sched1_w41, location, stop14_w41).
prop(a14_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,39,N).
prop(a15_sched1_w41, location, stop15_w41).
prop(a15_sched1_w41, time, N) :- prop(sched1_w41, startTime, Y), add(Y,41,N).

% an_sched2_w41 is at stopm_w41...
prop(a0_sched2_w41, location, stop0_w41).
prop(a0_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,0,N).
prop(a1_sched2_w41, location, stop1_w41).
prop(a1_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,1,N).
prop(a2_sched2_w41, location, stop2_w41).
prop(a2_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,2,N).
prop(a3_sched2_w41, location, stop3_w41).
prop(a3_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,3,N).
prop(a4_sched2_w41, location, stop4_w41).
prop(a4_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,4,N).
prop(a5_sched2_w41, location, stop5_w41).
prop(a5_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,6,N).
prop(a6_sched2_w41, location, stop6_w41).
prop(a6_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,7,N).
prop(a7_sched2_w41, location, stop7_w41).
prop(a7_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,9,N).
prop(a8_sched2_w41, location, stop8_w41).
prop(a8_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,10,N).
prop(a9_sched2_w41, location, stop9_w41).
prop(a9_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,13,N).
prop(a10_sched2_w41, location, stop10_w41).
prop(a10_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,14,N).
prop(a11_sched2_w41, location, stop11_w41).
prop(a11_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,0,N).
prop(a12_sched2_w41, location, stop12_w41).
prop(a12_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,21,N).
prop(a13_sched2_w41, location, stop13_w41).
prop(a13_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,34,N).
prop(a14_sched2_w41, location, stop14_w41).
prop(a14_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,39,N).
prop(a15_sched2_w41, location, stop15_w41).
prop(a15_sched2_w41, time, N) :- prop(sched2_w41, startTime, Y), add(Y,41,N).

% an_sched3_w41 is at stopm_w41...
prop(a0_sched3_w41, location, stop0_w41).
prop(a0_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,0,N).
prop(a1_sched3_w41, location, stop1_w41).
prop(a1_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,1,N).
prop(a2_sched3_w41, location, stop2_w41).
prop(a2_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,2,N).
prop(a3_sched3_w41, location, stop3_w41).
prop(a3_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,3,N).
prop(a4_sched3_w41, location, stop4_w41).
prop(a4_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,4,N).
prop(a5_sched3_w41, location, stop5_w41).
prop(a5_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,6,N).
prop(a6_sched3_w41, location, stop6_w41).
prop(a6_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,7,N).
prop(a7_sched3_w41, location, stop7_w41).
prop(a7_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,9,N).
prop(a8_sched3_w41, location, stop8_w41).
prop(a8_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,10,N).
prop(a9_sched3_w41, location, stop9_w41).
prop(a9_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,13,N).
prop(a10_sched3_w41, location, stop10_w41).
prop(a10_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,14,N).
prop(a11_sched3_w41, location, stop11_w41).
prop(a11_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,19,N).
prop(a12_sched3_w41, location, stop12_w41).
prop(a12_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,21,N).
prop(a13_sched3_w41, location, stop13_w41).
prop(a13_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,34,N).
prop(a14_sched3_w41, location, stop14_w41).
prop(a14_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,39,N).
prop(a15_sched3_w41, location, stop15_w41).
prop(a15_sched3_w41, time, N) :- prop(sched3_w41, startTime, Y), add(Y,41,N).

% an_sched4_w41 is at stopm_w41...
prop(a0_sched4_w41, location, stop0_w41).
prop(a0_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,0,N).
prop(a1_sched4_w41, location, stop1_w41).
prop(a1_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,1,N).
prop(a2_sched4_w41, location, stop2_w41).
prop(a2_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,2,N).
prop(a3_sched4_w41, location, stop3_w41).
prop(a3_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,3,N).
prop(a4_sched4_w41, location, stop4_w41).
prop(a4_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,4,N).
prop(a5_sched4_w41, location, stop5_w41).
prop(a5_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,6,N).
prop(a6_sched4_w41, location, stop6_w41).
prop(a6_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,7,N).
prop(a7_sched4_w41, location, stop7_w41).
prop(a7_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,9,N).
prop(a8_sched4_w41, location, stop8_w41).
prop(a8_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,10,N).
prop(a9_sched4_w41, location, stop9_w41).
prop(a9_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,13,N).
prop(a10_sched4_w41, location, stop10_w41).
prop(a10_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,14,N).
prop(a11_sched4_w41, location, stop11_w41).
prop(a11_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,19,N).
prop(a12_sched4_w41, location, stop12_w41).
prop(a12_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,21,N).
prop(a13_sched4_w41, location, stop13_w41).
prop(a13_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,34,N).
prop(a14_sched4_w41, location, stop14_w41).
prop(a14_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,39,N).
prop(a15_sched4_w41, location, stop15_w41).
prop(a15_sched4_w41, time, N) :- prop(sched4_w41, startTime, Y), add(Y,41,N).

% an_sched0_e41 is at stopm_e41...
prop(a0_sched0_e41, location, stop0_w41).
prop(a0_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,0,N).
prop(a1_sched0_e41, location, stop1_e41).
prop(a1_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,2,N).
prop(a2_sched0_e41, location, stop2_e41).
prop(a2_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,6,N).
prop(a3_sched0_e41, location, stop3_e41).
prop(a3_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,10,N).
prop(a4_sched0_e41, location, stop4_e41).
prop(a4_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,12,N).
prop(a5_sched0_e41, location, stop5_e41).
prop(a5_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,15,N).
prop(a6_sched0_e41, location, stop6_e41).
prop(a6_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,20,N).
prop(a7_sched0_e41, location, stop7_e41).
prop(a7_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,22,N).
prop(a8_sched0_e41, location, stop8_e41).
prop(a8_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,26,N).
prop(a9_sched0_e41, location, stop9_e41).
prop(a9_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,28,N).
prop(a10_sched0_e41, location, stop10_e41).
prop(a10_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,30,N).
prop(a11_sched0_e41, location, stop11_e41).
prop(a11_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,31,N).
prop(a12_sched0_e41, location, stop12_e41).
prop(a12_sched0_e41, time, N) :- prop(sched0_e41, startTime, Y), add(Y,33,N).

% an_sched1_e41 is at stopm_e41...
prop(a0_sched1_e41, location, stop0_w41).
prop(a0_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,0,N).
prop(a1_sched1_e41, location, stop1_e41).
prop(a1_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,2,N).
prop(a2_sched1_e41, location, stop2_e41).
prop(a2_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,6,N).
prop(a3_sched1_e41, location, stop3_e41).
prop(a3_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,10,N).
prop(a4_sched1_e41, location, stop4_e41).
prop(a4_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,12,N).
prop(a5_sched1_e41, location, stop5_e41).
prop(a5_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,15,N).
prop(a6_sched1_e41, location, stop6_e41).
prop(a6_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,20,N).
prop(a7_sched1_e41, location, stop7_e41).
prop(a7_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,22,N).
prop(a8_sched1_e41, location, stop8_e41).
prop(a8_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,26,N).
prop(a9_sched1_e41, location, stop9_e41).
prop(a9_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,28,N).
prop(a10_sched1_e41, location, stop10_e41).
prop(a10_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,30,N).
prop(a11_sched1_e41, location, stop11_e41).
prop(a11_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,31,N).
prop(a12_sched1_e41, location, stop12_e41).
prop(a12_sched1_e41, time, N) :- prop(sched1_e41, startTime, Y), add(Y,33,N).

% an_sched2_e41 is at stopm_e41...
prop(a0_sched2_e41, location, stop0_w41).
prop(a0_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,0,N).
prop(a1_sched2_e41, location, stop1_e41).
prop(a1_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,2,N).
prop(a2_sched2_e41, location, stop2_e41).
prop(a2_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,6,N).
prop(a3_sched2_e41, location, stop3_e41).
prop(a3_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,10,N).
prop(a4_sched2_e41, location, stop4_e41).
prop(a4_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,12,N).
prop(a5_sched2_e41, location, stop5_e41).
prop(a5_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,15,N).
prop(a6_sched2_e41, location, stop6_e41).
prop(a6_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,20,N).
prop(a7_sched2_e41, location, stop7_e41).
prop(a7_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,22,N).
prop(a8_sched2_e41, location, stop8_e41).
prop(a8_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,26,N).
prop(a9_sched2_e41, location, stop9_e41).
prop(a9_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,28,N).
prop(a10_sched2_e41, location, stop10_e41).
prop(a10_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,30,N).
prop(a11_sched2_e41, location, stop11_e41).
prop(a11_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,31,N).
prop(a12_sched2_e41, location, stop12_e41).
prop(a12_sched2_e41, time, N) :- prop(sched2_e41, startTime, Y), add(Y,33,N).

% an_sched3_e41 is at stopm_e41...
prop(a0_sched3_e41, location, stop0_w41).
prop(a0_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,0,N).
prop(a1_sched3_e41, location, stop1_e41).
prop(a1_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,2,N).
prop(a2_sched3_e41, location, stop2_e41).
prop(a2_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,6,N).
prop(a3_sched3_e41, location, stop3_e41).
prop(a3_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,10,N).
prop(a4_sched3_e41, location, stop4_e41).
prop(a4_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,12,N).
prop(a5_sched3_e41, location, stop5_e41).
prop(a5_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,15,N).
prop(a6_sched3_e41, location, stop6_e41).
prop(a6_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,20,N).
prop(a7_sched3_e41, location, stop7_e41).
prop(a7_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,22,N).
prop(a8_sched3_e41, location, stop8_e41).
prop(a8_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,26,N).
prop(a9_sched3_e41, location, stop9_e41).
prop(a9_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,28,N).
prop(a10_sched3_e41, location, stop10_e41).
prop(a10_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,30,N).
prop(a11_sched3_e41, location, stop11_e41).
prop(a11_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,31,N).
prop(a12_sched3_e41, location, stop12_e41).
prop(a12_sched3_e41, time, N) :- prop(sched3_e41, startTime, Y), add(Y,33,N).

% an_sched4_e41 is at stopm_e41...
prop(a0_sched4_e41, location, stop0_w41).
prop(a0_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,0,N).
prop(a1_sched4_e41, location, stop1_e41).
prop(a1_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,2,N).
prop(a2_sched4_e41, location, stop2_e41).
prop(a2_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,6,N).
prop(a3_sched4_e41, location, stop3_e41).
prop(a3_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,10,N).
prop(a4_sched4_e41, location, stop4_e41).
prop(a4_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,12,N).
prop(a5_sched4_e41, location, stop5_e41).
prop(a5_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,15,N).
prop(a6_sched4_e41, location, stop6_e41).
prop(a6_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,20,N).
prop(a7_sched4_e41, location, stop7_e41).
prop(a7_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,22,N).
prop(a8_sched4_e41, location, stop8_e41).
prop(a8_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,26,N).
prop(a9_sched4_e41, location, stop9_e41).
prop(a9_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,28,N).
prop(a10_sched4_e41, location, stop10_e41).
prop(a10_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,30,N).
prop(a11_sched4_e41, location, stop11_e41).
prop(a11_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,31,N).
prop(a12_sched4_e41, location, stop12_e41).
prop(a12_sched4_e41, time, N) :- prop(sched4_e41, startTime, Y), add(Y,33,N).

% an_sched0_w2 is at stopm_w2...
prop(a0_sched0_w2, location, stop0_w2).
prop(a0_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,0,N).
prop(a1_sched0_w2, location, stop1_w2).
prop(a1_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,2,N).
prop(a2_sched0_w2, location, stop2_w2).
prop(a2_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,4,N).
prop(a3_sched0_w2, location, stop3_w2).
prop(a3_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,7,N).
prop(a4_sched0_w2, location, stop4_w2).
prop(a4_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,9,N).
prop(a5_sched0_w2, location, stop5_w2).
prop(a5_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,10,N).
prop(a6_sched0_w2, location, stop6_w2).
prop(a6_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,13,N).
prop(a7_sched0_w2, location, stop7_w2).
prop(a7_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,19,N).
prop(a8_sched0_w2, location, stop8_w2).
prop(a8_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,23,N).
prop(a9_sched0_w2, location, stop9_w2).
prop(a9_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,26,N).
prop(a10_sched0_w2, location, stop10_w2).
prop(a10_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,28,N).
prop(a11_sched0_w2, location, stop11_w2).
prop(a11_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,33,N).
prop(a12_sched0_w2, location, stop12_w2).
prop(a12_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,35,N).
prop(a13_sched0_w2, location, stop13_w2).
prop(a13_sched0_w2, time, N) :- prop(sched0_w2, startTime, Y), add(Y,36,N).

% an_sched1_w2 is at stopm_w2...
prop(a0_sched1_w2, location, stop0_w2).
prop(a0_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,0,N).
prop(a1_sched1_w2, location, stop1_w2).
prop(a1_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,2,N).
prop(a2_sched1_w2, location, stop2_w2).
prop(a2_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,4,N).
prop(a3_sched1_w2, location, stop3_w2).
prop(a3_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,7,N).
prop(a4_sched1_w2, location, stop4_w2).
prop(a4_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,9,N).
prop(a5_sched1_w2, location, stop5_w2).
prop(a5_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,10,N).
prop(a6_sched1_w2, location, stop6_w2).
prop(a6_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,13,N).
prop(a7_sched1_w2, location, stop7_w2).
prop(a7_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,19,N).
prop(a8_sched1_w2, location, stop8_w2).
prop(a8_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,23,N).
prop(a9_sched1_w2, location, stop9_w2).
prop(a9_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,26,N).
prop(a10_sched1_w2, location, stop10_w2).
prop(a10_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,28,N).
prop(a11_sched1_w2, location, stop11_w2).
prop(a11_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,33,N).
prop(a12_sched1_w2, location, stop12_w2).
prop(a12_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,35,N).
prop(a13_sched1_w2, location, stop13_w2).
prop(a13_sched1_w2, time, N) :- prop(sched1_w2, startTime, Y), add(Y,36,N).

% an_sched2_w2 is at stopm_w2...
prop(a0_sched2_w2, location, stop0_w2).
prop(a0_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,0,N).
prop(a1_sched2_w2, location, stop1_w2).
prop(a1_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,2,N).
prop(a2_sched2_w2, location, stop2_w2).
prop(a2_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,4,N).
prop(a3_sched2_w2, location, stop3_w2).
prop(a3_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,7,N).
prop(a4_sched2_w2, location, stop4_w2).
prop(a4_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,9,N).
prop(a5_sched2_w2, location, stop5_w2).
prop(a5_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,10,N).
prop(a6_sched2_w2, location, stop6_w2).
prop(a6_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,13,N).
prop(a7_sched2_w2, location, stop7_w2).
prop(a7_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,19,N).
prop(a8_sched2_w2, location, stop8_w2).
prop(a8_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,23,N).
prop(a9_sched2_w2, location, stop9_w2).
prop(a9_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,26,N).
prop(a10_sched2_w2, location, stop10_w2).
prop(a10_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,28,N).
prop(a11_sched2_w2, location, stop11_w2).
prop(a11_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,33,N).
prop(a12_sched2_w2, location, stop12_w2).
prop(a12_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,35,N).
prop(a13_sched2_w2, location, stop13_w2).
prop(a13_sched2_w2, time, N) :- prop(sched2_w2, startTime, Y), add(Y,36,N).

% an_sched3_w2 is at stopm_w2...
prop(a0_sched3_w2, location, stop0_w2).
prop(a0_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,0,N).
prop(a1_sched3_w2, location, stop1_w2).
prop(a1_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,2,N).
prop(a2_sched3_w2, location, stop2_w2).
prop(a2_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,4,N).
prop(a3_sched3_w2, location, stop3_w2).
prop(a3_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,7,N).
prop(a4_sched3_w2, location, stop4_w2).
prop(a4_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,9,N).
prop(a5_sched3_w2, location, stop5_w2).
prop(a5_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,10,N).
prop(a6_sched3_w2, location, stop6_w2).
prop(a6_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,13,N).
prop(a7_sched3_w2, location, stop7_w2).
prop(a7_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,19,N).
prop(a8_sched3_w2, location, stop8_w2).
prop(a8_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,23,N).
prop(a9_sched3_w2, location, stop9_w2).
prop(a9_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,26,N).
prop(a10_sched3_w2, location, stop10_w2).
prop(a10_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,28,N).
prop(a11_sched3_w2, location, stop11_w2).
prop(a11_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,33,N).
prop(a12_sched3_w2, location, stop12_w2).
prop(a12_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,35,N).
prop(a13_sched3_w2, location, stop13_w2).
prop(a13_sched3_w2, time, N) :- prop(sched3_w2, startTime, Y), add(Y,36,N).

% an_sched4_w2 is at stopm_w2...
prop(a0_sched4_w2, location, stop0_w2).
prop(a0_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,0,N).
prop(a1_sched4_w2, location, stop1_w2).
prop(a1_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,2,N).
prop(a2_sched4_w2, location, stop2_w2).
prop(a2_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,4,N).
prop(a3_sched4_w2, location, stop3_w2).
prop(a3_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,7,N).
prop(a4_sched4_w2, location, stop4_w2).
prop(a4_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,9,N).
prop(a5_sched4_w2, location, stop5_w2).
prop(a5_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,10,N).
prop(a6_sched4_w2, location, stop6_w2).
prop(a6_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,13,N).
prop(a7_sched4_w2, location, stop7_w2).
prop(a7_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,19,N).
prop(a8_sched4_w2, location, stop8_w2).
prop(a8_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,23,N).
prop(a9_sched4_w2, location, stop9_w2).
prop(a9_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,26,N).
prop(a10_sched4_w2, location, stop10_w2).
prop(a10_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,28,N).
prop(a11_sched4_w2, location, stop11_w2).
prop(a11_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,33,N).
prop(a12_sched4_w2, location, stop12_w2).
prop(a12_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,35,N).
prop(a13_sched4_w2, location, stop13_w2).
prop(a13_sched4_w2, time, N) :- prop(sched4_w2, startTime, Y), add(Y,36,N).

% an_sched0_e2 is at stopm_e2...
prop(a0_sched0_e2, location, stop0_w2).
prop(a0_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,0,N).
prop(a1_sched0_e2, location, stop1_w2).
prop(a1_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,1,N).
prop(a2_sched0_e2, location, stop2_w2).
prop(a2_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,3,N).
prop(a3_sched0_e2, location, stop3_w2).
prop(a3_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,5,N).
prop(a4_sched0_e2, location, stop4_w2).
prop(a4_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,7,N).
prop(a5_sched0_e2, location, stop5_w2).
prop(a5_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,11,N).
prop(a6_sched0_e2, location, stop6_w2).
prop(a6_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,15,N).
prop(a7_sched0_e2, location, stop7_w2).
prop(a7_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,20,N).
prop(a8_sched0_e2, location, stop8_w2).
prop(a8_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,22,N).
prop(a9_sched0_e2, location, stop9_w2).
prop(a9_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,28,N).
prop(a10_sched0_e2, location, stop10_w2).
prop(a10_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,30,N).
prop(a11_sched0_e2, location, stop11_w2).
prop(a11_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,33,N).
prop(a12_sched0_e2, location, stop12_w2).
prop(a12_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,35,N).
prop(a13_sched0_e2, location, stop13_w2).
prop(a13_sched0_e2, time, N) :- prop(sched0_e2, startTime, Y), add(Y,36,N).

% an_sched1_e2 is at stopm_e2...
prop(a0_sched1_e2, location, stop0_w2).
prop(a0_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,0,N).
prop(a1_sched1_e2, location, stop1_w2).
prop(a1_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,1,N).
prop(a2_sched1_e2, location, stop2_w2).
prop(a2_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,3,N).
prop(a3_sched1_e2, location, stop3_w2).
prop(a3_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,5,N).
prop(a4_sched1_e2, location, stop4_w2).
prop(a4_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,7,N).
prop(a5_sched1_e2, location, stop5_w2).
prop(a5_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,11,N).
prop(a6_sched1_e2, location, stop6_w2).
prop(a6_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,15,N).
prop(a7_sched1_e2, location, stop7_w2).
prop(a7_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,20,N).
prop(a8_sched1_e2, location, stop8_w2).
prop(a8_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,22,N).
prop(a9_sched1_e2, location, stop9_w2).
prop(a9_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,28,N).
prop(a10_sched1_e2, location, stop10_w2).
prop(a10_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,30,N).
prop(a11_sched1_e2, location, stop11_w2).
prop(a11_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,33,N).
prop(a12_sched1_e2, location, stop12_w2).
prop(a12_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,35,N).
prop(a13_sched1_e2, location, stop13_w2).
prop(a13_sched1_e2, time, N) :- prop(sched1_e2, startTime, Y), add(Y,36,N).

% an_sched2_e2 is at stopm_e2...
prop(a0_sched2_e2, location, stop0_w2).
prop(a0_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,0,N).
prop(a1_sched2_e2, location, stop1_w2).
prop(a1_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,1,N).
prop(a2_sched2_e2, location, stop2_w2).
prop(a2_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,3,N).
prop(a3_sched2_e2, location, stop3_w2).
prop(a3_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,5,N).
prop(a4_sched2_e2, location, stop4_w2).
prop(a4_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,7,N).
prop(a5_sched2_e2, location, stop5_w2).
prop(a5_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,11,N).
prop(a6_sched2_e2, location, stop6_w2).
prop(a6_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,15,N).
prop(a7_sched2_e2, location, stop7_w2).
prop(a7_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,20,N).
prop(a8_sched2_e2, location, stop8_w2).
prop(a8_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,22,N).
prop(a9_sched2_e2, location, stop9_w2).
prop(a9_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,28,N).
prop(a10_sched2_e2, location, stop10_w2).
prop(a10_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,30,N).
prop(a11_sched2_e2, location, stop11_w2).
prop(a11_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,33,N).
prop(a12_sched2_e2, location, stop12_w2).
prop(a12_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,35,N).
prop(a13_sched2_e2, location, stop13_w2).
prop(a13_sched2_e2, time, N) :- prop(sched2_e2, startTime, Y), add(Y,36,N).

% an_sched3_e2 is at stopm_e2...
prop(a0_sched3_e2, location, stop0_w2).
prop(a0_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,0,N).
prop(a1_sched3_e2, location, stop1_w2).
prop(a1_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,1,N).
prop(a2_sched3_e2, location, stop2_w2).
prop(a2_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,3,N).
prop(a3_sched3_e2, location, stop3_w2).
prop(a3_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,5,N).
prop(a4_sched3_e2, location, stop4_w2).
prop(a4_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,7,N).
prop(a5_sched3_e2, location, stop5_w2).
prop(a5_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,11,N).
prop(a6_sched3_e2, location, stop6_w2).
prop(a6_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,15,N).
prop(a7_sched3_e2, location, stop7_w2).
prop(a7_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,20,N).
prop(a8_sched3_e2, location, stop8_w2).
prop(a8_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,22,N).
prop(a9_sched3_e2, location, stop9_w2).
prop(a9_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,28,N).
prop(a10_sched3_e2, location, stop10_w2).
prop(a10_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,30,N).
prop(a11_sched3_e2, location, stop11_w2).
prop(a11_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,33,N).
prop(a12_sched3_e2, location, stop12_w2).
prop(a12_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,35,N).
prop(a13_sched3_e2, location, stop13_w2).
prop(a13_sched3_e2, time, N) :- prop(sched3_e2, startTime, Y), add(Y,36,N).

% an_sched4_e2 is at stopm_e2...
prop(a0_sched4_e2, location, stop0_w2).
prop(a0_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,0,N).
prop(a1_sched4_e2, location, stop1_w2).
prop(a1_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,1,N).
prop(a2_sched4_e2, location, stop2_w2).
prop(a2_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,3,N).
prop(a3_sched4_e2, location, stop3_w2).
prop(a3_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,5,N).
prop(a4_sched4_e2, location, stop4_w2).
prop(a4_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,7,N).
prop(a5_sched4_e2, location, stop5_w2).
prop(a5_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,11,N).
prop(a6_sched4_e2, location, stop6_w2).
prop(a6_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,15,N).
prop(a7_sched4_e2, location, stop7_w2).
prop(a7_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,20,N).
prop(a8_sched4_e2, location, stop8_w2).
prop(a8_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,22,N).
prop(a9_sched4_e2, location, stop9_w2).
prop(a9_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,28,N).
prop(a10_sched4_e2, location, stop10_w2).
prop(a10_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,30,N).
prop(a11_sched4_e2, location, stop11_w2).
prop(a11_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,33,N).
prop(a12_sched4_e2, location, stop12_w2).
prop(a12_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,35,N).
prop(a13_sched4_e2, location, stop13_w2).
prop(a13_sched4_e2, time, N) :- prop(sched4_e2, startTime, Y), add(Y,36,N).

%canadaline has northbound and southbound routes
prop(canadaline, route, northboundcl).
prop(canadaline, route, southboundcl).

%the northbound route has stops stop0_ncl through stop15_ncl
prop(northboundcl, stop, stop0_ncl).
prop(northboundcl, stop, stop1_ncl).
prop(northboundcl, stop, stop2_ncl).
prop(northboundcl, stop, stop3_ncl).
prop(northboundcl, stop, stop4_ncl).
prop(northboundcl, stop, stop5_ncl).
prop(northboundcl, stop, stop6_ncl).
prop(northboundcl, stop, stop7_ncl).
prop(northboundcl, stop, stop8_ncl).
prop(northboundcl, stop, stop9_ncl).
prop(northboundcl, stop, stop10_ncl).
prop(northboundcl, stop, stop11_ncl).
prop(northboundcl, stop, stop12_ncl).
prop(northboundcl, stop, stop13_ncl).
prop(northboundcl, stop, stop14_ncl).
prop(northboundcl, stop, stop15_ncl).

%the eastbound route has stops stop0_scl through stop15_scl
prop(southboundcl, stop, stop0_scl).
prop(southboundcl, stop, stop1_scl).
prop(southboundcl, stop, stop2_scl).
prop(southboundcl, stop, stop3_scl).
prop(southboundcl, stop, stop4_scl).
prop(southboundcl, stop, stop5_scl).
prop(southboundcl, stop, stop6_scl).
prop(southboundcl, stop, stop7_scl).
prop(southboundcl, stop, stop8_scl).
prop(southboundcl, stop, stop9_scl).
prop(southboundcl, stop, stop10_scl).
prop(southboundcl, stop, stop11_scl).
prop(southboundcl, stop, stop12_scl).
prop(southboundcl, stop, stop13_scl).
prop(southboundcl, stop, stop14_scl).
prop(southboundcl, stop, stop15_scl).

%stopn_ncl is at x...
prop(stop0_ncl, location, loc(sea_island, yvr_airport)).
prop(stop1_ncl, location, loc(sea_island, sea_island_centre)).
prop(stop2_ncl, location, loc(sea_island, templeton)).
prop(stop3_ncl, location, loc(no_3_rd, brighouse)).
prop(stop4_ncl, location, loc(no_3_rd, lansdowne)).
prop(stop5_ncl, location, loc(no_3_rd, aberdeen)).
prop(stop6_ncl, location, loc(no_3_rd, bridgeport)).
prop(stop7_ncl, location, loc(cambie_st, marine_drive)).
prop(stop8_ncl, location, loc(cambie_st, langara)).
prop(stop9_ncl, location, loc(w41_ave, cambie_st)).
prop(stop10_ncl, location, loc(cambie_st, king_edward)).
prop(stop11_ncl, location, loc(cambie_st, broadway_city_hall)).
prop(stop12_ncl, location, loc(cambie_st, olympic_village)).
prop(stop13_ncl, location, loc(yaletown, roundhouse)).
prop(stop14_ncl, location, loc(downtown, vancouver_city_centre)).
prop(stop15_ncl, location, loc(downtown, waterfront)).

%stopn_scl is at x...
prop(stop0_scl, location, loc(downtown, waterfront)).
prop(stop1_scl, location, loc(downtown, vancouver_city_centre)).
prop(stop2_scl, location, loc(yaletown, roundhouse)).
prop(stop3_scl, location, loc(cambie_st, olympic_village)).
prop(stop4_scl, location, loc(cambie_st, broadway_city_hall)).
prop(stop5_scl, location, loc(cambie_st, king_edward)).
prop(stop6_scl, location, loc(w41_ave, cambie_st)).
prop(stop7_scl, location, loc(cambie_st, langara)).
prop(stop8_scl, location, loc(cambie_st, marine_drive)).
prop(stop9_scl, location, loc(no_3_rd, bridgeport)).
prop(stop10_scl, location, loc(no_3_rd, aberdeen)).
prop(sto11_scl, location, loc(no_3_rd, lansdowne)).
prop(stop12_scl, location, loc(no_3_rd, brighouse)).
prop(stop13_scl, location, loc(sea_island, templeton)).
prop(stop14_scl, location, loc(sea_island, sea_island_centre)).
prop(stop15_scl, location, loc(sea_island, yvr_airport)).

%northbound route has skytrainn_ncl
prop(northboundcl, skytrain, skytrain0_ncl).
prop(northboundcl, skytrain, skytrain1_ncl).
prop(northboundcl, skytrain, skytrain2_ncl).
prop(northboundcl, skytrain, skytrain3_ncl).
prop(northboundcl, skytrain, skytrain4_ncl).
prop(northboundcl, skytrain, skytrain5_ncl).
prop(northboundcl, skytrain, skytrain6_ncl).
prop(northboundcl, skytrain, skytrain7_ncl).
prop(northboundcl, skytrain, skytrain8_ncl).
prop(northboundcl, skytrain, skytrain9_ncl).
prop(northboundcl, skytrain, skytrain10_ncl).
prop(northboundcl, skytrain, skytrain11_ncl).
prop(northboundcl, skytrain, skytrain12_ncl).

%southbound route has skytrainn_scl
prop(southboundcl, skytrain, skytrain0_scl).
prop(southboundcl, skytrain, skytrain1_scl).
prop(southboundcl, skytrain, skytrain2_scl).
prop(southboundcl, skytrain, skytrain3_scl).
prop(southboundcl, skytrain, skytrain4_scl).
prop(southboundcl, skytrain, skytrain5_scl).
prop(southboundcl, skytrain, skytrain6_scl).
prop(southboundcl, skytrain, skytrain7_scl).
prop(southboundcl, skytrain, skytrain8_scl).
prop(southboundcl, skytrain, skytrain9_scl).
prop(southboundcl, skytrain, skytrain10_scl).
prop(southboundcl, skytrain, skytrain11_scl).
prop(southboundcl, skytrain, skytrain12_scl).

%skytrainn_ncl has a schedule
prop(skytrain0_ncl, schedule, sched0_ncl).
prop(skytrain1_ncl, schedule, sched1_ncl).
prop(skytrain2_ncl, schedule, sched2_ncl).
prop(skytrain3_ncl, schedule, sched3_ncl).
prop(skytrain4_ncl, schedule, sched4_ncl).
prop(skytrain5_ncl, schedule, sched5_ncl).
prop(skytrain6_ncl, schedule, sched6_ncl).
prop(skytrain7_ncl, schedule, sched7_ncl).
prop(skytrain8_ncl, schedule, sched8_ncl).
prop(skytrain9_ncl, schedule, sched9_ncl).
prop(skytrain10_ncl, schedule, sched10_ncl).
prop(skytrain11_ncl, schedule, sched11_ncl).
prop(skytrain12_ncl, schedule, sched12_ncl).

%skytrainn_scl has a schedule
prop(skytrain0_scl, schedule, sched0_scl).
prop(skytrain1_scl, schedule, sched1_scl).
prop(skytrain2_scl, schedule, sched2_scl).
prop(skytrain3_scl, schedule, sched3_scl).
prop(skytrain4_scl, schedule, sched4_scl).
prop(skytrain5_scl, schedule, sched5_scl).
prop(skytrain6_scl, schedule, sched6_scl).
prop(skytrain7_scl, schedule, sched7_scl).
prop(skytrain8_scl, schedule, sched8_scl).
prop(skytrain9_scl, schedule, sched9_scl).
prop(skytrain10_scl, schedule, sched10_scl).
prop(skytrain11_scl, schedule, sched11_scl).
prop(skytrain12_scl, schedule, sched12_scl).

%the schedule has a start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_ncl, startTime, clock(12,02)).
%schedn_ncl has an arrival at...
prop(sched0_ncl, arrival, a0_sched0_ncl).
prop(sched0_ncl, arrival, a1_sched0_ncl).
prop(sched0_ncl, arrival, a2_sched0_ncl).
prop(sched0_ncl, arrival, a3_sched0_ncl).
prop(sched0_ncl, arrival, a4_sched0_ncl).
prop(sched0_ncl, arrival, a5_sched0_ncl).
prop(sched0_ncl, arrival, a6_sched0_ncl).
prop(sched0_ncl, arrival, a7_sched0_ncl).
prop(sched0_ncl, arrival, a8_sched0_ncl).
prop(sched0_ncl, arrival, a9_sched0_ncl).
prop(sched0_ncl, arrival, a10_sched0_ncl).
prop(sched0_ncl, arrival, a11_sched0_ncl).
prop(sched0_ncl, arrival, a12_sched0_ncl).
prop(sched0_ncl, arrival, a13_sched0_ncl).
prop(sched0_ncl, arrival, a14_sched0_ncl).
prop(sched0_ncl, arrival, a15_sched0_ncl).


prop(sched1_ncl, startTime, clock(13,02)).
prop(sched1_ncl, arrival, a0_sched1_ncl).
prop(sched1_ncl, arrival, a1_sched1_ncl).
prop(sched1_ncl, arrival, a2_sched1_ncl).
prop(sched1_ncl, arrival, a3_sched1_ncl).
prop(sched1_ncl, arrival, a4_sched1_ncl).
prop(sched1_ncl, arrival, a5_sched1_ncl).
prop(sched1_ncl, arrival, a6_sched1_ncl).
prop(sched1_ncl, arrival, a7_sched1_ncl).
prop(sched1_ncl, arrival, a8_sched1_ncl).
prop(sched1_ncl, arrival, a9_sched1_ncl).
prop(sched1_ncl, arrival, a10_sched1_ncl).
prop(sched1_ncl, arrival, a11_sched1_ncl).
prop(sched1_ncl, arrival, a12_sched1_ncl).
prop(sched1_ncl, arrival, a13_sched1_ncl).
prop(sched1_ncl, arrival, a14_sched1_ncl).
prop(sched1_ncl, arrival, a15_sched1_ncl).


prop(sched2_ncl, startTime, clock(14,02)).
prop(sched2_ncl, arrival, a0_sched2_ncl).
prop(sched2_ncl, arrival, a1_sched2_ncl).
prop(sched2_ncl, arrival, a2_sched2_ncl).
prop(sched2_ncl, arrival, a3_sched2_ncl).
prop(sched2_ncl, arrival, a4_sched2_ncl).
prop(sched2_ncl, arrival, a5_sched2_ncl).
prop(sched2_ncl, arrival, a6_sched2_ncl).
prop(sched2_ncl, arrival, a7_sched2_ncl).
prop(sched2_ncl, arrival, a8_sched2_ncl).
prop(sched2_ncl, arrival, a9_sched2_ncl).
prop(sched2_ncl, arrival, a10_sched2_ncl).
prop(sched2_ncl, arrival, a11_sched2_ncl).
prop(sched2_ncl, arrival, a12_sched2_ncl).
prop(sched2_ncl, arrival, a13_sched2_ncl).
prop(sched2_ncl, arrival, a14_sched2_ncl).
prop(sched2_ncl, arrival, a15_sched2_ncl).

prop(sched3_ncl, startTime, clock(15,02)).
prop(sched3_ncl, arrival, a0_sched3_ncl).
prop(sched3_ncl, arrival, a1_sched3_ncl).
prop(sched3_ncl, arrival, a2_sched3_ncl).
prop(sched3_ncl, arrival, a3_sched3_ncl).
prop(sched3_ncl, arrival, a4_sched3_ncl).
prop(sched3_ncl, arrival, a5_sched3_ncl).
prop(sched3_ncl, arrival, a6_sched3_ncl).
prop(sched3_ncl, arrival, a7_sched3_ncl).
prop(sched3_ncl, arrival, a8_sched3_ncl).
prop(sched3_ncl, arrival, a9_sched3_ncl).
prop(sched3_ncl, arrival, a10_sched3_ncl).
prop(sched3_ncl, arrival, a11_sched3_ncl).
prop(sched3_ncl, arrival, a12_sched3_ncl).
prop(sched3_ncl, arrival, a13_sched3_ncl).
prop(sched3_ncl, arrival, a14_sched3_ncl).
prop(sched3_ncl, arrival, a15_sched3_ncl).

prop(sched4_ncl, startTime, clock(16,02)).
prop(sched4_ncl, arrival, a0_sched4_ncl).
prop(sched4_ncl, arrival, a1_sched4_ncl).
prop(sched4_ncl, arrival, a2_sched4_ncl).
prop(sched4_ncl, arrival, a3_sched4_ncl).
prop(sched4_ncl, arrival, a4_sched4_ncl).
prop(sched4_ncl, arrival, a5_sched4_ncl).
prop(sched4_ncl, arrival, a6_sched4_ncl).
prop(sched4_ncl, arrival, a7_sched4_ncl).
prop(sched4_ncl, arrival, a8_sched4_ncl).
prop(sched4_ncl, arrival, a9_sched4_ncl).
prop(sched4_ncl, arrival, a10_sched4_ncl).
prop(sched4_ncl, arrival, a11_sched4_ncl).
prop(sched4_ncl, arrival, a12_sched4_ncl).
prop(sched4_ncl, arrival, a13_sched4_ncl).
prop(sched4_ncl, arrival, a14_sched4_ncl).
prop(sched4_ncl, arrival, a15_sched4_ncl).

prop(sched5_ncl, startTime, clock(17,02)).
prop(sched5_ncl, arrival, a0_sched5_ncl).
prop(sched5_ncl, arrival, a1_sched5_ncl).
prop(sched5_ncl, arrival, a2_sched5_ncl).
prop(sched5_ncl, arrival, a3_sched5_ncl).
prop(sched5_ncl, arrival, a4_sched5_ncl).
prop(sched5_ncl, arrival, a5_sched5_ncl).
prop(sched5_ncl, arrival, a6_sched5_ncl).
prop(sched5_ncl, arrival, a7_sched5_ncl).
prop(sched5_ncl, arrival, a8_sched5_ncl).
prop(sched5_ncl, arrival, a9_sched5_ncl).
prop(sched5_ncl, arrival, a10_sched5_ncl).
prop(sched5_ncl, arrival, a11_sched5_ncl).
prop(sched5_ncl, arrival, a12_sched5_ncl).
prop(sched5_ncl, arrival, a13_sched5_ncl).
prop(sched5_ncl, arrival, a14_sched5_ncl).
prop(sched5_ncl, arrival, a15_sched5_ncl).

prop(sched6_ncl, startTime, clock(18,02)).
prop(sched6_ncl, arrival, a0_sched6_ncl).
prop(sched6_ncl, arrival, a1_sched6_ncl).
prop(sched6_ncl, arrival, a2_sched6_ncl).
prop(sched6_ncl, arrival, a3_sched6_ncl).
prop(sched6_ncl, arrival, a4_sched6_ncl).
prop(sched6_ncl, arrival, a5_sched6_ncl).
prop(sched6_ncl, arrival, a6_sched6_ncl).
prop(sched6_ncl, arrival, a7_sched6_ncl).
prop(sched6_ncl, arrival, a8_sched6_ncl).
prop(sched6_ncl, arrival, a9_sched6_ncl).
prop(sched6_ncl, arrival, a10_sched6_ncl).
prop(sched6_ncl, arrival, a11_sched6_ncl).
prop(sched6_ncl, arrival, a12_sched6_ncl).
prop(sched6_ncl, arrival, a13_sched6_ncl).
prop(sched6_ncl, arrival, a14_sched6_ncl).
prop(sched6_ncl, arrival, a15_sched6_ncl).

prop(sched7_ncl, startTime, clock(19,02)).
prop(sched7_ncl, arrival, a0_sched7_ncl).
prop(sched7_ncl, arrival, a1_sched7_ncl).
prop(sched7_ncl, arrival, a2_sched7_ncl).
prop(sched7_ncl, arrival, a3_sched7_ncl).
prop(sched7_ncl, arrival, a4_sched7_ncl).
prop(sched7_ncl, arrival, a5_sched7_ncl).
prop(sched7_ncl, arrival, a6_sched7_ncl).
prop(sched7_ncl, arrival, a7_sched7_ncl).
prop(sched7_ncl, arrival, a8_sched7_ncl).
prop(sched7_ncl, arrival, a9_sched7_ncl).
prop(sched7_ncl, arrival, a10_sched7_ncl).
prop(sched7_ncl, arrival, a11_sched7_ncl).
prop(sched7_ncl, arrival, a12_sched7_ncl).
prop(sched7_ncl, arrival, a13_sched7_ncl).
prop(sched7_ncl, arrival, a14_sched7_ncl).
prop(sched7_ncl, arrival, a15_sched7_ncl).

prop(sched8_ncl, startTime, clock(20,02)).
prop(sched8_ncl, arrival, a0_sched8_ncl).
prop(sched8_ncl, arrival, a1_sched8_ncl).
prop(sched8_ncl, arrival, a2_sched8_ncl).
prop(sched8_ncl, arrival, a3_sched8_ncl).
prop(sched8_ncl, arrival, a4_sched8_ncl).
prop(sched8_ncl, arrival, a5_sched8_ncl).
prop(sched8_ncl, arrival, a6_sched8_ncl).
prop(sched8_ncl, arrival, a7_sched8_ncl).
prop(sched8_ncl, arrival, a8_sched8_ncl).
prop(sched8_ncl, arrival, a9_sched8_ncl).
prop(sched8_ncl, arrival, a10_sched8_ncl).
prop(sched8_ncl, arrival, a11_sched8_ncl).
prop(sched8_ncl, arrival, a12_sched8_ncl).
prop(sched8_ncl, arrival, a13_sched8_ncl).
prop(sched8_ncl, arrival, a14_sched8_ncl).
prop(sched8_ncl, arrival, a15_sched8_ncl).

prop(sched9_ncl, startTime, clock(21,02)).
prop(sched9_ncl, arrival, a0_sched9_ncl).
prop(sched9_ncl, arrival, a1_sched9_ncl).
prop(sched9_ncl, arrival, a2_sched9_ncl).
prop(sched9_ncl, arrival, a3_sched9_ncl).
prop(sched9_ncl, arrival, a4_sched9_ncl).
prop(sched9_ncl, arrival, a5_sched9_ncl).
prop(sched9_ncl, arrival, a6_sched9_ncl).
prop(sched9_ncl, arrival, a7_sched9_ncl).
prop(sched9_ncl, arrival, a8_sched9_ncl).
prop(sched9_ncl, arrival, a9_sched9_ncl).
prop(sched9_ncl, arrival, a10_sched9_ncl).
prop(sched9_ncl, arrival, a11_sched9_ncl).
prop(sched9_ncl, arrival, a12_sched9_ncl).
prop(sched9_ncl, arrival, a13_sched9_ncl).
prop(sched9_ncl, arrival, a14_sched9_ncl).
prop(sched9_ncl, arrival, a15_sched9_ncl).

prop(sched10_ncl, startTime, clock(22,02)).
prop(sched10_ncl, arrival, a0_sched10_ncl).
prop(sched10_ncl, arrival, a1_sched10_ncl).
prop(sched10_ncl, arrival, a2_sched10_ncl).
prop(sched10_ncl, arrival, a3_sched10_ncl).
prop(sched10_ncl, arrival, a4_sched10_ncl).
prop(sched10_ncl, arrival, a5_sched10_ncl).
prop(sched10_ncl, arrival, a6_sched10_ncl).
prop(sched10_ncl, arrival, a7_sched10_ncl).
prop(sched10_ncl, arrival, a8_sched10_ncl).
prop(sched10_ncl, arrival, a9_sched10_ncl).
prop(sched10_ncl, arrival, a10_sched10_ncl).
prop(sched10_ncl, arrival, a11_sched10_ncl).
prop(sched10_ncl, arrival, a12_sched10_ncl).
prop(sched10_ncl, arrival, a13_sched10_ncl).
prop(sched10_ncl, arrival, a14_sched10_ncl).
prop(sched10_ncl, arrival, a15_sched10_ncl).

prop(sched11_ncl, startTime, clock(23,02)).
prop(sched11_ncl, arrival, a0_sched11_ncl).
prop(sched11_ncl, arrival, a1_sched11_ncl).
prop(sched11_ncl, arrival, a2_sched11_ncl).
prop(sched11_ncl, arrival, a3_sched11_ncl).
prop(sched11_ncl, arrival, a4_sched11_ncl).
prop(sched11_ncl, arrival, a5_sched11_ncl).
prop(sched11_ncl, arrival, a6_sched11_ncl).
prop(sched11_ncl, arrival, a7_sched11_ncl).
prop(sched11_ncl, arrival, a8_sched11_ncl).
prop(sched11_ncl, arrival, a9_sched11_ncl).
prop(sched11_ncl, arrival, a10_sched11_ncl).
prop(sched11_ncl, arrival, a11_sched11_ncl).
prop(sched11_ncl, arrival, a12_sched11_ncl).
prop(sched11_ncl, arrival, a13_sched11_ncl).
prop(sched11_ncl, arrival, a14_sched11_ncl).
prop(sched11_ncl, arrival, a15_sched11_ncl).

prop(sched12_ncl, startTime, clock(00,02)).
prop(sched12_ncl, arrival, a0_sched12_ncl).
prop(sched12_ncl, arrival, a1_sched12_ncl).
prop(sched12_ncl, arrival, a2_sched12_ncl).
prop(sched12_ncl, arrival, a3_sched12_ncl).
prop(sched12_ncl, arrival, a4_sched12_ncl).
prop(sched12_ncl, arrival, a5_sched12_ncl).
prop(sched12_ncl, arrival, a6_sched12_ncl).
prop(sched12_ncl, arrival, a7_sched12_ncl).
prop(sched12_ncl, arrival, a8_sched12_ncl).
prop(sched12_ncl, arrival, a9_sched12_ncl).
prop(sched12_ncl, arrival, a10_sched12_ncl).
prop(sched12_ncl, arrival, a11_sched12_ncl).
prop(sched12_ncl, arrival, a12_sched12_ncl).
prop(sched12_ncl, arrival, a13_sched12_ncl).
prop(sched12_ncl, arrival, a14_sched12_ncl).
prop(sched12_ncl, arrival, a15_sched12_ncl).

% Now same for southbound...

%the schedule has a start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_scl, startTime, clock(12,48)).
%schedn_scl has an arrival at...
prop(sched0_scl, arrival, a0_sched0_scl).
prop(sched0_scl, arrival, a1_sched0_scl).
prop(sched0_scl, arrival, a2_sched0_scl).
prop(sched0_scl, arrival, a3_sched0_scl).
prop(sched0_scl, arrival, a4_sched0_scl).
prop(sched0_scl, arrival, a5_sched0_scl).
prop(sched0_scl, arrival, a6_sched0_scl).
prop(sched0_scl, arrival, a7_sched0_scl).
prop(sched0_scl, arrival, a8_sched0_scl).
prop(sched0_scl, arrival, a9_sched0_scl).
prop(sched0_scl, arrival, a10_sched0_scl).
prop(sched0_scl, arrival, a11_sched0_scl).
prop(sched0_scl, arrival, a12_sched0_scl).
prop(sched0_scl, arrival, a13_sched0_scl).
prop(sched0_scl, arrival, a14_sched0_scl).
prop(sched0_scl, arrival, a15_sched0_scl).


prop(sched1_scl, startTime, clock(13,48)).
prop(sched1_scl, arrival, a0_sched1_scl).
prop(sched1_scl, arrival, a1_sched1_scl).
prop(sched1_scl, arrival, a2_sched1_scl).
prop(sched1_scl, arrival, a3_sched1_scl).
prop(sched1_scl, arrival, a4_sched1_scl).
prop(sched1_scl, arrival, a5_sched1_scl).
prop(sched1_scl, arrival, a6_sched1_scl).
prop(sched1_scl, arrival, a7_sched1_scl).
prop(sched1_scl, arrival, a8_sched1_scl).
prop(sched1_scl, arrival, a9_sched1_scl).
prop(sched1_scl, arrival, a10_sched1_scl).
prop(sched1_scl, arrival, a11_sched1_scl).
prop(sched1_scl, arrival, a12_sched1_scl).
prop(sched1_scl, arrival, a13_sched1_scl).
prop(sched1_scl, arrival, a14_sched1_scl).
prop(sched1_scl, arrival, a15_sched1_scl).


prop(sched2_scl, startTime, clock(14,48)).
prop(sched2_scl, arrival, a0_sched2_scl).
prop(sched2_scl, arrival, a1_sched2_scl).
prop(sched2_scl, arrival, a2_sched2_scl).
prop(sched2_scl, arrival, a3_sched2_scl).
prop(sched2_scl, arrival, a4_sched2_scl).
prop(sched2_scl, arrival, a5_sched2_scl).
prop(sched2_scl, arrival, a6_sched2_scl).
prop(sched2_scl, arrival, a7_sched2_scl).
prop(sched2_scl, arrival, a8_sched2_scl).
prop(sched2_scl, arrival, a9_sched2_scl).
prop(sched2_scl, arrival, a10_sched2_scl).
prop(sched2_scl, arrival, a11_sched2_scl).
prop(sched2_scl, arrival, a12_sched2_scl).
prop(sched2_scl, arrival, a13_sched2_scl).
prop(sched2_scl, arrival, a14_sched2_scl).
prop(sched2_scl, arrival, a15_sched2_scl).

prop(sched3_scl, startTime, clock(15,48)).
prop(sched3_scl, arrival, a0_sched3_scl).
prop(sched3_scl, arrival, a1_sched3_scl).
prop(sched3_scl, arrival, a2_sched3_scl).
prop(sched3_scl, arrival, a3_sched3_scl).
prop(sched3_scl, arrival, a4_sched3_scl).
prop(sched3_scl, arrival, a5_sched3_scl).
prop(sched3_scl, arrival, a6_sched3_scl).
prop(sched3_scl, arrival, a7_sched3_scl).
prop(sched3_scl, arrival, a8_sched3_scl).
prop(sched3_scl, arrival, a9_sched3_scl).
prop(sched3_scl, arrival, a10_sched3_scl).
prop(sched3_scl, arrival, a11_sched3_scl).
prop(sched3_scl, arrival, a12_sched3_scl).
prop(sched3_scl, arrival, a13_sched3_scl).
prop(sched3_scl, arrival, a14_sched3_scl).
prop(sched3_scl, arrival, a15_sched3_scl).

prop(sched4_scl, startTime, clock(16,48)).
prop(sched4_scl, arrival, a0_sched4_scl).
prop(sched4_scl, arrival, a1_sched4_scl).
prop(sched4_scl, arrival, a2_sched4_scl).
prop(sched4_scl, arrival, a3_sched4_scl).
prop(sched4_scl, arrival, a4_sched4_scl).
prop(sched4_scl, arrival, a5_sched4_scl).
prop(sched4_scl, arrival, a6_sched4_scl).
prop(sched4_scl, arrival, a7_sched4_scl).
prop(sched4_scl, arrival, a8_sched4_scl).
prop(sched4_scl, arrival, a9_sched4_scl).
prop(sched4_scl, arrival, a10_sched4_scl).
prop(sched4_scl, arrival, a11_sched4_scl).
prop(sched4_scl, arrival, a12_sched4_scl).
prop(sched4_scl, arrival, a13_sched4_scl).
prop(sched4_scl, arrival, a14_sched4_scl).
prop(sched4_scl, arrival, a15_sched4_scl).

prop(sched5_scl, startTime, clock(17,48)).
prop(sched5_scl, arrival, a0_sched5_scl).
prop(sched5_scl, arrival, a1_sched5_scl).
prop(sched5_scl, arrival, a2_sched5_scl).
prop(sched5_scl, arrival, a3_sched5_scl).
prop(sched5_scl, arrival, a4_sched5_scl).
prop(sched5_scl, arrival, a5_sched5_scl).
prop(sched5_scl, arrival, a6_sched5_scl).
prop(sched5_scl, arrival, a7_sched5_scl).
prop(sched5_scl, arrival, a8_sched5_scl).
prop(sched5_scl, arrival, a9_sched5_scl).
prop(sched5_scl, arrival, a10_sched5_scl).
prop(sched5_scl, arrival, a11_sched5_scl).
prop(sched5_scl, arrival, a12_sched5_scl).
prop(sched5_scl, arrival, a13_sched5_scl).
prop(sched5_scl, arrival, a14_sched5_scl).
prop(sched5_scl, arrival, a15_sched5_scl).

prop(sched6_scl, startTime, clock(18,48)).
prop(sched6_scl, arrival, a0_sched6_scl).
prop(sched6_scl, arrival, a1_sched6_scl).
prop(sched6_scl, arrival, a2_sched6_scl).
prop(sched6_scl, arrival, a3_sched6_scl).
prop(sched6_scl, arrival, a4_sched6_scl).
prop(sched6_scl, arrival, a5_sched6_scl).
prop(sched6_scl, arrival, a6_sched6_scl).
prop(sched6_scl, arrival, a7_sched6_scl).
prop(sched6_scl, arrival, a8_sched6_scl).
prop(sched6_scl, arrival, a9_sched6_scl).
prop(sched6_scl, arrival, a10_sched6_scl).
prop(sched6_scl, arrival, a11_sched6_scl).
prop(sched6_scl, arrival, a12_sched6_scl).
prop(sched6_scl, arrival, a13_sched6_scl).
prop(sched6_scl, arrival, a14_sched6_scl).
prop(sched6_scl, arrival, a15_sched6_scl).

prop(sched7_scl, startTime, clock(19,48)).
prop(sched7_scl, arrival, a0_sched7_scl).
prop(sched7_scl, arrival, a1_sched7_scl).
prop(sched7_scl, arrival, a2_sched7_scl).
prop(sched7_scl, arrival, a3_sched7_scl).
prop(sched7_scl, arrival, a4_sched7_scl).
prop(sched7_scl, arrival, a5_sched7_scl).
prop(sched7_scl, arrival, a6_sched7_scl).
prop(sched7_scl, arrival, a7_sched7_scl).
prop(sched7_scl, arrival, a8_sched7_scl).
prop(sched7_scl, arrival, a9_sched7_scl).
prop(sched7_scl, arrival, a10_sched7_scl).
prop(sched7_scl, arrival, a11_sched7_scl).
prop(sched7_scl, arrival, a12_sched7_scl).
prop(sched7_scl, arrival, a13_sched7_scl).
prop(sched7_scl, arrival, a14_sched7_scl).
prop(sched7_scl, arrival, a15_sched7_scl).

prop(sched8_scl, startTime, clock(20,48)).
prop(sched8_scl, arrival, a0_sched8_scl).
prop(sched8_scl, arrival, a1_sched8_scl).
prop(sched8_scl, arrival, a2_sched8_scl).
prop(sched8_scl, arrival, a3_sched8_scl).
prop(sched8_scl, arrival, a4_sched8_scl).
prop(sched8_scl, arrival, a5_sched8_scl).
prop(sched8_scl, arrival, a6_sched8_scl).
prop(sched8_scl, arrival, a7_sched8_scl).
prop(sched8_scl, arrival, a8_sched8_scl).
prop(sched8_scl, arrival, a9_sched8_scl).
prop(sched8_scl, arrival, a10_sched8_scl).
prop(sched8_scl, arrival, a11_sched8_scl).
prop(sched8_scl, arrival, a12_sched8_scl).
prop(sched8_scl, arrival, a13_sched8_scl).
prop(sched8_scl, arrival, a14_sched8_scl).
prop(sched8_scl, arrival, a15_sched8_scl).

prop(sched9_scl, startTime, clock(21,48)).
prop(sched9_scl, arrival, a0_sched9_scl).
prop(sched9_scl, arrival, a1_sched9_scl).
prop(sched9_scl, arrival, a2_sched9_scl).
prop(sched9_scl, arrival, a3_sched9_scl).
prop(sched9_scl, arrival, a4_sched9_scl).
prop(sched9_scl, arrival, a5_sched9_scl).
prop(sched9_scl, arrival, a6_sched9_scl).
prop(sched9_scl, arrival, a7_sched9_scl).
prop(sched9_scl, arrival, a8_sched9_scl).
prop(sched9_scl, arrival, a9_sched9_scl).
prop(sched9_scl, arrival, a10_sched9_scl).
prop(sched9_scl, arrival, a11_sched9_scl).
prop(sched9_scl, arrival, a12_sched9_scl).
prop(sched9_scl, arrival, a13_sched9_scl).
prop(sched9_scl, arrival, a14_sched9_scl).
prop(sched9_scl, arrival, a15_sched9_scl).

prop(sched10_scl, startTime, clock(22,48)).
prop(sched10_scl, arrival, a0_sched10_scl).
prop(sched10_scl, arrival, a1_sched10_scl).
prop(sched10_scl, arrival, a2_sched10_scl).
prop(sched10_scl, arrival, a3_sched10_scl).
prop(sched10_scl, arrival, a4_sched10_scl).
prop(sched10_scl, arrival, a5_sched10_scl).
prop(sched10_scl, arrival, a6_sched10_scl).
prop(sched10_scl, arrival, a7_sched10_scl).
prop(sched10_scl, arrival, a8_sched10_scl).
prop(sched10_scl, arrival, a9_sched10_scl).
prop(sched10_scl, arrival, a10_sched10_scl).
prop(sched10_scl, arrival, a11_sched10_scl).
prop(sched10_scl, arrival, a12_sched10_scl).
prop(sched10_scl, arrival, a13_sched10_scl).
prop(sched10_scl, arrival, a14_sched10_scl).
prop(sched10_scl, arrival, a15_sched10_scl).

prop(sched11_scl, startTime, clock(23,48)).
prop(sched11_scl, arrival, a0_sched11_scl).
prop(sched11_scl, arrival, a1_sched11_scl).
prop(sched11_scl, arrival, a2_sched11_scl).
prop(sched11_scl, arrival, a3_sched11_scl).
prop(sched11_scl, arrival, a4_sched11_scl).
prop(sched11_scl, arrival, a5_sched11_scl).
prop(sched11_scl, arrival, a6_sched11_scl).
prop(sched11_scl, arrival, a7_sched11_scl).
prop(sched11_scl, arrival, a8_sched11_scl).
prop(sched11_scl, arrival, a9_sched11_scl).
prop(sched11_scl, arrival, a10_sched11_scl).
prop(sched11_scl, arrival, a11_sched11_scl).
prop(sched11_scl, arrival, a12_sched11_scl).
prop(sched11_scl, arrival, a13_sched11_scl).
prop(sched11_scl, arrival, a14_sched11_scl).
prop(sched11_scl, arrival, a15_sched11_scl).

prop(sched12_scl, startTime, clock(00,48)).
prop(sched12_scl, arrival, a0_sched12_scl).
prop(sched12_scl, arrival, a1_sched12_scl).
prop(sched12_scl, arrival, a2_sched12_scl).
prop(sched12_scl, arrival, a3_sched12_scl).
prop(sched12_scl, arrival, a4_sched12_scl).
prop(sched12_scl, arrival, a5_sched12_scl).
prop(sched12_scl, arrival, a6_sched12_scl).
prop(sched12_scl, arrival, a7_sched12_scl).
prop(sched12_scl, arrival, a8_sched12_scl).
prop(sched12_scl, arrival, a9_sched12_scl).
prop(sched12_scl, arrival, a10_sched12_scl).
prop(sched12_scl, arrival, a11_sched12_scl).
prop(sched12_scl, arrival, a12_sched12_scl).
prop(sched12_scl, arrival, a13_sched12_scl).
prop(sched12_scl, arrival, a14_sched12_scl).
prop(sched12_scl, arrival, a15_sched12_scl).

%an_sched0_ncl is at stopm_ncl...
prop(a0_sched0_ncl, location, stop0_ncl).
prop(a0_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched0_ncl, location, stop1_ncl).
prop(a1_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched0_ncl, location, stop2_ncl).
prop(a2_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched0_ncl, location, stop3_ncl).
prop(a3_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched0_ncl, location, stop4_ncl).
prop(a4_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched0_ncl, location, stop5_ncl).
prop(a5_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched0_ncl, location, stop6_ncl).
prop(a6_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched0_ncl, location, stop7_ncl).
prop(a7_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched0_ncl, location, stop8_ncl).
prop(a8_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched0_ncl, location, stop9_ncl).
prop(a9_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched0_ncl, location, stop10_ncl).
prop(a10_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched0_ncl, location, stop11_ncl).
prop(a11_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched0_ncl, location, stop12_ncl).
prop(a12_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched0_ncl, location, stop13_ncl).
prop(a13_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched0_ncl, location, stop14_ncl).
prop(a14_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched0_ncl, location, stop15_ncl).
prop(a15_sched0_ncl, time, N) :- prop(sched0_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched1_ncl, location, stop0_ncl).
prop(a0_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched1_ncl, location, stop1_ncl).
prop(a1_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched1_ncl, location, stop2_ncl).
prop(a2_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched1_ncl, location, stop3_ncl).
prop(a3_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched1_ncl, location, stop4_ncl).
prop(a4_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched1_ncl, location, stop5_ncl).
prop(a5_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched1_ncl, location, stop6_ncl).
prop(a6_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched1_ncl, location, stop7_ncl).
prop(a7_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched1_ncl, location, stop8_ncl).
prop(a8_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched1_ncl, location, stop9_ncl).
prop(a9_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched1_ncl, location, stop10_ncl).
prop(a10_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched1_ncl, location, stop11_ncl).
prop(a11_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched1_ncl, location, stop12_ncl).
prop(a12_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched1_ncl, location, stop13_ncl).
prop(a13_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched1_ncl, location, stop14_ncl).
prop(a14_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched1_ncl, location, stop15_ncl).
prop(a15_sched1_ncl, time, N) :- prop(sched1_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched2_ncl, location, stop0_ncl).
prop(a0_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched2_ncl, location, stop1_ncl).
prop(a1_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched2_ncl, location, stop2_ncl).
prop(a2_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched2_ncl, location, stop3_ncl).
prop(a3_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched2_ncl, location, stop4_ncl).
prop(a4_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched2_ncl, location, stop5_ncl).
prop(a5_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched2_ncl, location, stop6_ncl).
prop(a6_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched2_ncl, location, stop7_ncl).
prop(a7_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched2_ncl, location, stop8_ncl).
prop(a8_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched2_ncl, location, stop9_ncl).
prop(a9_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched2_ncl, location, stop10_ncl).
prop(a10_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched2_ncl, location, stop11_ncl).
prop(a11_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched2_ncl, location, stop12_ncl).
prop(a12_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched2_ncl, location, stop13_ncl).
prop(a13_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched2_ncl, location, stop14_ncl).
prop(a14_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched2_ncl, location, stop15_ncl).
prop(a15_sched2_ncl, time, N) :- prop(sched2_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched3_ncl, location, stop0_ncl).
prop(a0_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched3_ncl, location, stop1_ncl).
prop(a1_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched3_ncl, location, stop2_ncl).
prop(a2_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched3_ncl, location, stop3_ncl).
prop(a3_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched3_ncl, location, stop4_ncl).
prop(a4_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched3_ncl, location, stop5_ncl).
prop(a5_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched3_ncl, location, stop6_ncl).
prop(a6_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched3_ncl, location, stop7_ncl).
prop(a7_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched3_ncl, location, stop8_ncl).
prop(a8_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched3_ncl, location, stop9_ncl).
prop(a9_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched3_ncl, location, stop10_ncl).
prop(a10_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched3_ncl, location, stop11_ncl).
prop(a11_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched3_ncl, location, stop12_ncl).
prop(a12_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched3_ncl, location, stop13_ncl).
prop(a13_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched3_ncl, location, stop14_ncl).
prop(a14_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched3_ncl, location, stop15_ncl).
prop(a15_sched3_ncl, time, N) :- prop(sched3_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched4_ncl, location, stop0_ncl).
prop(a0_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched4_ncl, location, stop1_ncl).
prop(a1_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched4_ncl, location, stop2_ncl).
prop(a2_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched4_ncl, location, stop3_ncl).
prop(a3_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched4_ncl, location, stop4_ncl).
prop(a4_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched4_ncl, location, stop5_ncl).
prop(a5_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched4_ncl, location, stop6_ncl).
prop(a6_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched4_ncl, location, stop7_ncl).
prop(a7_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched4_ncl, location, stop8_ncl).
prop(a8_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched4_ncl, location, stop9_ncl).
prop(a9_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched4_ncl, location, stop10_ncl).
prop(a10_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched4_ncl, location, stop11_ncl).
prop(a11_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched4_ncl, location, stop12_ncl).
prop(a12_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched4_ncl, location, stop13_ncl).
prop(a13_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched4_ncl, location, stop14_ncl).
prop(a14_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched4_ncl, location, stop15_ncl).
prop(a15_sched4_ncl, time, N) :- prop(sched4_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched5_ncl, location, stop0_ncl).
prop(a0_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched5_ncl, location, stop1_ncl).
prop(a1_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched5_ncl, location, stop2_ncl).
prop(a2_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched5_ncl, location, stop3_ncl).
prop(a3_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched5_ncl, location, stop4_ncl).
prop(a4_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched5_ncl, location, stop5_ncl).
prop(a5_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched5_ncl, location, stop6_ncl).
prop(a6_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched5_ncl, location, stop7_ncl).
prop(a7_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched5_ncl, location, stop8_ncl).
prop(a8_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched5_ncl, location, stop9_ncl).
prop(a9_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched5_ncl, location, stop10_ncl).
prop(a10_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched5_ncl, location, stop11_ncl).
prop(a11_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched5_ncl, location, stop12_ncl).
prop(a12_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched5_ncl, location, stop13_ncl).
prop(a13_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched5_ncl, location, stop14_ncl).
prop(a14_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched5_ncl, location, stop15_ncl).
prop(a15_sched5_ncl, time, N) :- prop(sched5_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched6_ncl, location, stop0_ncl).
prop(a0_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched6_ncl, location, stop1_ncl).
prop(a1_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched6_ncl, location, stop2_ncl).
prop(a2_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched6_ncl, location, stop3_ncl).
prop(a3_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched6_ncl, location, stop4_ncl).
prop(a4_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched6_ncl, location, stop5_ncl).
prop(a5_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched6_ncl, location, stop6_ncl).
prop(a6_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched6_ncl, location, stop7_ncl).
prop(a7_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched6_ncl, location, stop8_ncl).
prop(a8_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched6_ncl, location, stop9_ncl).
prop(a9_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched6_ncl, location, stop10_ncl).
prop(a10_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched6_ncl, location, stop11_ncl).
prop(a11_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched6_ncl, location, stop12_ncl).
prop(a12_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched6_ncl, location, stop13_ncl).
prop(a13_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched6_ncl, location, stop14_ncl).
prop(a14_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched6_ncl, location, stop15_ncl).
prop(a15_sched6_ncl, time, N) :- prop(sched6_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched7_ncl, location, stop0_ncl).
prop(a0_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched7_ncl, location, stop1_ncl).
prop(a1_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched7_ncl, location, stop2_ncl).
prop(a2_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched7_ncl, location, stop3_ncl).
prop(a3_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched7_ncl, location, stop4_ncl).
prop(a4_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched7_ncl, location, stop5_ncl).
prop(a5_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched7_ncl, location, stop6_ncl).
prop(a6_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched7_ncl, location, stop7_ncl).
prop(a7_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched7_ncl, location, stop8_ncl).
prop(a8_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched7_ncl, location, stop9_ncl).
prop(a9_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched7_ncl, location, stop10_ncl).
prop(a10_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched7_ncl, location, stop11_ncl).
prop(a11_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched7_ncl, location, stop12_ncl).
prop(a12_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched7_ncl, location, stop13_ncl).
prop(a13_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched7_ncl, location, stop14_ncl).
prop(a14_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched7_ncl, location, stop15_ncl).
prop(a15_sched7_ncl, time, N) :- prop(sched7_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched8_ncl, location, stop0_ncl).
prop(a0_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched8_ncl, location, stop1_ncl).
prop(a1_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched8_ncl, location, stop2_ncl).
prop(a2_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched8_ncl, location, stop3_ncl).
prop(a3_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched8_ncl, location, stop4_ncl).
prop(a4_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched8_ncl, location, stop5_ncl).
prop(a5_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched8_ncl, location, stop6_ncl).
prop(a6_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched8_ncl, location, stop7_ncl).
prop(a7_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched8_ncl, location, stop8_ncl).
prop(a8_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched8_ncl, location, stop9_ncl).
prop(a9_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched8_ncl, location, stop10_ncl).
prop(a10_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched8_ncl, location, stop11_ncl).
prop(a11_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched8_ncl, location, stop12_ncl).
prop(a12_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched8_ncl, location, stop13_ncl).
prop(a13_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched8_ncl, location, stop14_ncl).
prop(a14_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched8_ncl, location, stop15_ncl).
prop(a15_sched8_ncl, time, N) :- prop(sched8_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched9_ncl, location, stop0_ncl).
prop(a0_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched9_ncl, location, stop1_ncl).
prop(a1_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched9_ncl, location, stop2_ncl).
prop(a2_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched9_ncl, location, stop3_ncl).
prop(a3_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched9_ncl, location, stop4_ncl).
prop(a4_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched9_ncl, location, stop5_ncl).
prop(a5_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched9_ncl, location, stop6_ncl).
prop(a6_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched9_ncl, location, stop7_ncl).
prop(a7_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched9_ncl, location, stop8_ncl).
prop(a8_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched9_ncl, location, stop9_ncl).
prop(a9_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched9_ncl, location, stop10_ncl).
prop(a10_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched9_ncl, location, stop11_ncl).
prop(a11_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched9_ncl, location, stop12_ncl).
prop(a12_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched9_ncl, location, stop13_ncl).
prop(a13_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched9_ncl, location, stop14_ncl).
prop(a14_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched9_ncl, location, stop15_ncl).
prop(a15_sched9_ncl, time, N) :- prop(sched9_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched10_ncl, location, stop0_ncl).
prop(a0_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched10_ncl, location, stop1_ncl).
prop(a1_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched10_ncl, location, stop2_ncl).
prop(a2_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched10_ncl, location, stop3_ncl).
prop(a3_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched10_ncl, location, stop4_ncl).
prop(a4_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched10_ncl, location, stop5_ncl).
prop(a5_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched10_ncl, location, stop6_ncl).
prop(a6_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched10_ncl, location, stop7_ncl).
prop(a7_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched10_ncl, location, stop8_ncl).
prop(a8_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched10_ncl, location, stop9_ncl).
prop(a9_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched10_ncl, location, stop10_ncl).
prop(a10_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched10_ncl, location, stop11_ncl).
prop(a11_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched10_ncl, location, stop12_ncl).
prop(a12_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched10_ncl, location, stop13_ncl).
prop(a13_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched10_ncl, location, stop14_ncl).
prop(a14_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched10_ncl, location, stop15_ncl).
prop(a15_sched10_ncl, time, N) :- prop(sched10_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched11_ncl, location, stop0_ncl).
prop(a0_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched11_ncl, location, stop1_ncl).
prop(a1_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched11_ncl, location, stop2_ncl).
prop(a2_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched11_ncl, location, stop3_ncl).
prop(a3_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched11_ncl, location, stop4_ncl).
prop(a4_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched11_ncl, location, stop5_ncl).
prop(a5_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched11_ncl, location, stop6_ncl).
prop(a6_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched11_ncl, location, stop7_ncl).
prop(a7_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched11_ncl, location, stop8_ncl).
prop(a8_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched11_ncl, location, stop9_ncl).
prop(a9_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched11_ncl, location, stop10_ncl).
prop(a10_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched11_ncl, location, stop11_ncl).
prop(a11_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched11_ncl, location, stop12_ncl).
prop(a12_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched11_ncl, location, stop13_ncl).
prop(a13_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched11_ncl, location, stop14_ncl).
prop(a14_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched11_ncl, location, stop15_ncl).
prop(a15_sched11_ncl, time, N) :- prop(sched11_ncl, startTime, Y),add(Y,26,N).

prop(a0_sched12_ncl, location, stop0_ncl).
prop(a0_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,0,N).
prop(a1_sched12_ncl, location, stop1_ncl).
prop(a1_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,2,N).
prop(a2_sched12_ncl, location, stop2_ncl).
prop(a2_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,4,N).
prop(a3_sched12_ncl, location, stop3_ncl).
prop(a3_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,13,N).
prop(a4_sched12_ncl, location, stop4_ncl).
prop(a4_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,11,N).
prop(a5_sched12_ncl, location, stop5_ncl).
prop(a5_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,9,N).
prop(a6_sched12_ncl, location, stop6_ncl).
prop(a6_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,7,N).
prop(a7_sched12_ncl, location, stop7_ncl).
prop(a7_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,9,N).
prop(a8_sched12_ncl, location, stop8_ncl).
prop(a8_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,12,N).
prop(a9_sched12_ncl, location, stop9_ncl).
prop(a9_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,15,N).
prop(a10_sched12_ncl, location, stop10_ncl).
prop(a10_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,17,N).
prop(a11_sched12_ncl, location, stop11_ncl).
prop(a11_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,19,N).
prop(a12_sched12_ncl, location, stop12_ncl).
prop(a12_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,20,N).
prop(a13_sched12_ncl, location, stop13_ncl).
prop(a13_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,22,N).
prop(a14_sched12_ncl, location, stop14_ncl).
prop(a14_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,24,N).
prop(a15_sched12_ncl, location, stop15_ncl).
prop(a15_sched12_ncl, time, N) :- prop(sched12_ncl, startTime, Y),add(Y,26,N).

%an_sched0_scl is at stopm_scl...
prop(a0_sched0_scl, location, stop0_scl).
prop(a0_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,0,N).
prop(a1_sched0_scl, location, stop1_scl).
prop(a1_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,2,N).
prop(a2_sched0_scl, location, stop2_scl).
prop(a2_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,4,N).
prop(a3_sched0_scl, location, stop3_scl).
prop(a3_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,6,N).
prop(a4_sched0_scl, location, stop4_scl).
prop(a4_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,7,N).
prop(a5_sched0_scl, location, stop5_scl).
prop(a5_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,9,N).
prop(a6_sched0_scl, location, stop6_scl).
prop(a6_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,12,N).
prop(a7_sched0_scl, location, stop7_scl).
prop(a7_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,14,N).
prop(a8_sched0_scl, location, stop8_scl).
prop(a8_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,17,N).
prop(a9_sched0_scl, location, stop9_scl).
prop(a9_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,19,N).
prop(a10_sched0_scl, location, stop10_scl).
prop(a10_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,21,N).
prop(a11_sched0_scl, location, stop11_scl).
prop(a11_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,23,N).
prop(a12_sched0_scl, location, stop12_scl).
prop(a12_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,25,N).
prop(a13_sched0_scl, location, stop13_scl).
prop(a13_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,22,N).
prop(a14_sched0_scl, location, stop14_scl).
prop(a14_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,24,N).
prop(a15_sched0_scl, location, stop15_scl).
prop(a15_sched0_scl, time, N) :- prop(sched0_scl, startTime, Y),add(Y,26,N).

prop(a0_sched1_scl, location, stop0_scl).
prop(a0_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,0,N).
prop(a1_sched1_scl, location, stop1_scl).
prop(a1_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,2,N).
prop(a2_sched1_scl, location, stop2_scl).
prop(a2_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,4,N).
prop(a3_sched1_scl, location, stop3_scl).
prop(a3_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,6,N).
prop(a4_sched1_scl, location, stop4_scl).
prop(a4_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,7,N).
prop(a5_sched1_scl, location, stop5_scl).
prop(a5_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,9,N).
prop(a6_sched1_scl, location, stop6_scl).
prop(a6_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,12,N).
prop(a7_sched1_scl, location, stop7_scl).
prop(a7_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,14,N).
prop(a8_sched1_scl, location, stop8_scl).
prop(a8_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,17,N).
prop(a9_sched1_scl, location, stop9_scl).
prop(a9_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,19,N).
prop(a10_sched1_scl, location, stop10_scl).
prop(a10_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,21,N).
prop(a11_sched1_scl, location, stop11_scl).
prop(a11_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,23,N).
prop(a12_sched1_scl, location, stop12_scl).
prop(a12_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,25,N).
prop(a13_sched1_scl, location, stop13_scl).
prop(a13_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,22,N).
prop(a14_sched1_scl, location, stop14_scl).
prop(a14_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,24,N).
prop(a15_sched1_scl, location, stop15_scl).
prop(a15_sched1_scl, time, N) :- prop(sched1_scl, startTime, Y),add(Y,26,N).

prop(a0_sched2_scl, location, stop0_scl).
prop(a0_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,0,N).
prop(a1_sched2_scl, location, stop1_scl).
prop(a1_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,2,N).
prop(a2_sched2_scl, location, stop2_scl).
prop(a2_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,4,N).
prop(a3_sched2_scl, location, stop3_scl).
prop(a3_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,6,N).
prop(a4_sched2_scl, location, stop4_scl).
prop(a4_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,7,N).
prop(a5_sched2_scl, location, stop5_scl).
prop(a5_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,9,N).
prop(a6_sched2_scl, location, stop6_scl).
prop(a6_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,12,N).
prop(a7_sched2_scl, location, stop7_scl).
prop(a7_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,14,N).
prop(a8_sched2_scl, location, stop8_scl).
prop(a8_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,17,N).
prop(a9_sched2_scl, location, stop9_scl).
prop(a9_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,19,N).
prop(a10_sched2_scl, location, stop10_scl).
prop(a10_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,21,N).
prop(a11_sched2_scl, location, stop11_scl).
prop(a11_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,23,N).
prop(a12_sched2_scl, location, stop12_scl).
prop(a12_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,25,N).
prop(a13_sched2_scl, location, stop13_scl).
prop(a13_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,22,N).
prop(a14_sched2_scl, location, stop14_scl).
prop(a14_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,24,N).
prop(a15_sched2_scl, location, stop15_scl).
prop(a15_sched2_scl, time, N) :- prop(sched2_scl, startTime, Y),add(Y,26,N).

prop(a0_sched3_scl, location, stop0_scl).
prop(a0_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,0,N).
prop(a1_sched3_scl, location, stop1_scl).
prop(a1_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,2,N).
prop(a2_sched3_scl, location, stop2_scl).
prop(a2_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,4,N).
prop(a3_sched3_scl, location, stop3_scl).
prop(a3_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,6,N).
prop(a4_sched3_scl, location, stop4_scl).
prop(a4_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,7,N).
prop(a5_sched3_scl, location, stop5_scl).
prop(a5_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,9,N).
prop(a6_sched3_scl, location, stop6_scl).
prop(a6_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,12,N).
prop(a7_sched3_scl, location, stop7_scl).
prop(a7_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,14,N).
prop(a8_sched3_scl, location, stop8_scl).
prop(a8_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,17,N).
prop(a9_sched3_scl, location, stop9_scl).
prop(a9_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,19,N).
prop(a10_sched3_scl, location, stop10_scl).
prop(a10_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,21,N).
prop(a11_sched3_scl, location, stop11_scl).
prop(a11_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,23,N).
prop(a12_sched3_scl, location, stop12_scl).
prop(a12_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,25,N).
prop(a13_sched3_scl, location, stop13_scl).
prop(a13_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,22,N).
prop(a14_sched3_scl, location, stop14_scl).
prop(a14_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,24,N).
prop(a15_sched3_scl, location, stop15_scl).
prop(a15_sched3_scl, time, N) :- prop(sched3_scl, startTime, Y),add(Y,26,N).

prop(a0_sched4_scl, location, stop0_scl).
prop(a0_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,0,N).
prop(a1_sched4_scl, location, stop1_scl).
prop(a1_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,2,N).
prop(a2_sched4_scl, location, stop2_scl).
prop(a2_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,4,N).
prop(a3_sched4_scl, location, stop3_scl).
prop(a3_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,6,N).
prop(a4_sched4_scl, location, stop4_scl).
prop(a4_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,7,N).
prop(a5_sched4_scl, location, stop5_scl).
prop(a5_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,9,N).
prop(a6_sched4_scl, location, stop6_scl).
prop(a6_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,12,N).
prop(a7_sched4_scl, location, stop7_scl).
prop(a7_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,14,N).
prop(a8_sched4_scl, location, stop8_scl).
prop(a8_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,17,N).
prop(a9_sched4_scl, location, stop9_scl).
prop(a9_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,19,N).
prop(a10_sched4_scl, location, stop10_scl).
prop(a10_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,21,N).
prop(a11_sched4_scl, location, stop11_scl).
prop(a11_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,23,N).
prop(a12_sched4_scl, location, stop12_scl).
prop(a12_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,25,N).
prop(a13_sched4_scl, location, stop13_scl).
prop(a13_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,22,N).
prop(a14_sched4_scl, location, stop14_scl).
prop(a14_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,24,N).
prop(a15_sched4_scl, location, stop15_scl).
prop(a15_sched4_scl, time, N) :- prop(sched4_scl, startTime, Y),add(Y,26,N).

prop(a0_sched5_scl, location, stop0_scl).
prop(a0_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,0,N).
prop(a1_sched5_scl, location, stop1_scl).
prop(a1_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,2,N).
prop(a2_sched5_scl, location, stop2_scl).
prop(a2_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,4,N).
prop(a3_sched5_scl, location, stop3_scl).
prop(a3_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,6,N).
prop(a4_sched5_scl, location, stop4_scl).
prop(a4_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,7,N).
prop(a5_sched5_scl, location, stop5_scl).
prop(a5_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,9,N).
prop(a6_sched5_scl, location, stop6_scl).
prop(a6_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,12,N).
prop(a7_sched5_scl, location, stop7_scl).
prop(a7_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,14,N).
prop(a8_sched5_scl, location, stop8_scl).
prop(a8_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,17,N).
prop(a9_sched5_scl, location, stop9_scl).
prop(a9_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,19,N).
prop(a10_sched5_scl, location, stop10_scl).
prop(a10_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,21,N).
prop(a11_sched5_scl, location, stop11_scl).
prop(a11_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,23,N).
prop(a12_sched5_scl, location, stop12_scl).
prop(a12_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,25,N).
prop(a13_sched5_scl, location, stop13_scl).
prop(a13_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,22,N).
prop(a14_sched5_scl, location, stop14_scl).
prop(a14_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,24,N).
prop(a15_sched5_scl, location, stop15_scl).
prop(a15_sched5_scl, time, N) :- prop(sched5_scl, startTime, Y),add(Y,26,N).

prop(a0_sched6_scl, location, stop0_scl).
prop(a0_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,0,N).
prop(a1_sched6_scl, location, stop1_scl).
prop(a1_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,2,N).
prop(a2_sched6_scl, location, stop2_scl).
prop(a2_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,4,N).
prop(a3_sched6_scl, location, stop3_scl).
prop(a3_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,6,N).
prop(a4_sched6_scl, location, stop4_scl).
prop(a4_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,7,N).
prop(a5_sched6_scl, location, stop5_scl).
prop(a5_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,9,N).
prop(a6_sched6_scl, location, stop6_scl).
prop(a6_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,12,N).
prop(a7_sched6_scl, location, stop7_scl).
prop(a7_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,14,N).
prop(a8_sched6_scl, location, stop8_scl).
prop(a8_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,17,N).
prop(a9_sched6_scl, location, stop9_scl).
prop(a9_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,19,N).
prop(a10_sched6_scl, location, stop10_scl).
prop(a10_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,21,N).
prop(a11_sched6_scl, location, stop11_scl).
prop(a11_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,23,N).
prop(a12_sched6_scl, location, stop12_scl).
prop(a12_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,25,N).
prop(a13_sched6_scl, location, stop13_scl).
prop(a13_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,22,N).
prop(a14_sched6_scl, location, stop14_scl).
prop(a14_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,24,N).
prop(a15_sched6_scl, location, stop15_scl).
prop(a15_sched6_scl, time, N) :- prop(sched6_scl, startTime, Y),add(Y,26,N).

prop(a0_sched7_scl, location, stop0_scl).
prop(a0_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,0,N).
prop(a1_sched7_scl, location, stop1_scl).
prop(a1_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,2,N).
prop(a2_sched7_scl, location, stop2_scl).
prop(a2_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,4,N).
prop(a3_sched7_scl, location, stop3_scl).
prop(a3_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,6,N).
prop(a4_sched7_scl, location, stop4_scl).
prop(a4_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,7,N).
prop(a5_sched7_scl, location, stop5_scl).
prop(a5_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,9,N).
prop(a6_sched7_scl, location, stop6_scl).
prop(a6_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,12,N).
prop(a7_sched7_scl, location, stop7_scl).
prop(a7_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,14,N).
prop(a8_sched7_scl, location, stop8_scl).
prop(a8_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,17,N).
prop(a9_sched7_scl, location, stop9_scl).
prop(a9_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,19,N).
prop(a10_sched7_scl, location, stop10_scl).
prop(a10_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,21,N).
prop(a11_sched7_scl, location, stop11_scl).
prop(a11_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,23,N).
prop(a12_sched7_scl, location, stop12_scl).
prop(a12_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,25,N).
prop(a13_sched7_scl, location, stop13_scl).
prop(a13_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,22,N).
prop(a14_sched7_scl, location, stop14_scl).
prop(a14_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,24,N).
prop(a15_sched7_scl, location, stop15_scl).
prop(a15_sched7_scl, time, N) :- prop(sched7_scl, startTime, Y),add(Y,26,N).

prop(a0_sched8_scl, location, stop0_scl).
prop(a0_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,0,N).
prop(a1_sched8_scl, location, stop1_scl).
prop(a1_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,2,N).
prop(a2_sched8_scl, location, stop2_scl).
prop(a2_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,4,N).
prop(a3_sched8_scl, location, stop3_scl).
prop(a3_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,6,N).
prop(a4_sched8_scl, location, stop4_scl).
prop(a4_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,7,N).
prop(a5_sched8_scl, location, stop5_scl).
prop(a5_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,9,N).
prop(a6_sched8_scl, location, stop6_scl).
prop(a6_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,12,N).
prop(a7_sched8_scl, location, stop7_scl).
prop(a7_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,14,N).
prop(a8_sched8_scl, location, stop8_scl).
prop(a8_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,17,N).
prop(a9_sched8_scl, location, stop9_scl).
prop(a9_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,19,N).
prop(a10_sched8_scl, location, stop10_scl).
prop(a10_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,21,N).
prop(a11_sched8_scl, location, stop11_scl).
prop(a11_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,23,N).
prop(a12_sched8_scl, location, stop12_scl).
prop(a12_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,25,N).
prop(a13_sched8_scl, location, stop13_scl).
prop(a13_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,22,N).
prop(a14_sched8_scl, location, stop14_scl).
prop(a14_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,24,N).
prop(a15_sched8_scl, location, stop15_scl).
prop(a15_sched8_scl, time, N) :- prop(sched8_scl, startTime, Y),add(Y,26,N).

prop(a0_sched9_scl, location, stop0_scl).
prop(a0_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,0,N).
prop(a1_sched9_scl, location, stop1_scl).
prop(a1_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,2,N).
prop(a2_sched9_scl, location, stop2_scl).
prop(a2_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,4,N).
prop(a3_sched9_scl, location, stop3_scl).
prop(a3_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,6,N).
prop(a4_sched9_scl, location, stop4_scl).
prop(a4_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,7,N).
prop(a5_sched9_scl, location, stop5_scl).
prop(a5_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,9,N).
prop(a6_sched9_scl, location, stop6_scl).
prop(a6_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,12,N).
prop(a7_sched9_scl, location, stop7_scl).
prop(a7_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,14,N).
prop(a8_sched9_scl, location, stop8_scl).
prop(a8_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,17,N).
prop(a9_sched9_scl, location, stop9_scl).
prop(a9_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,19,N).
prop(a10_sched9_scl, location, stop10_scl).
prop(a10_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,21,N).
prop(a11_sched9_scl, location, stop11_scl).
prop(a11_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,23,N).
prop(a12_sched9_scl, location, stop12_scl).
prop(a12_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,25,N).
prop(a13_sched9_scl, location, stop13_scl).
prop(a13_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,22,N).
prop(a14_sched9_scl, location, stop14_scl).
prop(a14_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,24,N).
prop(a15_sched9_scl, location, stop15_scl).
prop(a15_sched9_scl, time, N) :- prop(sched9_scl, startTime, Y),add(Y,26,N).

prop(a0_sched10_scl, location, stop0_scl).
prop(a0_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,0,N).
prop(a1_sched10_scl, location, stop1_scl).
prop(a1_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,2,N).
prop(a2_sched10_scl, location, stop2_scl).
prop(a2_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,4,N).
prop(a3_sched10_scl, location, stop3_scl).
prop(a3_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,6,N).
prop(a4_sched10_scl, location, stop4_scl).
prop(a4_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,7,N).
prop(a5_sched10_scl, location, stop5_scl).
prop(a5_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,9,N).
prop(a6_sched10_scl, location, stop6_scl).
prop(a6_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,12,N).
prop(a7_sched10_scl, location, stop7_scl).
prop(a7_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,14,N).
prop(a8_sched10_scl, location, stop8_scl).
prop(a8_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,17,N).
prop(a9_sched10_scl, location, stop9_scl).
prop(a9_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,19,N).
prop(a10_sched10_scl, location, stop10_scl).
prop(a10_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,21,N).
prop(a11_sched10_scl, location, stop11_scl).
prop(a11_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,23,N).
prop(a12_sched10_scl, location, stop12_scl).
prop(a12_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,25,N).
prop(a13_sched10_scl, location, stop13_scl).
prop(a13_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,22,N).
prop(a14_sched10_scl, location, stop14_scl).
prop(a14_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,24,N).
prop(a15_sched10_scl, location, stop15_scl).
prop(a15_sched10_scl, time, N) :- prop(sched10_scl, startTime, Y),add(Y,26,N).

prop(a0_sched11_scl, location, stop0_scl).
prop(a0_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,0,N).
prop(a1_sched11_scl, location, stop1_scl).
prop(a1_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,2,N).
prop(a2_sched11_scl, location, stop2_scl).
prop(a2_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,4,N).
prop(a3_sched11_scl, location, stop3_scl).
prop(a3_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,6,N).
prop(a4_sched11_scl, location, stop4_scl).
prop(a4_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,7,N).
prop(a5_sched11_scl, location, stop5_scl).
prop(a5_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,9,N).
prop(a6_sched11_scl, location, stop6_scl).
prop(a6_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,12,N).
prop(a7_sched11_scl, location, stop7_scl).
prop(a7_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,14,N).
prop(a8_sched11_scl, location, stop8_scl).
prop(a8_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,17,N).
prop(a9_sched11_scl, location, stop9_scl).
prop(a9_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,19,N).
prop(a10_sched11_scl, location, stop10_scl).
prop(a10_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,21,N).
prop(a11_sched11_scl, location, stop11_scl).
prop(a11_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,23,N).
prop(a12_sched11_scl, location, stop12_scl).
prop(a12_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,25,N).
prop(a13_sched11_scl, location, stop13_scl).
prop(a13_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,22,N).
prop(a14_sched11_scl, location, stop14_scl).
prop(a14_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,24,N).
prop(a15_sched11_scl, location, stop15_scl).
prop(a15_sched11_scl, time, N) :- prop(sched11_scl, startTime, Y),add(Y,26,N).

prop(a0_sched12_scl, location, stop0_scl).
prop(a0_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,0,N).
prop(a1_sched12_scl, location, stop1_scl).
prop(a1_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,2,N).
prop(a2_sched12_scl, location, stop2_scl).
prop(a2_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,4,N).
prop(a3_sched12_scl, location, stop3_scl).
prop(a3_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,6,N).
prop(a4_sched12_scl, location, stop4_scl).
prop(a4_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,7,N).
prop(a5_sched12_scl, location, stop5_scl).
prop(a5_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,9,N).
prop(a6_sched12_scl, location, stop6_scl).
prop(a6_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,12,N).
prop(a7_sched12_scl, location, stop7_scl).
prop(a7_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,14,N).
prop(a8_sched12_scl, location, stop8_scl).
prop(a8_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,17,N).
prop(a9_sched12_scl, location, stop9_scl).
prop(a9_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,19,N).
prop(a10_sched12_scl, location, stop10_scl).
prop(a10_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,21,N).
prop(a11_sched12_scl, location, stop11_scl).
prop(a11_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,23,N).
prop(a12_sched12_scl, location, stop12_scl).
prop(a12_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,25,N).
prop(a13_sched12_scl, location, stop13_scl).
prop(a13_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,22,N).
prop(a14_sched12_scl, location, stop14_scl).
prop(a14_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,24,N).
prop(a15_sched12_scl, location, stop15_scl).
prop(a15_sched12_scl, time, N) :- prop(sched12_scl, startTime, Y),add(Y,26,N).

%line16 has westbound and eastbound routes
prop(line16, route, westbound16).
prop(line16, route, eastbound16).

%the westbound route has stops stop0_w16 through stop19_w16
prop(westbound16, stop, stop0_w16).
prop(westbound16, stop, stop1_w16).
prop(westbound16, stop, stop2_w16).
prop(westbound16, stop, stop3_w16).
prop(westbound16, stop, stop4_w16).
prop(westbound16, stop, stop5_w16).
prop(westbound16, stop, stop6_w16).

%the eastbound route has stops stop0_e16 through stop13_e16
prop(eastbound16, stop, stop0_e16).
prop(eastbound16, stop, stop1_e16).
prop(eastbound16, stop, stop2_e16).
prop(eastbound16, stop, stop3_e16).
prop(eastbound16, stop, stop4_e16).
prop(eastbound16, stop, stop5_e16).
prop(eastbound16, stop, stop6_e16).

%stopn_w16 is at x...
prop(stop0_w16, location, loc("29_ave_station","29_ave_station")).
prop(stop1_w16, location, loc(renfrew,broadway)).
prop(stop2_w16, location, loc(hastings,commercial_dr)).
prop(stop3_w16, location, loc(hastings,homer_st)).
prop(stop4_w16, location, loc(w_broadway, granville_st)).
prop(stop5_w16, location, loc("w41_ave", west_boulevard)).
prop(stop6_w16, location, loc("63_ave_loop","63_ave_loop")).

%stopn_e16 is at x...
prop(stop0_e16, location, loc("63_ave_loop","63_ave_loop")).
prop(stop1_e16, location, loc(w41_ave, west_boulevard)).
prop(stop2_e16, location, loc(w_broadway, granville_st)).
prop(stop3_e16, location, loc(hastings,homer_st)).
prop(stop4_e16, location, loc(hastings,commercial_dr)).
prop(stop5_e16, location, loc(renfrew,broadway)).
prop(stop6_e16, location, loc("29_ave_station","29_ave_station")).

%Westbound route has busn_w16
prop(westbound16, bus, bus0_w16).
prop(westbound16, bus, bus1_w16).
prop(westbound16, bus, bus2_w16).
prop(westbound16, bus, bus3_w16).
prop(westbound16, bus, bus4_w16).
prop(westbound16, bus, bus5_w16).
prop(westbound16, bus, bus6_w16).
prop(westbound16, bus, bus7_w16).
prop(westbound16, bus, bus8_w16).
prop(westbound16, bus, bus9_w16).
prop(westbound16, bus, bus10_w16).
prop(westbound16, bus, bus11_w16).
prop(westbound16, bus, bus12_w16).

%eastbound route has busn_e16
prop(eastbound16, bus, bus0_e16).
prop(eastbound16, bus, bus1_e16).
prop(eastbound16, bus, bus2_e16).
prop(eastbound16, bus, bus3_e16).
prop(eastbound16, bus, bus4_e16).
prop(eastbound16, bus, bus5_e16).
prop(eastbound16, bus, bus6_e16).
prop(eastbound16, bus, bus7_e16).
prop(eastbound16, bus, bus8_e16).
prop(eastbound16, bus, bus9_e16).
prop(eastbound16, bus, bus10_e16).
prop(eastbound16, bus, bus11_e16).
prop(eastbound16, bus, bus12_e16).

%busn_w16 has a schedule
prop(bus0_w16, schedule, sched0_w16).
prop(bus1_w16, schedule, sched1_w16).
prop(bus2_w16, schedule, sched2_w16).
prop(bus3_w16, schedule, sched3_w16).
prop(bus4_w16, schedule, sched4_w16).
prop(bus5_w16, schedule, sched5_w16).
prop(bus6_w16, schedule, sched6_w16).
prop(bus7_w16, schedule, sched7_w16).
prop(bus8_w16, schedule, sched8_w16).
prop(bus9_w16, schedule, sched9_w16).
prop(bus10_w16, schedule, sched10_w16).
prop(bus11_w16, schedule, sched11_w16).
prop(bus12_w16, schedule, sched12_w16).

%busn_e16 has a schedule
prop(bus0_e16, schedule, sched0_e16).
prop(bus1_e16, schedule, sched1_e16).
prop(bus2_e16, schedule, sched2_e16).
prop(bus3_e16, schedule, sched3_e16).
prop(bus4_e16, schedule, sched4_e16).
prop(bus5_e16, schedule, sched5_e16).
prop(bus6_e16, schedule, sched6_e16).
prop(bus7_e16, schedule, sched7_e16).
prop(bus8_e16, schedule, sched8_e16).
prop(bus9_e16, schedule, sched9_e16).
prop(bus10_e16, schedule, sched10_e16).
prop(bus11_e16, schedule, sched11_e16).
prop(bus12_e16, schedule, sched12_e16).

%the schedule has a start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_w16, startTime, clock(12,00)).
%schedn_w16 has an arrival at...
prop(sched0_w16, arrival, a0_sched0_w16).
prop(sched0_w16, arrival, a1_sched0_w16).
prop(sched0_w16, arrival, a2_sched0_w16).
prop(sched0_w16, arrival, a3_sched0_w16).
prop(sched0_w16, arrival, a4_sched0_w16).
prop(sched0_w16, arrival, a5_sched0_w16).
prop(sched0_w16, arrival, a6_sched0_w16).

prop(sched1_w16, startTime, clock(13,01)).
prop(sched1_w16, arrival, a0_sched1_w16).
prop(sched1_w16, arrival, a1_sched1_w16).
prop(sched1_w16, arrival, a2_sched1_w16).
prop(sched1_w16, arrival, a3_sched1_w16).
prop(sched1_w16, arrival, a4_sched1_w16).
prop(sched1_w16, arrival, a5_sched1_w16).
prop(sched1_w16, arrival, a6_sched1_w16).

prop(sched2_w16, startTime, clock(14,02)).
prop(sched2_w16, arrival, a0_sched2_w16).
prop(sched2_w16, arrival, a1_sched2_w16).
prop(sched2_w16, arrival, a2_sched2_w16).
prop(sched2_w16, arrival, a3_sched2_w16).
prop(sched2_w16, arrival, a4_sched2_w16).
prop(sched2_w16, arrival, a5_sched2_w16).
prop(sched2_w16, arrival, a6_sched2_w16).

prop(sched3_w16, startTime, clock(15,02)).
prop(sched3_w16, arrival, a0_sched3_w16).
prop(sched3_w16, arrival, a1_sched3_w16).
prop(sched3_w16, arrival, a2_sched3_w16).
prop(sched3_w16, arrival, a3_sched3_w16).
prop(sched3_w16, arrival, a4_sched3_w16).
prop(sched3_w16, arrival, a5_sched3_w16).
prop(sched3_w16, arrival, a6_sched3_w16).

prop(sched4_w16, startTime, clock(16,03)).
prop(sched4_w16, arrival, a0_sched4_w16).
prop(sched4_w16, arrival, a1_sched4_w16).
prop(sched4_w16, arrival, a2_sched4_w16).
prop(sched4_w16, arrival, a3_sched4_w16).
prop(sched4_w16, arrival, a4_sched4_w16).
prop(sched4_w16, arrival, a5_sched4_w16).
prop(sched4_w16, arrival, a6_sched4_w16).

prop(sched5_w16, startTime, clock(17,02)).
prop(sched5_w16, arrival, a0_sched5_w16).
prop(sched5_w16, arrival, a1_sched5_w16).
prop(sched5_w16, arrival, a2_sched5_w16).
prop(sched5_w16, arrival, a3_sched5_w16).
prop(sched5_w16, arrival, a4_sched5_w16).
prop(sched5_w16, arrival, a5_sched5_w16).
prop(sched5_w16, arrival, a6_sched5_w16).

prop(sched6_w16, startTime, clock(18,04)).
prop(sched6_w16, arrival, a0_sched6_w16).
prop(sched6_w16, arrival, a1_sched6_w16).
prop(sched6_w16, arrival, a2_sched6_w16).
prop(sched6_w16, arrival, a3_sched6_w16).
prop(sched6_w16, arrival, a4_sched6_w16).
prop(sched6_w16, arrival, a5_sched6_w16).
prop(sched6_w16, arrival, a6_sched6_w16).

prop(sched7_w16, startTime, clock(19,10)).
prop(sched7_w16, arrival, a0_sched7_w16).
prop(sched7_w16, arrival, a1_sched7_w16).
prop(sched7_w16, arrival, a2_sched7_w16).
prop(sched7_w16, arrival, a3_sched7_w16).
prop(sched7_w16, arrival, a4_sched7_w16).
prop(sched7_w16, arrival, a5_sched7_w16).
prop(sched7_w16, arrival, a6_sched7_w16).

prop(sched8_w16, startTime, clock(20,01)).
prop(sched8_w16, arrival, a0_sched8_w16).
prop(sched8_w16, arrival, a1_sched8_w16).
prop(sched8_w16, arrival, a2_sched8_w16).
prop(sched8_w16, arrival, a3_sched8_w16).
prop(sched8_w16, arrival, a4_sched8_w16).
prop(sched8_w16, arrival, a5_sched8_w16).
prop(sched8_w16, arrival, a6_sched8_w16).

prop(sched9_w16, startTime, clock(21,05)).
prop(sched9_w16, arrival, a0_sched9_w16).
prop(sched9_w16, arrival, a1_sched9_w16).
prop(sched9_w16, arrival, a2_sched9_w16).
prop(sched9_w16, arrival, a3_sched9_w16).
prop(sched9_w16, arrival, a4_sched9_w16).
prop(sched9_w16, arrival, a5_sched9_w16).
prop(sched9_w16, arrival, a6_sched9_w16).

prop(sched10_w16, startTime, clock(22,06)).
prop(sched10_w16, arrival, a0_sched10_w16).
prop(sched10_w16, arrival, a1_sched10_w16).
prop(sched10_w16, arrival, a2_sched10_w16).
prop(sched10_w16, arrival, a3_sched10_w16).
prop(sched10_w16, arrival, a4_sched10_w16).
prop(sched10_w16, arrival, a5_sched10_w16).
prop(sched10_w16, arrival, a6_sched10_w16).

prop(sched11_w16, startTime, clock(23,07)).
prop(sched11_w16, arrival, a0_sched11_w16).
prop(sched11_w16, arrival, a1_sched11_w16).
prop(sched11_w16, arrival, a2_sched11_w16).
prop(sched11_w16, arrival, a3_sched11_w16).
prop(sched11_w16, arrival, a4_sched11_w16).
prop(sched11_w16, arrival, a5_sched11_w16).
prop(sched11_w16, arrival, a6_sched11_w16).

prop(sched12_w16, startTime, clock(00,04)).
prop(sched12_w16, arrival, a0_sched12_w16).
prop(sched12_w16, arrival, a1_sched12_w16).
prop(sched12_w16, arrival, a2_sched12_w16).
prop(sched12_w16, arrival, a3_sched12_w16).
prop(sched12_w16, arrival, a4_sched12_w16).
prop(sched12_w16, arrival, a5_sched12_w16).
prop(sched12_w16, arrival, a6_sched12_w16).

% The same for eastbound...
prop(sched0_e16, startTime, clock(12,09)).
%schedn_e16 has an arrival at...
prop(sched0_e16, arrival, a0_sched0_e16).
prop(sched0_e16, arrival, a1_sched0_e16).
prop(sched0_e16, arrival, a2_sched0_e16).
prop(sched0_e16, arrival, a3_sched0_e16).
prop(sched0_e16, arrival, a4_sched0_e16).
prop(sched0_e16, arrival, a5_sched0_e16).
prop(sched0_e16, arrival, a6_sched0_e16).

prop(sched1_e16, startTime, clock(13,09)).
prop(sched1_e16, arrival, a0_sched1_e16).
prop(sched1_e16, arrival, a1_sched1_e16).
prop(sched1_e16, arrival, a2_sched1_e16).
prop(sched1_e16, arrival, a3_sched1_e16).
prop(sched1_e16, arrival, a4_sched1_e16).
prop(sched1_e16, arrival, a5_sched1_e16).
prop(sched1_e16, arrival, a6_sched1_e16).

prop(sched2_e16, startTime, clock(14,00)).
prop(sched2_e16, arrival, a0_sched2_e16).
prop(sched2_e16, arrival, a1_sched2_e16).
prop(sched2_e16, arrival, a2_sched2_e16).
prop(sched2_e16, arrival, a3_sched2_e16).
prop(sched2_e16, arrival, a4_sched2_e16).
prop(sched2_e16, arrival, a5_sched2_e16).
prop(sched2_e16, arrival, a6_sched2_e16).

prop(sched3_e16, startTime, clock(15,02)).
prop(sched3_e16, arrival, a0_sched3_e16).
prop(sched3_e16, arrival, a1_sched3_e16).
prop(sched3_e16, arrival, a2_sched3_e16).
prop(sched3_e16, arrival, a3_sched3_e16).
prop(sched3_e16, arrival, a4_sched3_e16).
prop(sched3_e16, arrival, a5_sched3_e16).
prop(sched3_e16, arrival, a6_sched3_e16).

prop(sched4_e16, startTime, clock(16,02)).
prop(sched4_e16, arrival, a0_sched4_e16).
prop(sched4_e16, arrival, a1_sched4_e16).
prop(sched4_e16, arrival, a2_sched4_e16).
prop(sched4_e16, arrival, a3_sched4_e16).
prop(sched4_e16, arrival, a4_sched4_e16).
prop(sched4_e16, arrival, a5_sched4_e16).
prop(sched4_e16, arrival, a6_sched4_e16).

prop(sched5_e16, startTime, clock(17,02)).
prop(sched5_e16, arrival, a0_sched5_e16).
prop(sched5_e16, arrival, a1_sched5_e16).
prop(sched5_e16, arrival, a2_sched5_e16).
prop(sched5_e16, arrival, a3_sched5_e16).
prop(sched5_e16, arrival, a4_sched5_e16).
prop(sched5_e16, arrival, a5_sched5_e16).
prop(sched5_e16, arrival, a6_sched5_e16).

prop(sched6_e16, startTime, clock(18,00)).
prop(sched6_e16, arrival, a0_sched6_e16).
prop(sched6_e16, arrival, a1_sched6_e16).
prop(sched6_e16, arrival, a2_sched6_e16).
prop(sched6_e16, arrival, a3_sched6_e16).
prop(sched6_e16, arrival, a4_sched6_e16).
prop(sched6_e16, arrival, a5_sched6_e16).
prop(sched6_e16, arrival, a6_sched6_e16).

prop(sched7_e16, startTime, clock(19,03)).
prop(sched7_e16, arrival, a0_sched7_e16).
prop(sched7_e16, arrival, a1_sched7_e16).
prop(sched7_e16, arrival, a2_sched7_e16).
prop(sched7_e16, arrival, a3_sched7_e16).
prop(sched7_e16, arrival, a4_sched7_e16).
prop(sched7_e16, arrival, a5_sched7_e16).
prop(sched7_e16, arrival, a6_sched7_e16).

prop(sched8_e16, startTime, clock(20,05)).
prop(sched8_e16, arrival, a0_sched8_e16).
prop(sched8_e16, arrival, a1_sched8_e16).
prop(sched8_e16, arrival, a2_sched8_e16).
prop(sched8_e16, arrival, a3_sched8_e16).
prop(sched8_e16, arrival, a4_sched8_e16).
prop(sched8_e16, arrival, a5_sched8_e16).
prop(sched8_e16, arrival, a6_sched8_e16).

prop(sched9_e16, startTime, clock(21,15)).
prop(sched9_e16, arrival, a0_sched9_e16).
prop(sched9_e16, arrival, a1_sched9_e16).
prop(sched9_e16, arrival, a2_sched9_e16).
prop(sched9_e16, arrival, a3_sched9_e16).
prop(sched9_e16, arrival, a4_sched9_e16).
prop(sched9_e16, arrival, a5_sched9_e16).
prop(sched9_e16, arrival, a6_sched9_e16).

prop(sched10_e16, startTime, clock(22,16)).
prop(sched10_e16, arrival, a0_sched10_e16).
prop(sched10_e16, arrival, a1_sched10_e16).
prop(sched10_e16, arrival, a2_sched10_e16).
prop(sched10_e16, arrival, a3_sched10_e16).
prop(sched10_e16, arrival, a4_sched10_e16).
prop(sched10_e16, arrival, a5_sched10_e16).
prop(sched10_e16, arrival, a6_sched10_e16).

prop(sched11_e16, startTime, clock(23,15)).
prop(sched11_e16, arrival, a0_sched11_e16).
prop(sched11_e16, arrival, a1_sched11_e16).
prop(sched11_e16, arrival, a2_sched11_e16).
prop(sched11_e16, arrival, a3_sched11_e16).
prop(sched11_e16, arrival, a4_sched11_e16).
prop(sched11_e16, arrival, a5_sched11_e16).
prop(sched11_e16, arrival, a6_sched11_e16).

prop(sched12_e16, startTime, clock(00,15)).
prop(sched12_e16, arrival, a0_sched12_e16).
prop(sched12_e16, arrival, a1_sched12_e16).
prop(sched12_e16, arrival, a2_sched12_e16).
prop(sched12_e16, arrival, a3_sched12_e16).
prop(sched12_e16, arrival, a4_sched12_e16).
prop(sched12_e16, arrival, a5_sched12_e16).
prop(sched12_e16, arrival, a6_sched12_e16).

%an_sched0_w16 is at stopm_w16...
prop(a0_sched0_w16, location, stop0_w16).
prop(a0_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,0,N).
prop(a1_sched0_w16, location, stop1_w16).
prop(a1_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,10,N).
prop(a2_sched0_w16, location, stop2_w16).
prop(a2_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,28,N).
prop(a3_sched0_w16, location, stop3_w16).
prop(a3_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,43,N).
prop(a4_sched0_w16, location, stop4_w16).
prop(a4_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,59,N).
prop(a5_sched0_w16, location, stop5_w16).
prop(a5_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,77,N).
prop(a6_sched0_w16, location, stop6_w16).
prop(a6_sched0_w16, time, N) :- prop(sched0_w16, startTime, Y),add(Y,86,N).

%an_sched1_w16 is at stopm_w16...
prop(a0_sched1_w16, location, stop0_w16).
prop(a0_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,0,N).
prop(a1_sched1_w16, location, stop1_w16).
prop(a1_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,10,N).
prop(a2_sched1_w16, location, stop2_w16).
prop(a2_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,28,N).
prop(a3_sched1_w16, location, stop3_w16).
prop(a3_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,43,N).
prop(a4_sched1_w16, location, stop4_w16).
prop(a4_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,59,N).
prop(a5_sched1_w16, location, stop5_w16).
prop(a5_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,77,N).
prop(a6_sched1_w16, location, stop6_w16).
prop(a6_sched1_w16, time, N) :- prop(sched1_w16, startTime, Y),add(Y,86,N).

%an_sched2_w16 is at stopm_w16...
prop(a0_sched2_w16, location, stop0_w16).
prop(a0_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,0,N).
prop(a1_sched2_w16, location, stop1_w16).
prop(a1_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,10,N).
prop(a2_sched2_w16, location, stop2_w16).
prop(a2_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,28,N).
prop(a3_sched2_w16, location, stop3_w16).
prop(a3_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,43,N).
prop(a4_sched2_w16, location, stop4_w16).
prop(a4_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,59,N).
prop(a5_sched2_w16, location, stop5_w16).
prop(a5_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,77,N).
prop(a6_sched2_w16, location, stop6_w16).
prop(a6_sched2_w16, time, N) :- prop(sched2_w16, startTime, Y),add(Y,86,N).

%an_sched3_w16 is at stopm_w16...
prop(a0_sched3_w16, location, stop0_w16).
prop(a0_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,0,N).
prop(a1_sched3_w16, location, stop1_w16).
prop(a1_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,10,N).
prop(a2_sched3_w16, location, stop2_w16).
prop(a2_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,28,N).
prop(a3_sched3_w16, location, stop3_w16).
prop(a3_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,43,N).
prop(a4_sched3_w16, location, stop4_w16).
prop(a4_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,59,N).
prop(a5_sched3_w16, location, stop5_w16).
prop(a5_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,77,N).
prop(a6_sched3_w16, location, stop6_w16).
prop(a6_sched3_w16, time, N) :- prop(sched3_w16, startTime, Y),add(Y,86,N).

%an_sched4_w16 is at stopm_w16...
prop(a0_sched4_w16, location, stop0_w16).
prop(a0_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,0,N).
prop(a1_sched4_w16, location, stop1_w16).
prop(a1_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,10,N).
prop(a2_sched4_w16, location, stop2_w16).
prop(a2_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,28,N).
prop(a3_sched4_w16, location, stop3_w16).
prop(a3_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,43,N).
prop(a4_sched4_w16, location, stop4_w16).
prop(a4_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,59,N).
prop(a5_sched4_w16, location, stop5_w16).
prop(a5_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,77,N).
prop(a6_sched4_w16, location, stop6_w16).
prop(a6_sched4_w16, time, N) :- prop(sched4_w16, startTime, Y),add(Y,86,N).

%an_sched5_w16 is at stopm_w16...
prop(a0_sched5_w16, location, stop0_w16).
prop(a0_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,0,N).
prop(a1_sched5_w16, location, stop1_w16).
prop(a1_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,10,N).
prop(a2_sched5_w16, location, stop2_w16).
prop(a2_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,28,N).
prop(a3_sched5_w16, location, stop3_w16).
prop(a3_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,43,N).
prop(a4_sched5_w16, location, stop4_w16).
prop(a4_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,59,N).
prop(a5_sched5_w16, location, stop5_w16).
prop(a5_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,77,N).
prop(a6_sched5_w16, location, stop6_w16).
prop(a6_sched5_w16, time, N) :- prop(sched5_w16, startTime, Y),add(Y,86,N).

%an_sched6_w16 is at stopm_w16...
prop(a0_sched6_w16, location, stop0_w16).
prop(a0_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,0,N).
prop(a1_sched6_w16, location, stop1_w16).
prop(a1_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,10,N).
prop(a2_sched6_w16, location, stop2_w16).
prop(a2_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,28,N).
prop(a3_sched6_w16, location, stop3_w16).
prop(a3_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,43,N).
prop(a4_sched6_w16, location, stop4_w16).
prop(a4_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,59,N).
prop(a5_sched6_w16, location, stop5_w16).
prop(a5_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,77,N).
prop(a6_sched6_w16, location, stop6_w16).
prop(a6_sched6_w16, time, N) :- prop(sched6_w16, startTime, Y),add(Y,86,N).

%an_sched7_w16 is at stopm_w16...
prop(a0_sched7_w16, location, stop0_w16).
prop(a0_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,0,N).
prop(a1_sched7_w16, location, stop1_w16).
prop(a1_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,10,N).
prop(a2_sched7_w16, location, stop2_w16).
prop(a2_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,28,N).
prop(a3_sched7_w16, location, stop3_w16).
prop(a3_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,43,N).
prop(a4_sched7_w16, location, stop4_w16).
prop(a4_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,59,N).
prop(a5_sched7_w16, location, stop5_w16).
prop(a5_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,77,N).
prop(a6_sched7_w16, location, stop6_w16).
prop(a6_sched7_w16, time, N) :- prop(sched7_w16, startTime, Y),add(Y,86,N).

%an_sched8_w16 is at stopm_w16...
prop(a0_sched8_w16, location, stop0_w16).
prop(a0_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,0,N).
prop(a1_sched8_w16, location, stop1_w16).
prop(a1_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,10,N).
prop(a2_sched8_w16, location, stop2_w16).
prop(a2_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,28,N).
prop(a3_sched8_w16, location, stop3_w16).
prop(a3_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,43,N).
prop(a4_sched8_w16, location, stop4_w16).
prop(a4_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,59,N).
prop(a5_sched8_w16, location, stop5_w16).
prop(a5_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,77,N).
prop(a6_sched8_w16, location, stop6_w16).
prop(a6_sched8_w16, time, N) :- prop(sched8_w16, startTime, Y),add(Y,86,N).

%an_sched9_w16 is at stopm_w16...
prop(a0_sched9_w16, location, stop0_w16).
prop(a0_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,0,N).
prop(a1_sched9_w16, location, stop1_w16).
prop(a1_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,10,N).
prop(a2_sched9_w16, location, stop2_w16).
prop(a2_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,28,N).
prop(a3_sched9_w16, location, stop3_w16).
prop(a3_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,43,N).
prop(a4_sched9_w16, location, stop4_w16).
prop(a4_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,59,N).
prop(a5_sched9_w16, location, stop5_w16).
prop(a5_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,77,N).
prop(a6_sched9_w16, location, stop6_w16).
prop(a6_sched9_w16, time, N) :- prop(sched9_w16, startTime, Y),add(Y,86,N).

%an_sched10_w16 is at stopm_w16...
prop(a0_sched10_w16, location, stop0_w16).
prop(a0_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,0,N).
prop(a1_sched10_w16, location, stop1_w16).
prop(a1_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,10,N).
prop(a2_sched10_w16, location, stop2_w16).
prop(a2_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,28,N).
prop(a3_sched10_w16, location, stop3_w16).
prop(a3_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,43,N).
prop(a4_sched10_w16, location, stop4_w16).
prop(a4_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,59,N).
prop(a5_sched10_w16, location, stop5_w16).
prop(a5_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,77,N).
prop(a6_sched10_w16, location, stop6_w16).
prop(a6_sched10_w16, time, N) :- prop(sched10_w16, startTime, Y),add(Y,86,N).

%an_sched11_w16 is at stopm_w16...
prop(a0_sched11_w16, location, stop0_w16).
prop(a0_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,0,N).
prop(a1_sched11_w16, location, stop1_w16).
prop(a1_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,10,N).
prop(a2_sched11_w16, location, stop2_w16).
prop(a2_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,28,N).
prop(a3_sched11_w16, location, stop3_w16).
prop(a3_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,43,N).
prop(a4_sched11_w16, location, stop4_w16).
prop(a4_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,59,N).
prop(a5_sched11_w16, location, stop5_w16).
prop(a5_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,77,N).
prop(a6_sched11_w16, location, stop6_w16).
prop(a6_sched11_w16, time, N) :- prop(sched11_w16, startTime, Y),add(Y,86,N).

%an_sched12_w16 is at stopm_w16...
prop(a0_sched12_w16, location, stop0_w16).
prop(a0_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,0,N).
prop(a1_sched12_w16, location, stop1_w16).
prop(a1_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,10,N).
prop(a2_sched12_w16, location, stop2_w16).
prop(a2_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,28,N).
prop(a3_sched12_w16, location, stop3_w16).
prop(a3_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,43,N).
prop(a4_sched12_w16, location, stop4_w16).
prop(a4_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,59,N).
prop(a5_sched12_w16, location, stop5_w16).
prop(a5_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,77,N).
prop(a6_sched12_w16, location, stop6_w16).
prop(a6_sched12_w16, time, N) :- prop(sched12_w16, startTime, Y),add(Y,86,N).

% Now for eastbound...
%an_sched0_e16 is at stopm_e16...
prop(a0_sched0_e16, location, stop0_e16).
prop(a0_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,0,N).
prop(a1_sched0_e16, location, stop1_e16).
prop(a1_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,9,N).
prop(a2_sched0_e16, location, stop2_e16).
prop(a2_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,25,N).
prop(a3_sched0_e16, location, stop3_e16).
prop(a3_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,40,N).
prop(a4_sched0_e16, location, stop4_e16).
prop(a4_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,58,N).
prop(a5_sched0_e16, location, stop5_e16).
prop(a5_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,74,N).
prop(a6_sched0_e16, location, stop6_e16).
prop(a6_sched0_e16, time, N) :- prop(sched0_e16, startTime, Y),add(Y,85,N).

prop(a0_sched1_e16, location, stop0_e16).
prop(a0_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,0,N).
prop(a1_sched1_e16, location, stop1_e16).
prop(a1_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,9,N).
prop(a2_sched1_e16, location, stop2_e16).
prop(a2_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,25,N).
prop(a3_sched1_e16, location, stop3_e16).
prop(a3_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,40,N).
prop(a4_sched1_e16, location, stop4_e16).
prop(a4_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,58,N).
prop(a5_sched1_e16, location, stop5_e16).
prop(a5_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,74,N).
prop(a6_sched1_e16, location, stop6_e16).
prop(a6_sched1_e16, time, N) :- prop(sched1_e16, startTime, Y),add(Y,85,N).

prop(a0_sched2_e16, location, stop0_e16).
prop(a0_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,0,N).
prop(a1_sched2_e16, location, stop1_e16).
prop(a1_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,9,N).
prop(a2_sched2_e16, location, stop2_e16).
prop(a2_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,25,N).
prop(a3_sched2_e16, location, stop3_e16).
prop(a3_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,40,N).
prop(a4_sched2_e16, location, stop4_e16).
prop(a4_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,58,N).
prop(a5_sched2_e16, location, stop5_e16).
prop(a5_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,74,N).
prop(a6_sched2_e16, location, stop6_e16).
prop(a6_sched2_e16, time, N) :- prop(sched2_e16, startTime, Y),add(Y,85,N).

prop(a0_sched3_e16, location, stop0_e16).
prop(a0_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,0,N).
prop(a1_sched3_e16, location, stop1_e16).
prop(a1_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,9,N).
prop(a2_sched3_e16, location, stop2_e16).
prop(a2_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,25,N).
prop(a3_sched3_e16, location, stop3_e16).
prop(a3_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,40,N).
prop(a4_sched3_e16, location, stop4_e16).
prop(a4_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,58,N).
prop(a5_sched3_e16, location, stop5_e16).
prop(a5_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,74,N).
prop(a6_sched3_e16, location, stop6_e16).
prop(a6_sched3_e16, time, N) :- prop(sched3_e16, startTime, Y),add(Y,85,N).

prop(a0_sched4_e16, location, stop0_e16).
prop(a0_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,0,N).
prop(a1_sched4_e16, location, stop1_e16).
prop(a1_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,9,N).
prop(a2_sched4_e16, location, stop2_e16).
prop(a2_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,25,N).
prop(a3_sched4_e16, location, stop3_e16).
prop(a3_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,40,N).
prop(a4_sched4_e16, location, stop4_e16).
prop(a4_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,58,N).
prop(a5_sched4_e16, location, stop5_e16).
prop(a5_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,74,N).
prop(a6_sched4_e16, location, stop6_e16).
prop(a6_sched4_e16, time, N) :- prop(sched4_e16, startTime, Y),add(Y,85,N).

prop(a0_sched5_e16, location, stop0_e16).
prop(a0_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,0,N).
prop(a1_sched5_e16, location, stop1_e16).
prop(a1_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,9,N).
prop(a2_sched5_e16, location, stop2_e16).
prop(a2_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,25,N).
prop(a3_sched5_e16, location, stop3_e16).
prop(a3_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,40,N).
prop(a4_sched5_e16, location, stop4_e16).
prop(a4_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,58,N).
prop(a5_sched5_e16, location, stop5_e16).
prop(a5_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,74,N).
prop(a6_sched5_e16, location, stop6_e16).
prop(a6_sched5_e16, time, N) :- prop(sched5_e16, startTime, Y),add(Y,85,N).

prop(a0_sched6_e16, location, stop0_e16).
prop(a0_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,0,N).
prop(a1_sched6_e16, location, stop1_e16).
prop(a1_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,9,N).
prop(a2_sched6_e16, location, stop2_e16).
prop(a2_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,25,N).
prop(a3_sched6_e16, location, stop3_e16).
prop(a3_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,40,N).
prop(a4_sched6_e16, location, stop4_e16).
prop(a4_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,58,N).
prop(a5_sched6_e16, location, stop5_e16).
prop(a5_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,74,N).
prop(a6_sched6_e16, location, stop6_e16).
prop(a6_sched6_e16, time, N) :- prop(sched6_e16, startTime, Y),add(Y,85,N).

prop(a0_sched7_e16, location, stop0_e16).
prop(a0_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,0,N).
prop(a1_sched7_e16, location, stop1_e16).
prop(a1_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,9,N).
prop(a2_sched7_e16, location, stop2_e16).
prop(a2_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,25,N).
prop(a3_sched7_e16, location, stop3_e16).
prop(a3_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,40,N).
prop(a4_sched7_e16, location, stop4_e16).
prop(a4_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,58,N).
prop(a5_sched7_e16, location, stop5_e16).
prop(a5_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,74,N).
prop(a6_sched7_e16, location, stop6_e16).
prop(a6_sched7_e16, time, N) :- prop(sched7_e16, startTime, Y),add(Y,85,N).

prop(a0_sched8_e16, location, stop0_e16).
prop(a0_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,0,N).
prop(a1_sched8_e16, location, stop1_e16).
prop(a1_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,9,N).
prop(a2_sched8_e16, location, stop2_e16).
prop(a2_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,25,N).
prop(a3_sched8_e16, location, stop3_e16).
prop(a3_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,40,N).
prop(a4_sched8_e16, location, stop4_e16).
prop(a4_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,58,N).
prop(a5_sched8_e16, location, stop5_e16).
prop(a5_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,74,N).
prop(a6_sched8_e16, location, stop6_e16).
prop(a6_sched8_e16, time, N) :- prop(sched8_e16, startTime, Y),add(Y,85,N).

prop(a0_sched9_e16, location, stop0_e16).
prop(a0_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,0,N).
prop(a1_sched9_e16, location, stop1_e16).
prop(a1_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,9,N).
prop(a2_sched9_e16, location, stop2_e16).
prop(a2_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,25,N).
prop(a3_sched9_e16, location, stop3_e16).
prop(a3_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,40,N).
prop(a4_sched9_e16, location, stop4_e16).
prop(a4_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,58,N).
prop(a5_sched9_e16, location, stop5_e16).
prop(a5_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,74,N).
prop(a6_sched9_e16, location, stop6_e16).
prop(a6_sched9_e16, time, N) :- prop(sched9_e16, startTime, Y),add(Y,85,N).

prop(a0_sched10_e16, location, stop0_e16).
prop(a0_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,0,N).
prop(a1_sched10_e16, location, stop1_e16).
prop(a1_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,9,N).
prop(a2_sched10_e16, location, stop2_e16).
prop(a2_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,25,N).
prop(a3_sched10_e16, location, stop3_e16).
prop(a3_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,40,N).
prop(a4_sched10_e16, location, stop4_e16).
prop(a4_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,58,N).
prop(a5_sched10_e16, location, stop5_e16).
prop(a5_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,74,N).
prop(a6_sched10_e16, location, stop6_e16).
prop(a6_sched10_e16, time, N) :- prop(sched10_e16, startTime, Y),add(Y,85,N).

prop(a0_sched11_e16, location, stop0_e16).
prop(a0_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,0,N).
prop(a1_sched11_e16, location, stop1_e16).
prop(a1_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,9,N).
prop(a2_sched11_e16, location, stop2_e16).
prop(a2_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,25,N).
prop(a3_sched11_e16, location, stop3_e16).
prop(a3_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,40,N).
prop(a4_sched11_e16, location, stop4_e16).
prop(a4_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,58,N).
prop(a5_sched11_e16, location, stop5_e16).
prop(a5_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,74,N).
prop(a6_sched11_e16, location, stop6_e16).
prop(a6_sched11_e16, time, N) :- prop(sched11_e16, startTime, Y),add(Y,85,N).

prop(a0_sched12_e16, location, stop0_e16).
prop(a0_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,0,N).
prop(a1_sched12_e16, location, stop1_e16).
prop(a1_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,9,N).
prop(a2_sched12_e16, location, stop2_e16).
prop(a2_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,25,N).
prop(a3_sched12_e16, location, stop3_e16).
prop(a3_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,40,N).
prop(a4_sched12_e16, location, stop4_e16).
prop(a4_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,58,N).
prop(a5_sched12_e16, location, stop5_e16).
prop(a5_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,74,N).
prop(a6_sched12_e16, location, stop6_e16).
prop(a6_sched12_e16, time, N) :- prop(sched12_e16, startTime, Y),add(Y,85,N).

%line99 has westbound and eastbound routes
prop(line99, route, westbound99).
prop(line99, route, eastbound99).

%the westbound route has stops stop0_w99 through stop19_w99
prop(westbound99, stop, stop0_w99).
prop(westbound99, stop, stop1_w99).
prop(westbound99, stop, stop2_w99).
prop(westbound99, stop, stop3_w99).
prop(westbound99, stop, stop4_w99).
prop(westbound99, stop, stop5_w99).
prop(westbound99, stop, stop6_w99).
prop(westbound99, stop, stop7_w99).
prop(westbound99, stop, stop8_w99).
prop(westbound99, stop, stop9_w99).
prop(westbound99, stop, stop10_w99).
prop(westbound99, stop, stop11_w99).
prop(westbound99, stop, stop12_w99).
prop(westbound99, stop, stop13_w99).
prop(westbound99, stop, stop14_w99).
%prop(westbound99, stop, stop15_w99).
prop(westbound99, stop, stop16_w99).
prop(westbound99, stop, stop17_w99).
prop(westbound99, stop, stop18_w99).
prop(westbound99, stop, stop19_w99).

%the eastbound route has stops stop0_e99 through stop13_e99
prop(eastbound99, stop, stop0_e99).
prop(eastbound99, stop, stop1_e99).
prop(eastbound99, stop, stop2_e99).
prop(eastbound99, stop, stop3_e99).
prop(eastbound99, stop, stop4_e99).
prop(eastbound99, stop, stop5_e99).
prop(eastbound99, stop, stop6_e99).
prop(eastbound99, stop, stop7_e99).
prop(eastbound99, stop, stop8_e99).
prop(eastbound99, stop, stop9_e99).
prop(eastbound99, stop, stop10_e99).
prop(eastbound99, stop, stop11_e99).
prop(eastbound99, stop, stop12_e99).
prop(eastbound99, stop, stop13_e99).

%stop0_w99 is at boundary loop
prop(stop0_w99, location, loc(loughheed_highway,boundary_loop)).

%stop1_w99 is at rupert st
prop(stop1_w99, location, loc(e_broadway,rupert_st)).

%stopn_w99 is at x...
prop(stop2_w99, location, loc(e_broadway,renfrew_st)).
prop(stop3_w99, location, loc(e_broadway,penticton_st)).
prop(stop4_w99, location, loc(e_broadway,nanaimo_st)).
prop(stop5_w99, location, loc(n_grandview_highway,commercial_dr)).
prop(stop6_w99, location, loc(e_broadway,commercial_bay_2)).
prop(stop7_w99, location, loc(e_broadway,clark_dr)).
prop(stop8_w99, location, loc(e_broadway,fraser_st)).
prop(stop9_w99, location, loc(e_broadway,main_st)).
prop(stop10_w99, location, loc(w_broadway,cambie_st)).
prop(stop11_w99, location, loc(w_broadway,willow_st)).
prop(stop12_w99, location, loc(w_broadway,granville_st)).
prop(stop13_w99, location, loc(w_broadway,arbutus_st)).
prop(stop14_w99, location, loc(w_broadway,macdonald_st)).
prop(stop15_w99, location, loc(alma_st,w_10_ave)).
prop(stop16_w99, location, loc(w_broadway,alma_st)).
prop(stop17_w99, location, loc(w_10_ave,sasamat_st)).
prop(stop18_w99, location, loc(university_blvd, allison_rd)).
prop(stop19_w99, location, loc(ubc_loop, bay_4)).

%stop0_e99 is at boundary loop
prop(stop0_e99, location, loc(ubc_loop, bay_6)).

%stop1_e99 is at rupert st
prop(stop1_e99, location, loc(university_blvd, allison_rd)).

%stopn_e99 is at x...
prop(stop2_e99, location, loc(w_10_ave, sasamat_st)).
prop(stop3_e99, location, loc(w_broadway, alma_st)).
prop(stop4_e99, location, loc(w_broadway, macdonald_st)).
prop(stop5_e99, location, loc(w_broadway, arbutus_st)).
prop(stop6_e99, location, loc(w_broadway, granville_st)).
prop(stop7_e99, location, loc(w_broadway, heather_st)).
prop(stop8_e99, location, loc(w_broadway, cambie_st)).
prop(stop9_e99, location, loc(e_broadway, main_st)).
prop(stop10_e99, location, loc(e_broadway, fraser_st)).
prop(stop11_e99, location, loc(e_broadway, clark_dr)).
prop(stop12_e99, location, loc(commercial_dr, n_grandview_highway)).
prop(stop13_e99, location, loc(n_grandview_highway, commercial_dr)).

%Westbound route has busn_w99
prop(westbound99, bus, bus0_w99).
prop(westbound99, bus, bus1_w99).
prop(westbound99, bus, bus2_w99).
prop(westbound99, bus, bus3_w99).
prop(westbound99, bus, bus4_w99).
prop(westbound99, bus, bus5_w99).
prop(westbound99, bus, bus6_w99).
prop(westbound99, bus, bus7_w99).
prop(westbound99, bus, bus8_w99).
prop(westbound99, bus, bus9_w99).

%eastbound route has busn_e99
prop(eastbound99, bus, bus0_e99).
prop(eastbound99, bus, bus1_e99).
prop(eastbound99, bus, bus2_e99).
prop(eastbound99, bus, bus3_e99).
prop(eastbound99, bus, bus4_e99).
prop(eastbound99, bus, bus5_e99).
prop(eastbound99, bus, bus6_e99).
prop(eastbound99, bus, bus7_e99).
prop(eastbound99, bus, bus8_e99).
prop(eastbound99, bus, bus9_e99).
prop(eastbound99, bus, bus10_e99).
prop(eastbound99, bus, bus11_e99).
prop(eastbound99, bus, bus12_e99).
prop(eastbound99, bus, bus13_e99).
prop(eastbound99, bus, bus14_e99).
prop(eastbound99, bus, bus15_e99).
prop(eastbound99, bus, bus16_e99).

%busn_w99 has a schedule
prop(bus0_w99, schedule, sched0_w99).
prop(bus1_w99, schedule, sched1_w99).
prop(bus2_w99, schedule, sched2_w99).
prop(bus3_w99, schedule, sched3_w99).
prop(bus4_w99, schedule, sched4_w99).
prop(bus5_w99, schedule, sched5_w99).
prop(bus6_w99, schedule, sched6_w99).
prop(bus7_w99, schedule, sched7_w99).
prop(bus8_w99, schedule, sched8_w99).
prop(bus9_w99, schedule, sched9_w99).

%busn_e99 has a schedule
prop(bus0_e99, schedule, sched0_e99).
prop(bus1_e99, schedule, sched1_e99).
prop(bus2_e99, schedule, sched2_e99).
prop(bus3_e99, schedule, sched3_e99).
prop(bus4_e99, schedule, sched4_e99).
prop(bus5_e99, schedule, sched5_e99).
prop(bus6_e99, schedule, sched6_e99).
prop(bus7_e99, schedule, sched7_e99).
prop(bus8_e99, schedule, sched8_e99).
prop(bus9_e99, schedule, sched9_e99).
prop(bus10_e99, schedule, sched10_e99).
prop(bus11_e99, schedule, sched11_e99).
prop(bus12_e99, schedule, sched12_e99).
prop(bus13_e99, schedule, sched13_e99).
prop(bus14_e99, schedule, sched14_e99).
prop(bus15_e99, schedule, sched15_e99).
prop(bus16_e99, schedule, sched16_e99).

%the schedule has a start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_w99, startTime, clock(05,41)).
%the schedule has an arrival a0_schedn_w99
prop(sched0_w99, arrival, a0_sched0_w99).
%schedn_w99 has an arrival at a1_shedn_w99
prop(sched0_w99, arrival, a1_sched0_w99).
%schedn_w99 has an arrival at...
prop(sched0_w99, arrival, a2_sched0_w99).
prop(sched0_w99, arrival, a3_sched0_w99).
prop(sched0_w99, arrival, a4_sched0_w99).
prop(sched0_w99, arrival, a5_sched0_w99).
prop(sched0_w99, arrival, a6_sched0_w99).
prop(sched0_w99, arrival, a7_sched0_w99).
prop(sched0_w99, arrival, a8_sched0_w99).
prop(sched0_w99, arrival, a9_sched0_w99).
prop(sched0_w99, arrival, a10_sched0_w99).
prop(sched0_w99, arrival, a11_sched0_w99).
prop(sched0_w99, arrival, a12_sched0_w99).
prop(sched0_w99, arrival, a13_sched0_w99).
prop(sched0_w99, arrival, a14_sched0_w99).
prop(sched0_w99, arrival, a15_sched0_w99).
prop(sched0_w99, arrival, a16_sched0_w99).
prop(sched0_w99, arrival, a17_sched0_w99).
prop(sched0_w99, arrival, a18_sched0_w99).

prop(sched1_w99, startTime, clock(06,25)).
prop(sched1_w99, arrival, a0_sched1_w99).
prop(sched1_w99, arrival, a1_sched1_w99).
prop(sched1_w99, arrival, a2_sched1_w99).
prop(sched1_w99, arrival, a3_sched1_w99).
prop(sched1_w99, arrival, a4_sched1_w99).
prop(sched1_w99, arrival, a5_sched1_w99).
prop(sched1_w99, arrival, a6_sched1_w99).
prop(sched1_w99, arrival, a7_sched1_w99).
prop(sched1_w99, arrival, a8_sched1_w99).
prop(sched1_w99, arrival, a9_sched1_w99).
prop(sched1_w99, arrival, a10_sched1_w99).
prop(sched1_w99, arrival, a11_sched1_w99).
prop(sched1_w99, arrival, a12_sched1_w99).
prop(sched1_w99, arrival, a13_sched1_w99).
prop(sched1_w99, arrival, a14_sched1_w99).
prop(sched1_w99, arrival, a15_sched1_w99).
prop(sched1_w99, arrival, a16_sched1_w99).
prop(sched1_w99, arrival, a17_sched1_w99).
prop(sched1_w99, arrival, a18_sched1_w99).

prop(sched2_w99, startTime, clock(07,36)).
prop(sched2_w99, arrival, a0_sched2_w99).
prop(sched2_w99, arrival, a1_sched2_w99).
prop(sched2_w99, arrival, a2_sched2_w99).
prop(sched2_w99, arrival, a3_sched2_w99).
prop(sched2_w99, arrival, a4_sched2_w99).
prop(sched2_w99, arrival, a5_sched2_w99).
prop(sched2_w99, arrival, a6_sched2_w99).
prop(sched2_w99, arrival, a7_sched2_w99).
prop(sched2_w99, arrival, a8_sched2_w99).
prop(sched2_w99, arrival, a9_sched2_w99).
prop(sched2_w99, arrival, a10_sched2_w99).
prop(sched2_w99, arrival, a11_sched2_w99).
prop(sched2_w99, arrival, a12_sched2_w99).
prop(sched2_w99, arrival, a13_sched2_w99).
prop(sched2_w99, arrival, a14_sched2_w99).
prop(sched2_w99, arrival, a15_sched2_w99).
prop(sched2_w99, arrival, a16_sched2_w99).
prop(sched2_w99, arrival, a17_sched2_w99).
prop(sched2_w99, arrival, a18_sched2_w99).

prop(sched3_w99, startTime, clock(08,25)).
prop(sched3_w99, arrival, a0_sched3_w99).
prop(sched3_w99, arrival, a1_sched3_w99).
prop(sched3_w99, arrival, a2_sched3_w99).
prop(sched3_w99, arrival, a3_sched3_w99).
prop(sched3_w99, arrival, a4_sched3_w99).
prop(sched3_w99, arrival, a5_sched3_w99).
prop(sched3_w99, arrival, a6_sched3_w99).
prop(sched3_w99, arrival, a7_sched3_w99).
prop(sched3_w99, arrival, a8_sched3_w99).
prop(sched3_w99, arrival, a9_sched3_w99).
prop(sched3_w99, arrival, a10_sched3_w99).
prop(sched3_w99, arrival, a11_sched3_w99).
prop(sched3_w99, arrival, a12_sched3_w99).
prop(sched3_w99, arrival, a13_sched3_w99).
prop(sched3_w99, arrival, a14_sched3_w99).
prop(sched3_w99, arrival, a15_sched3_w99).
prop(sched3_w99, arrival, a16_sched3_w99).
prop(sched3_w99, arrival, a17_sched3_w99).
prop(sched3_w99, arrival, a18_sched3_w99).

prop(sched4_w99, startTime, clock(09,31)).
prop(sched4_w99, arrival, a0_sched4_w99).
prop(sched4_w99, arrival, a1_sched4_w99).
prop(sched4_w99, arrival, a2_sched4_w99).
prop(sched4_w99, arrival, a3_sched4_w99).
prop(sched4_w99, arrival, a4_sched4_w99).
prop(sched4_w99, arrival, a5_sched4_w99).
prop(sched4_w99, arrival, a6_sched4_w99).
prop(sched4_w99, arrival, a7_sched4_w99).
prop(sched4_w99, arrival, a8_sched4_w99).
prop(sched4_w99, arrival, a9_sched4_w99).
prop(sched4_w99, arrival, a10_sched4_w99).
prop(sched4_w99, arrival, a11_sched4_w99).
prop(sched4_w99, arrival, a12_sched4_w99).
prop(sched4_w99, arrival, a13_sched4_w99).
prop(sched4_w99, arrival, a14_sched4_w99).
prop(sched4_w99, arrival, a15_sched4_w99).
prop(sched4_w99, arrival, a16_sched4_w99).
prop(sched4_w99, arrival, a17_sched4_w99).
prop(sched4_w99, arrival, a18_sched4_w99).

prop(sched5_w99, startTime, clock(10,42)).
prop(sched5_w99, arrival, a0_sched5_w99).
prop(sched5_w99, arrival, a1_sched5_w99).
prop(sched5_w99, arrival, a2_sched5_w99).
prop(sched5_w99, arrival, a3_sched5_w99).
prop(sched5_w99, arrival, a4_sched5_w99).
prop(sched5_w99, arrival, a5_sched5_w99).
prop(sched5_w99, arrival, a6_sched5_w99).
prop(sched5_w99, arrival, a7_sched5_w99).
prop(sched5_w99, arrival, a8_sched5_w99).
prop(sched5_w99, arrival, a9_sched5_w99).
prop(sched5_w99, arrival, a10_sched5_w99).
prop(sched5_w99, arrival, a11_sched5_w99).
prop(sched5_w99, arrival, a12_sched5_w99).
prop(sched5_w99, arrival, a13_sched5_w99).
prop(sched5_w99, arrival, a14_sched5_w99).
prop(sched5_w99, arrival, a15_sched5_w99).
prop(sched5_w99, arrival, a16_sched5_w99).
prop(sched5_w99, arrival, a17_sched5_w99).
prop(sched5_w99, arrival, a18_sched5_w99).

prop(sched6_w99, startTime, clock(11,27)).
prop(sched6_w99, arrival, a0_sched6_w99).
prop(sched6_w99, arrival, a1_sched6_w99).
prop(sched6_w99, arrival, a2_sched6_w99).
prop(sched6_w99, arrival, a3_sched6_w99).
prop(sched6_w99, arrival, a4_sched6_w99).
prop(sched6_w99, arrival, a5_sched6_w99).
prop(sched6_w99, arrival, a6_sched6_w99).
prop(sched6_w99, arrival, a7_sched6_w99).
prop(sched6_w99, arrival, a8_sched6_w99).
prop(sched6_w99, arrival, a9_sched6_w99).
prop(sched6_w99, arrival, a10_sched6_w99).
prop(sched6_w99, arrival, a11_sched6_w99).
prop(sched6_w99, arrival, a12_sched6_w99).
prop(sched6_w99, arrival, a13_sched6_w99).
prop(sched6_w99, arrival, a14_sched6_w99).
prop(sched6_w99, arrival, a15_sched6_w99).
prop(sched6_w99, arrival, a16_sched6_w99).
prop(sched6_w99, arrival, a17_sched6_w99).
prop(sched6_w99, arrival, a18_sched6_w99).

prop(sched7_w99, startTime, clock(12,38)).
prop(sched7_w99, arrival, a0_sched7_w99).
prop(sched7_w99, arrival, a1_sched7_w99).
prop(sched7_w99, arrival, a2_sched7_w99).
prop(sched7_w99, arrival, a3_sched7_w99).
prop(sched7_w99, arrival, a4_sched7_w99).
prop(sched7_w99, arrival, a5_sched7_w99).
prop(sched7_w99, arrival, a6_sched7_w99).
prop(sched7_w99, arrival, a7_sched7_w99).
prop(sched7_w99, arrival, a8_sched7_w99).
prop(sched7_w99, arrival, a9_sched7_w99).
prop(sched7_w99, arrival, a10_sched7_w99).
prop(sched7_w99, arrival, a11_sched7_w99).
prop(sched7_w99, arrival, a12_sched7_w99).
prop(sched7_w99, arrival, a13_sched7_w99).
prop(sched7_w99, arrival, a14_sched7_w99).
prop(sched7_w99, arrival, a15_sched7_w99).
prop(sched7_w99, arrival, a16_sched7_w99).
prop(sched7_w99, arrival, a17_sched7_w99).
prop(sched7_w99, arrival, a18_sched7_w99).

prop(sched8_w99, startTime, clock(13,22)).
prop(sched8_w99, arrival, a0_sched8_w99).
prop(sched8_w99, arrival, a1_sched8_w99).
prop(sched8_w99, arrival, a2_sched8_w99).
prop(sched8_w99, arrival, a3_sched8_w99).
prop(sched8_w99, arrival, a4_sched8_w99).
prop(sched8_w99, arrival, a5_sched8_w99).
prop(sched8_w99, arrival, a6_sched8_w99).
prop(sched8_w99, arrival, a7_sched8_w99).
prop(sched8_w99, arrival, a8_sched8_w99).
prop(sched8_w99, arrival, a9_sched8_w99).
prop(sched8_w99, arrival, a10_sched8_w99).
prop(sched8_w99, arrival, a11_sched8_w99).
prop(sched8_w99, arrival, a12_sched8_w99).
prop(sched8_w99, arrival, a13_sched8_w99).
prop(sched8_w99, arrival, a14_sched8_w99).
prop(sched8_w99, arrival, a15_sched8_w99).
prop(sched8_w99, arrival, a16_sched8_w99).
prop(sched8_w99, arrival, a17_sched8_w99).
prop(sched8_w99, arrival, a18_sched8_w99).

prop(sched9_w99, startTime, clock(14,03)).
prop(sched9_w99, arrival, a0_sched9_w99).
prop(sched9_w99, arrival, a1_sched9_w99).
prop(sched9_w99, arrival, a2_sched9_w99).
prop(sched9_w99, arrival, a3_sched9_w99).
prop(sched9_w99, arrival, a4_sched9_w99).
prop(sched9_w99, arrival, a5_sched9_w99).
prop(sched9_w99, arrival, a6_sched9_w99).
prop(sched9_w99, arrival, a7_sched9_w99).
prop(sched9_w99, arrival, a8_sched9_w99).
prop(sched9_w99, arrival, a9_sched9_w99).
prop(sched9_w99, arrival, a10_sched9_w99).
prop(sched9_w99, arrival, a11_sched9_w99).
prop(sched9_w99, arrival, a12_sched9_w99).
prop(sched9_w99, arrival, a13_sched9_w99).
prop(sched9_w99, arrival, a14_sched9_w99).
prop(sched9_w99, arrival, a15_sched9_w99).
prop(sched9_w99, arrival, a16_sched9_w99).
prop(sched9_w99, arrival, a17_sched9_w99).
prop(sched9_w99, arrival, a18_sched9_w99).

%the schedule has a start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_e99, startTime, clock(06,15)).
%the schedule has an arrival a0_schedn_e99
prop(sched0_e99, arrival, a0_sched0_e99).
%schedn_e99 has an arrival at a1_shedn_e99
prop(sched0_e99, arrival, a1_sched0_e99).
%schedn_e99 has an arrival at...
prop(sched0_e99, arrival, a2_sched0_e99).
prop(sched0_e99, arrival, a3_sched0_e99).
prop(sched0_e99, arrival, a4_sched0_e99).
prop(sched0_e99, arrival, a5_sched0_e99).
prop(sched0_e99, arrival, a6_sched0_e99).
prop(sched0_e99, arrival, a7_sched0_e99).
prop(sched0_e99, arrival, a8_sched0_e99).
prop(sched0_e99, arrival, a9_sched0_e99).
prop(sched0_e99, arrival, a10_sched0_e99).
prop(sched0_e99, arrival, a11_sched0_e99).
prop(sched0_e99, arrival, a12_sched0_e99).
prop(sched0_e99, arrival, a13_sched0_e99).

prop(sched1_e99, startTime, clock(07,25)).
prop(sched1_e99, arrival, a0_sched1_e99).
prop(sched1_e99, arrival, a1_sched1_e99).
prop(sched1_e99, arrival, a2_sched1_e99).
prop(sched1_e99, arrival, a3_sched1_e99).
prop(sched1_e99, arrival, a4_sched1_e99).
prop(sched1_e99, arrival, a5_sched1_e99).
prop(sched1_e99, arrival, a6_sched1_e99).
prop(sched1_e99, arrival, a7_sched1_e99).
prop(sched1_e99, arrival, a8_sched1_e99).
prop(sched1_e99, arrival, a9_sched1_e99).
prop(sched1_e99, arrival, a10_sched1_e99).
prop(sched1_e99, arrival, a11_sched1_e99).
prop(sched1_e99, arrival, a12_sched1_e99).
prop(sched1_e99, arrival, a13_sched1_e99).

prop(sched2_e99, startTime, clock(08,36)).
prop(sched2_e99, arrival, a0_sched2_e99).
prop(sched2_e99, arrival, a1_sched2_e99).
prop(sched2_e99, arrival, a2_sched2_e99).
prop(sched2_e99, arrival, a3_sched2_e99).
prop(sched2_e99, arrival, a4_sched2_e99).
prop(sched2_e99, arrival, a5_sched2_e99).
prop(sched2_e99, arrival, a6_sched2_e99).
prop(sched2_e99, arrival, a7_sched2_e99).
prop(sched2_e99, arrival, a8_sched2_e99).
prop(sched2_e99, arrival, a9_sched2_e99).
prop(sched2_e99, arrival, a10_sched2_e99).
prop(sched2_e99, arrival, a11_sched2_e99).
prop(sched2_e99, arrival, a12_sched2_e99).
prop(sched2_e99, arrival, a13_sched2_e99).

prop(sched3_e99, startTime, clock(09,25)).
prop(sched3_e99, arrival, a0_sched3_e99).
prop(sched3_e99, arrival, a1_sched3_e99).
prop(sched3_e99, arrival, a2_sched3_e99).
prop(sched3_e99, arrival, a3_sched3_e99).
prop(sched3_e99, arrival, a4_sched3_e99).
prop(sched3_e99, arrival, a5_sched3_e99).
prop(sched3_e99, arrival, a6_sched3_e99).
prop(sched3_e99, arrival, a7_sched3_e99).
prop(sched3_e99, arrival, a8_sched3_e99).
prop(sched3_e99, arrival, a9_sched3_e99).
prop(sched3_e99, arrival, a10_sched3_e99).
prop(sched3_e99, arrival, a11_sched3_e99).
prop(sched3_e99, arrival, a12_sched3_e99).
prop(sched3_e99, arrival, a13_sched3_e99).

prop(sched4_e99, startTime, clock(10,31)).
prop(sched4_e99, arrival, a0_sched4_e99).
prop(sched4_e99, arrival, a1_sched4_e99).
prop(sched4_e99, arrival, a2_sched4_e99).
prop(sched4_e99, arrival, a3_sched4_e99).
prop(sched4_e99, arrival, a4_sched4_e99).
prop(sched4_e99, arrival, a5_sched4_e99).
prop(sched4_e99, arrival, a6_sched4_e99).
prop(sched4_e99, arrival, a7_sched4_e99).
prop(sched4_e99, arrival, a8_sched4_e99).
prop(sched4_e99, arrival, a9_sched4_e99).
prop(sched4_e99, arrival, a10_sched4_e99).
prop(sched4_e99, arrival, a11_sched4_e99).
prop(sched4_e99, arrival, a12_sched4_e99).
prop(sched4_e99, arrival, a13_sched4_e99).

prop(sched5_e99, startTime, clock(11,42)).
prop(sched5_e99, arrival, a0_sched5_e99).
prop(sched5_e99, arrival, a1_sched5_e99).
prop(sched5_e99, arrival, a2_sched5_e99).
prop(sched5_e99, arrival, a3_sched5_e99).
prop(sched5_e99, arrival, a4_sched5_e99).
prop(sched5_e99, arrival, a5_sched5_e99).
prop(sched5_e99, arrival, a6_sched5_e99).
prop(sched5_e99, arrival, a7_sched5_e99).
prop(sched5_e99, arrival, a8_sched5_e99).
prop(sched5_e99, arrival, a9_sched5_e99).
prop(sched5_e99, arrival, a10_sched5_e99).
prop(sched5_e99, arrival, a11_sched5_e99).
prop(sched5_e99, arrival, a12_sched5_e99).
prop(sched5_e99, arrival, a13_sched5_e99).

prop(sched6_e99, startTime, clock(12,27)).
prop(sched6_e99, arrival, a0_sched6_e99).
prop(sched6_e99, arrival, a1_sched6_e99).
prop(sched6_e99, arrival, a2_sched6_e99).
prop(sched6_e99, arrival, a3_sched6_e99).
prop(sched6_e99, arrival, a4_sched6_e99).
prop(sched6_e99, arrival, a5_sched6_e99).
prop(sched6_e99, arrival, a6_sched6_e99).
prop(sched6_e99, arrival, a7_sched6_e99).
prop(sched6_e99, arrival, a8_sched6_e99).
prop(sched6_e99, arrival, a9_sched6_e99).
prop(sched6_e99, arrival, a10_sched6_e99).
prop(sched6_e99, arrival, a11_sched6_e99).
prop(sched6_e99, arrival, a12_sched6_e99).
prop(sched6_e99, arrival, a13_sched6_e99).

prop(sched7_e99, startTime, clock(13,38)).
prop(sched7_e99, arrival, a0_sched7_e99).
prop(sched7_e99, arrival, a1_sched7_e99).
prop(sched7_e99, arrival, a2_sched7_e99).
prop(sched7_e99, arrival, a3_sched7_e99).
prop(sched7_e99, arrival, a4_sched7_e99).
prop(sched7_e99, arrival, a5_sched7_e99).
prop(sched7_e99, arrival, a6_sched7_e99).
prop(sched7_e99, arrival, a7_sched7_e99).
prop(sched7_e99, arrival, a8_sched7_e99).
prop(sched7_e99, arrival, a9_sched7_e99).
prop(sched7_e99, arrival, a10_sched7_e99).
prop(sched7_e99, arrival, a11_sched7_e99).
prop(sched7_e99, arrival, a12_sched7_e99).
prop(sched7_e99, arrival, a13_sched7_e99).

prop(sched8_e99, startTime, clock(14,22)).
prop(sched8_e99, arrival, a0_sched8_e99).
prop(sched8_e99, arrival, a1_sched8_e99).
prop(sched8_e99, arrival, a2_sched8_e99).
prop(sched8_e99, arrival, a3_sched8_e99).
prop(sched8_e99, arrival, a4_sched8_e99).
prop(sched8_e99, arrival, a5_sched8_e99).
prop(sched8_e99, arrival, a6_sched8_e99).
prop(sched8_e99, arrival, a7_sched8_e99).
prop(sched8_e99, arrival, a8_sched8_e99).
prop(sched8_e99, arrival, a9_sched8_e99).
prop(sched8_e99, arrival, a10_sched8_e99).
prop(sched8_e99, arrival, a11_sched8_e99).
prop(sched8_e99, arrival, a12_sched8_e99).
prop(sched8_e99, arrival, a13_sched8_e99).

prop(sched9_e99, startTime, clock(15,03)).
prop(sched9_e99, arrival, a0_sched9_e99).
prop(sched9_e99, arrival, a1_sched9_e99).
prop(sched9_e99, arrival, a2_sched9_e99).
prop(sched9_e99, arrival, a3_sched9_e99).
prop(sched9_e99, arrival, a4_sched9_e99).
prop(sched9_e99, arrival, a5_sched9_e99).
prop(sched9_e99, arrival, a6_sched9_e99).
prop(sched9_e99, arrival, a7_sched9_e99).
prop(sched9_e99, arrival, a8_sched9_e99).
prop(sched9_e99, arrival, a9_sched9_e99).
prop(sched9_e99, arrival, a10_sched9_e99).
prop(sched9_e99, arrival, a11_sched9_e99).
prop(sched9_e99, arrival, a12_sched9_e99).
prop(sched9_e99, arrival, a13_sched9_e99).

prop(sched10_e99, startTime, clock(16,13)).
prop(sched10_e99, arrival, a0_sched10_e99).
prop(sched10_e99, arrival, a1_sched10_e99).
prop(sched10_e99, arrival, a2_sched10_e99).
prop(sched10_e99, arrival, a3_sched10_e99).
prop(sched10_e99, arrival, a4_sched10_e99).
prop(sched10_e99, arrival, a5_sched10_e99).
prop(sched10_e99, arrival, a6_sched10_e99).
prop(sched10_e99, arrival, a7_sched10_e99).
prop(sched10_e99, arrival, a8_sched10_e99).
prop(sched10_e99, arrival, a9_sched10_e99).
prop(sched10_e99, arrival, a10_sched10_e99).
prop(sched10_e99, arrival, a11_sched10_e99).
prop(sched10_e99, arrival, a12_sched10_e99).
prop(sched10_e99, arrival, a13_sched10_e99).

prop(sched11_e99, startTime, clock(17,09)).
prop(sched11_e99, arrival, a0_sched11_e99).
prop(sched11_e99, arrival, a1_sched11_e99).
prop(sched11_e99, arrival, a2_sched11_e99).
prop(sched11_e99, arrival, a3_sched11_e99).
prop(sched11_e99, arrival, a4_sched11_e99).
prop(sched11_e99, arrival, a5_sched11_e99).
prop(sched11_e99, arrival, a6_sched11_e99).
prop(sched11_e99, arrival, a7_sched11_e99).
prop(sched11_e99, arrival, a8_sched11_e99).
prop(sched11_e99, arrival, a9_sched11_e99).
prop(sched11_e99, arrival, a10_sched11_e99).
prop(sched11_e99, arrival, a11_sched11_e99).
prop(sched11_e99, arrival, a12_sched11_e99).
prop(sched11_e99, arrival, a13_sched11_e99).

prop(sched12_e99, startTime, clock(18,11)).
prop(sched12_e99, arrival, a0_sched12_e99).
prop(sched12_e99, arrival, a1_sched12_e99).
prop(sched12_e99, arrival, a2_sched12_e99).
prop(sched12_e99, arrival, a3_sched12_e99).
prop(sched12_e99, arrival, a4_sched12_e99).
prop(sched12_e99, arrival, a5_sched12_e99).
prop(sched12_e99, arrival, a6_sched12_e99).
prop(sched12_e99, arrival, a7_sched12_e99).
prop(sched12_e99, arrival, a8_sched12_e99).
prop(sched12_e99, arrival, a9_sched12_e99).
prop(sched12_e99, arrival, a10_sched12_e99).
prop(sched12_e99, arrival, a11_sched12_e99).
prop(sched12_e99, arrival, a12_sched12_e99).
prop(sched12_e99, arrival, a13_sched12_e99).

prop(sched13_e99, startTime, clock(19,23)).
prop(sched13_e99, arrival, a0_sched13_e99).
prop(sched13_e99, arrival, a1_sched13_e99).
prop(sched13_e99, arrival, a2_sched13_e99).
prop(sched13_e99, arrival, a3_sched13_e99).
prop(sched13_e99, arrival, a4_sched13_e99).
prop(sched13_e99, arrival, a5_sched13_e99).
prop(sched13_e99, arrival, a6_sched13_e99).
prop(sched13_e99, arrival, a7_sched13_e99).
prop(sched13_e99, arrival, a8_sched13_e99).
prop(sched13_e99, arrival, a9_sched13_e99).
prop(sched13_e99, arrival, a10_sched13_e99).
prop(sched13_e99, arrival, a11_sched13_e99).
prop(sched13_e99, arrival, a12_sched13_e99).
prop(sched13_e99, arrival, a13_sched13_e99).

prop(sched14_e99, startTime, clock(20,17)).
prop(sched14_e99, arrival, a0_sched14_e99).
prop(sched14_e99, arrival, a1_sched14_e99).
prop(sched14_e99, arrival, a2_sched14_e99).
prop(sched14_e99, arrival, a3_sched14_e99).
prop(sched14_e99, arrival, a4_sched14_e99).
prop(sched14_e99, arrival, a5_sched14_e99).
prop(sched14_e99, arrival, a6_sched14_e99).
prop(sched14_e99, arrival, a7_sched14_e99).
prop(sched14_e99, arrival, a8_sched14_e99).
prop(sched14_e99, arrival, a9_sched14_e99).
prop(sched14_e99, arrival, a10_sched14_e99).
prop(sched14_e99, arrival, a11_sched14_e99).
prop(sched14_e99, arrival, a12_sched14_e99).
prop(sched14_e99, arrival, a13_sched14_e99).

prop(sched15_e99, startTime, clock(21,26)).
prop(sched15_e99, arrival, a0_sched15_e99).
prop(sched15_e99, arrival, a1_sched15_e99).
prop(sched15_e99, arrival, a2_sched15_e99).
prop(sched15_e99, arrival, a3_sched15_e99).
prop(sched15_e99, arrival, a4_sched15_e99).
prop(sched15_e99, arrival, a5_sched15_e99).
prop(sched15_e99, arrival, a6_sched15_e99).
prop(sched15_e99, arrival, a7_sched15_e99).
prop(sched15_e99, arrival, a8_sched15_e99).
prop(sched15_e99, arrival, a9_sched15_e99).
prop(sched15_e99, arrival, a10_sched15_e99).
prop(sched15_e99, arrival, a11_sched15_e99).
prop(sched15_e99, arrival, a12_sched15_e99).
prop(sched15_e99, arrival, a13_sched15_e99).

prop(sched16_e99, startTime, clock(22,30)).
prop(sched16_e99, arrival, a0_sched16_e99).
prop(sched16_e99, arrival, a1_sched16_e99).
prop(sched16_e99, arrival, a2_sched16_e99).
prop(sched16_e99, arrival, a3_sched16_e99).
prop(sched16_e99, arrival, a4_sched16_e99).
prop(sched16_e99, arrival, a5_sched16_e99).
prop(sched16_e99, arrival, a6_sched16_e99).
prop(sched16_e99, arrival, a7_sched16_e99).
prop(sched16_e99, arrival, a8_sched16_e99).
prop(sched16_e99, arrival, a9_sched16_e99).
prop(sched16_e99, arrival, a10_sched16_e99).
prop(sched16_e99, arrival, a11_sched16_e99).
prop(sched16_e99, arrival, a12_sched16_e99).
prop(sched16_e99, arrival, a13_sched16_e99).

%an_sched0_w99 is at stopm_w99...
prop(a0_sched0_w99, location, stop0_w99).
prop(a0_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,0,N).
prop(a1_sched0_w99, location, stop11_w99).
prop(a1_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,1,N).
prop(a2_sched0_w99, location, stop2_w99).
prop(a2_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,2,N).
prop(a3_sched0_w99, location, stop3_w99).
prop(a3_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,3,N).
prop(a4_sched0_w99, location, stop4_w99).
prop(a4_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,4,N).
prop(a5_sched0_w99, location, stop5_w99).
prop(a5_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,6,N).
prop(a6_sched0_w99, location, stop6_w99).
prop(a6_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,7,N).
prop(a7_sched0_w99, location, stop7_w99).
prop(a7_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,9,N).
prop(a8_sched0_w99, location, stop8_w99).
prop(a8_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,10,N).
prop(a9_sched0_w99, location, stop9_w99).
prop(a9_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,13,N).
prop(a10_sched0_w99, location, stop10_w99).
prop(a10_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,14,N).
prop(a11_sched0_w99, location, stop11_w99).
prop(a11_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,16,N).
prop(a12_sched0_w99, location, stop12_w99).
prop(a12_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,19,N).
prop(a13_sched0_w99, location, stop13_w99).
prop(a13_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,21,N).
prop(a14_sched0_w99, location, stop14_w99).
prop(a14_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,24,N).
prop(a15_sched0_w99, location, stop16_w99).
prop(a15_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,29,N).
prop(a16_sched0_w99, location, stop17_w99).
prop(a16_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,34,N).
prop(a17_sched0_w99, location, stop18_w99).
prop(a17_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,39,N).
prop(a18_sched0_w99, location, stop19_w99).
prop(a18_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
                                add(Y,41,N).

%arrivals for sched1_w99
prop(a0_sched1_w99, location, stop0_w99).
prop(a0_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,0,N).
prop(a1_sched1_w99, location, stop11_w99).
prop(a1_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,1,N).
prop(a2_sched1_w99, location, stop2_w99).
prop(a2_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,2,N).
prop(a3_sched1_w99, location, stop3_w99).
prop(a3_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,3,N).
prop(a4_sched1_w99, location, stop4_w99).
prop(a4_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,4,N).
prop(a5_sched1_w99, location, stop5_w99).
prop(a5_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,6,N).
prop(a6_sched1_w99, location, stop6_w99).
prop(a6_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,7,N).
prop(a7_sched1_w99, location, stop7_w99).
prop(a7_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,9,N).
prop(a8_sched1_w99, location, stop8_w99).
prop(a8_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,10,N).
prop(a9_sched1_w99, location, stop9_w99).
prop(a9_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,13,N).
prop(a10_sched1_w99, location, stop10_w99).
prop(a10_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,14,N).
prop(a11_sched1_w99, location, stop11_w99).
prop(a11_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,16,N).
prop(a12_sched1_w99, location, stop12_w99).
prop(a12_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,19,N).
prop(a13_sched1_w99, location, stop13_w99).
prop(a13_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,21,N).
prop(a14_sched1_w99, location, stop14_w99).
prop(a14_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,24,N).
prop(a15_sched1_w99, location, stop16_w99).
prop(a15_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,29,N).
prop(a16_sched1_w99, location, stop17_w99).
prop(a16_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,34,N).
prop(a17_sched1_w99, location, stop18_w99).
prop(a17_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,39,N).
prop(a18_sched1_w99, location, stop19_w99).
prop(a18_sched1_w99, time, N) :- prop(sched1_w99, startTime, Y),
                                add(Y,41,N).

%arrivals for sched2_w99
prop(a0_sched2_w99, location, stop0_w99).
prop(a0_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,0,N).
prop(a1_sched2_w99, location, stop11_w99).
prop(a1_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,1,N).
prop(a2_sched2_w99, location, stop2_w99).
prop(a2_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,2,N).
prop(a3_sched2_w99, location, stop3_w99).
prop(a3_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,3,N).
prop(a4_sched2_w99, location, stop4_w99).
prop(a4_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,4,N).
prop(a5_sched2_w99, location, stop5_w99).
prop(a5_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,6,N).
prop(a6_sched2_w99, location, stop6_w99).
prop(a6_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,7,N).
prop(a7_sched2_w99, location, stop7_w99).
prop(a7_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,9,N).
prop(a8_sched2_w99, location, stop8_w99).
prop(a8_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,10,N).
prop(a9_sched2_w99, location, stop9_w99).
prop(a9_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,13,N).
prop(a10_sched2_w99, location, stop10_w99).
prop(a10_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,14,N).
prop(a11_sched2_w99, location, stop11_w99).
prop(a11_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,16,N).
prop(a12_sched2_w99, location, stop12_w99).
prop(a12_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,19,N).
prop(a13_sched2_w99, location, stop13_w99).
prop(a13_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,21,N).
prop(a14_sched2_w99, location, stop14_w99).
prop(a14_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,24,N).
prop(a15_sched2_w99, location, stop16_w99).
prop(a15_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,29,N).
prop(a16_sched2_w99, location, stop17_w99).
prop(a16_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,34,N).
prop(a17_sched2_w99, location, stop18_w99).
prop(a17_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,39,N).
prop(a18_sched2_w99, location, stop19_w99).
prop(a18_sched2_w99, time, N) :- prop(sched2_w99, startTime, Y),
                                add(Y,41,N).


%arrivals for sched3_w99
prop(a0_sched3_w99, location, stop0_w99).
prop(a0_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,0,N).
prop(a1_sched3_w99, location, stop11_w99).
prop(a1_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,1,N).
prop(a2_sched3_w99, location, stop2_w99).
prop(a2_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,2,N).
prop(a3_sched3_w99, location, stop3_w99).
prop(a3_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,3,N).
prop(a4_sched3_w99, location, stop4_w99).
prop(a4_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,4,N).
prop(a5_sched3_w99, location, stop5_w99).
prop(a5_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,6,N).
prop(a6_sched3_w99, location, stop6_w99).
prop(a6_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,7,N).
prop(a7_sched3_w99, location, stop7_w99).
prop(a7_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,9,N).
prop(a8_sched3_w99, location, stop8_w99).
prop(a8_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,10,N).
prop(a9_sched3_w99, location, stop9_w99).
prop(a9_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,13,N).
prop(a10_sched3_w99, location, stop10_w99).
prop(a10_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,14,N).
prop(a11_sched3_w99, location, stop11_w99).
prop(a11_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,16,N).
prop(a12_sched3_w99, location, stop12_w99).
prop(a12_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,19,N).
prop(a13_sched3_w99, location, stop13_w99).
prop(a13_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,21,N).
prop(a14_sched3_w99, location, stop14_w99).
prop(a14_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,24,N).
prop(a15_sched3_w99, location, stop16_w99).
prop(a15_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,29,N).
prop(a16_sched3_w99, location, stop17_w99).
prop(a16_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,34,N).
prop(a17_sched3_w99, location, stop18_w99).
prop(a17_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,39,N).
prop(a18_sched3_w99, location, stop19_w99).
prop(a18_sched3_w99, time, N) :- prop(sched3_w99, startTime, Y), add(Y,41,N).

%arrivals for sched4_w99
prop(a0_sched4_w99, location, stop0_w99).
prop(a0_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,0,N).
prop(a1_sched4_w99, location, stop11_w99).
prop(a1_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,1,N).
prop(a2_sched4_w99, location, stop2_w99).
prop(a2_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,2,N).
prop(a3_sched4_w99, location, stop3_w99).
prop(a3_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,3,N).
prop(a4_sched4_w99, location, stop4_w99).
prop(a4_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,4,N).
prop(a5_sched4_w99, location, stop5_w99).
prop(a5_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,6,N).
prop(a6_sched4_w99, location, stop6_w99).
prop(a6_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,7,N).
prop(a7_sched4_w99, location, stop7_w99).
prop(a7_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,9,N).
prop(a8_sched4_w99, location, stop8_w99).
prop(a8_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,10,N).
prop(a9_sched4_w99, location, stop9_w99).
prop(a9_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,13,N).
prop(a10_sched4_w99, location, stop10_w99).
prop(a10_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,14,N).
prop(a11_sched4_w99, location, stop11_w99).
prop(a11_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,16,N).
prop(a12_sched4_w99, location, stop12_w99).
prop(a12_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,19,N).
prop(a13_sched4_w99, location, stop13_w99).
prop(a13_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,21,N).
prop(a14_sched4_w99, location, stop14_w99).
prop(a14_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,24,N).
prop(a15_sched4_w99, location, stop16_w99).
prop(a15_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,29,N).
prop(a16_sched4_w99, location, stop17_w99).
prop(a16_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,34,N).
prop(a17_sched4_w99, location, stop18_w99).
prop(a17_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,39,N).
prop(a18_sched4_w99, location, stop19_w99).
prop(a18_sched4_w99, time, N) :- prop(sched4_w99, startTime, Y), add(Y,41,N).

%arrivals for sched5_w99
prop(a0_sched5_w99, location, stop0_w99).
prop(a0_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,0,N).
prop(a1_sched5_w99, location, stop11_w99).
prop(a1_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,1,N).
prop(a2_sched5_w99, location, stop2_w99).
prop(a2_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,2,N).
prop(a3_sched5_w99, location, stop3_w99).
prop(a3_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,3,N).
prop(a4_sched5_w99, location, stop4_w99).
prop(a4_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,4,N).
prop(a5_sched5_w99, location, stop5_w99).
prop(a5_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,6,N).
prop(a6_sched5_w99, location, stop6_w99).
prop(a6_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,7,N).
prop(a7_sched5_w99, location, stop7_w99).
prop(a7_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,9,N).
prop(a8_sched5_w99, location, stop8_w99).
prop(a8_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,10,N).
prop(a9_sched5_w99, location, stop9_w99).
prop(a9_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,13,N).
prop(a10_sched5_w99, location, stop10_w99).
prop(a10_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,14,N).
prop(a11_sched5_w99, location, stop11_w99).
prop(a11_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,16,N).
prop(a12_sched5_w99, location, stop12_w99).
prop(a12_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,19,N).
prop(a13_sched5_w99, location, stop13_w99).
prop(a13_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,21,N).
prop(a14_sched5_w99, location, stop14_w99).
prop(a14_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,24,N).
prop(a15_sched5_w99, location, stop16_w99).
prop(a15_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,29,N).
prop(a16_sched5_w99, location, stop17_w99).
prop(a16_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,34,N).
prop(a17_sched5_w99, location, stop18_w99).
prop(a17_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,39,N).
prop(a18_sched5_w99, location, stop19_w99).
prop(a18_sched5_w99, time, N) :- prop(sched5_w99, startTime, Y), add(Y,41,N).

%arrivals for sched6_w99
prop(a0_sched6_w99, location, stop0_w99).
prop(a0_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,0,N).
prop(a1_sched6_w99, location, stop11_w99).
prop(a1_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,1,N).
prop(a2_sched6_w99, location, stop2_w99).
prop(a2_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,2,N).
prop(a3_sched6_w99, location, stop3_w99).
prop(a3_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,3,N).
prop(a4_sched6_w99, location, stop4_w99).
prop(a4_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,4,N).
prop(a5_sched6_w99, location, stop5_w99).
prop(a5_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,6,N).
prop(a6_sched6_w99, location, stop6_w99).
prop(a6_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,7,N).
prop(a7_sched6_w99, location, stop7_w99).
prop(a7_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,9,N).
prop(a8_sched6_w99, location, stop8_w99).
prop(a8_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,10,N).
prop(a9_sched6_w99, location, stop9_w99).
prop(a9_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,13,N).
prop(a10_sched6_w99, location, stop10_w99).
prop(a10_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,14,N).
prop(a11_sched6_w99, location, stop11_w99).
prop(a11_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,16,N).
prop(a12_sched6_w99, location, stop12_w99).
prop(a12_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,19,N).
prop(a13_sched6_w99, location, stop13_w99).
prop(a13_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,21,N).
prop(a14_sched6_w99, location, stop14_w99).
prop(a14_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,24,N).
prop(a15_sched6_w99, location, stop16_w99).
prop(a15_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,29,N).
prop(a16_sched6_w99, location, stop17_w99).
prop(a16_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,34,N).
prop(a17_sched6_w99, location, stop18_w99).
prop(a17_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,39,N).
prop(a18_sched6_w99, location, stop19_w99).
prop(a18_sched6_w99, time, N) :- prop(sched6_w99, startTime, Y), add(Y,41,N).

%arrivals for sched7_w99
prop(a0_sched7_w99, location, stop0_w99).
prop(a0_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,0,N).
prop(a1_sched7_w99, location, stop11_w99).
prop(a1_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,1,N).
prop(a2_sched7_w99, location, stop2_w99).
prop(a2_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,2,N).
prop(a3_sched7_w99, location, stop3_w99).
prop(a3_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,3,N).
prop(a4_sched7_w99, location, stop4_w99).
prop(a4_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,4,N).
prop(a5_sched7_w99, location, stop5_w99).
prop(a5_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,6,N).
prop(a6_sched7_w99, location, stop6_w99).
prop(a6_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,7,N).
prop(a7_sched7_w99, location, stop7_w99).
prop(a7_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,9,N).
prop(a8_sched7_w99, location, stop8_w99).
prop(a8_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,10,N).
prop(a9_sched7_w99, location, stop9_w99).
prop(a9_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,13,N).
prop(a10_sched7_w99, location, stop10_w99).
prop(a10_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,14,N).
prop(a11_sched7_w99, location, stop11_w99).
prop(a11_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,16,N).
prop(a12_sched7_w99, location, stop12_w99).
prop(a12_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,19,N).
prop(a13_sched7_w99, location, stop13_w99).
prop(a13_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,21,N).
prop(a14_sched7_w99, location, stop14_w99).
prop(a14_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,24,N).
prop(a15_sched7_w99, location, stop16_w99).
prop(a15_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,29,N).
prop(a16_sched7_w99, location, stop17_w99).
prop(a16_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,34,N).
prop(a17_sched7_w99, location, stop18_w99).
prop(a17_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,39,N).
prop(a18_sched7_w99, location, stop19_w99).
prop(a18_sched7_w99, time, N) :- prop(sched7_w99, startTime, Y), add(Y,41,N).

%arrivals for sched8_w99
prop(a0_sched8_w99, location, stop0_w99).
prop(a0_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,0,N).
prop(a1_sched8_w99, location, stop11_w99).
prop(a1_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,1,N).
prop(a2_sched8_w99, location, stop2_w99).
prop(a2_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,2,N).
prop(a3_sched8_w99, location, stop3_w99).
prop(a3_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,3,N).
prop(a4_sched8_w99, location, stop4_w99).
prop(a4_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,4,N).
prop(a5_sched8_w99, location, stop5_w99).
prop(a5_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,6,N).
prop(a6_sched8_w99, location, stop6_w99).
prop(a6_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,7,N).
prop(a7_sched8_w99, location, stop7_w99).
prop(a7_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,9,N).
prop(a8_sched8_w99, location, stop8_w99).
prop(a8_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,10,N).
prop(a9_sched8_w99, location, stop9_w99).
prop(a9_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,13,N).
prop(a10_sched8_w99, location, stop10_w99).
prop(a10_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,14,N).
prop(a11_sched8_w99, location, stop11_w99).
prop(a11_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y),  add(Y,16,N).
prop(a12_sched8_w99, location, stop12_w99).
prop(a12_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,19,N).
prop(a13_sched8_w99, location, stop13_w99).
prop(a13_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,21,N).
prop(a14_sched8_w99, location, stop14_w99).
prop(a14_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,24,N).
prop(a15_sched8_w99, location, stop16_w99).
prop(a15_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,29,N).
prop(a16_sched8_w99, location, stop17_w99).
prop(a16_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,34,N).
prop(a17_sched8_w99, location, stop18_w99).
prop(a17_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,39,N).
prop(a18_sched8_w99, location, stop19_w99).
prop(a18_sched8_w99, time, N) :- prop(sched8_w99, startTime, Y), add(Y,41,N).

%arrivals for sched9_w99
prop(a0_sched9_w99, location, stop0_w99).
prop(a0_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,0,N).
prop(a1_sched9_w99, location, stop11_w99).
prop(a1_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,1,N).
prop(a2_sched9_w99, location, stop2_w99).
prop(a2_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,2,N).
prop(a3_sched9_w99, location, stop3_w99).
prop(a3_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,3,N).
prop(a4_sched9_w99, location, stop4_w99).
prop(a4_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,4,N).
prop(a5_sched9_w99, location, stop5_w99).
prop(a5_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,6,N).
prop(a6_sched9_w99, location, stop6_w99).
prop(a6_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,7,N).
prop(a7_sched9_w99, location, stop7_w99).
prop(a7_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,9,N).
prop(a8_sched9_w99, location, stop8_w99).
prop(a8_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,10,N).
prop(a9_sched9_w99, location, stop9_w99).
prop(a9_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,13,N).
prop(a10_sched9_w99, location, stop10_w99).
prop(a10_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,14,N).
prop(a11_sched9_w99, location, stop11_w99).
prop(a11_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,16,N).
prop(a12_sched9_w99, location, stop12_w99).
prop(a12_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,19,N).
prop(a13_sched9_w99, location, stop13_w99).
prop(a13_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,21,N).
prop(a14_sched9_w99, location, stop14_w99).
prop(a14_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,24,N).
prop(a15_sched9_w99, location, stop16_w99).
prop(a15_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,29,N).
prop(a16_sched9_w99, location, stop17_w99).
prop(a16_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,34,N).
prop(a17_sched9_w99, location, stop18_w99).
prop(a17_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,39,N).
prop(a18_sched9_w99, location, stop19_w99).
prop(a18_sched9_w99, time, N) :- prop(sched9_w99, startTime, Y), add(Y,41,N).

%an_sched0_e99 is at stopm_e99...
prop(a0_sched0_e99, location, stop0_e99).
prop(a0_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,0,N).
prop(a1_sched0_e99, location, stop11_e99).
prop(a1_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,1,N).
prop(a2_sched0_e99, location, stop2_e99).
prop(a2_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,6,N).
prop(a3_sched0_e99, location, stop3_e99).
prop(a3_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,10,N).
prop(a4_sched0_e99, location, stop4_e99).
prop(a4_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,13,N).
prop(a5_sched0_e99, location, stop5_e99).
prop(a5_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,16,N).
prop(a6_sched0_e99, location, stop6_e99).
prop(a6_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,18,N).
prop(a7_sched0_e99, location, stop7_e99).
prop(a7_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,21,N).
prop(a8_sched0_e99, location, stop8_e99).
prop(a8_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,22,N).
prop(a9_sched0_e99, location, stop9_e99).
prop(a9_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,25,N).
prop(a10_sched0_e99, location, stop10_e99).
prop(a10_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,27,N).
prop(a11_sched0_e99, location, stop11_e99).
prop(a11_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,30,N).
prop(a12_sched0_e99, location, stop12_e99).
prop(a12_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,32,N).
prop(a13_sched0_e99, location, stop13_e99).
prop(a13_sched0_e99, time, N) :- prop(sched0_e99, startTime, Y), add(Y,33,N).

%arrivals for sched1_e99
prop(a0_sched1_e99, location, stop0_e99).
prop(a0_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,0,N).
prop(a1_sched1_e99, location, stop11_e99).
prop(a1_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,1,N).
prop(a2_sched1_e99, location, stop2_e99).
prop(a2_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,6,N).
prop(a3_sched1_e99, location, stop3_e99).
prop(a3_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,10,N).
prop(a4_sched1_e99, location, stop4_e99).
prop(a4_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,13,N).
prop(a5_sched1_e99, location, stop5_e99).
prop(a5_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,16,N).
prop(a6_sched1_e99, location, stop6_e99).
prop(a6_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,18,N).
prop(a7_sched1_e99, location, stop7_e99).
prop(a7_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,21,N).
prop(a8_sched1_e99, location, stop8_e99).
prop(a8_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,22,N).
prop(a9_sched1_e99, location, stop9_e99).
prop(a9_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,25,N).
prop(a10_sched1_e99, location, stop10_e99).
prop(a10_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,27,N).
prop(a11_sched1_e99, location, stop11_e99).
prop(a11_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,30,N).
prop(a12_sched1_e99, location, stop12_e99).
prop(a12_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,32,N).
prop(a13_sched1_e99, location, stop13_e99).
prop(a13_sched1_e99, time, N) :- prop(sched1_e99, startTime, Y), add(Y,33,N).

%arrivals for sched2_e99
prop(a0_sched2_e99, location, stop0_e99).
prop(a0_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,0,N).
prop(a1_sched2_e99, location, stop11_e99).
prop(a1_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,1,N).
prop(a2_sched2_e99, location, stop2_e99).
prop(a2_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,6,N).
prop(a3_sched2_e99, location, stop3_e99).
prop(a3_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,10,N).
prop(a4_sched2_e99, location, stop4_e99).
prop(a4_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,13,N).
prop(a5_sched2_e99, location, stop5_e99).
prop(a5_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,16,N).
prop(a6_sched2_e99, location, stop6_e99).
prop(a6_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,18,N).
prop(a7_sched2_e99, location, stop7_e99).
prop(a7_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,21,N).
prop(a8_sched2_e99, location, stop8_e99).
prop(a8_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,22,N).
prop(a9_sched2_e99, location, stop9_e99).
prop(a9_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,25,N).
prop(a10_sched2_e99, location, stop10_e99).
prop(a10_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,27,N).
prop(a11_sched2_e99, location, stop11_e99).
prop(a11_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,30,N).
prop(a12_sched2_e99, location, stop12_e99).
prop(a12_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,32,N).
prop(a13_sched2_e99, location, stop13_e99).
prop(a13_sched2_e99, time, N) :- prop(sched2_e99, startTime, Y), add(Y,33,N).


%arrivals for sched3_e99
prop(a0_sched3_e99, location, stop0_e99).
prop(a0_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,0,N).
prop(a1_sched3_e99, location, stop11_e99).
prop(a1_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,1,N).
prop(a2_sched3_e99, location, stop2_e99).
prop(a2_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,6,N).
prop(a3_sched3_e99, location, stop3_e99).
prop(a3_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,10,N).
prop(a4_sched3_e99, location, stop4_e99).
prop(a4_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,13,N).
prop(a5_sched3_e99, location, stop5_e99).
prop(a5_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,16,N).
prop(a6_sched3_e99, location, stop6_e99).
prop(a6_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,18,N).
prop(a7_sched3_e99, location, stop7_e99).
prop(a7_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,21,N).
prop(a8_sched3_e99, location, stop8_e99).
prop(a8_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,22,N).
prop(a9_sched3_e99, location, stop9_e99).
prop(a9_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,25,N).
prop(a10_sched3_e99, location, stop10_e99).
prop(a10_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,27,N).
prop(a11_sched3_e99, location, stop11_e99).
prop(a11_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,30,N).
prop(a12_sched3_e99, location, stop12_e99).
prop(a12_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,32,N).
prop(a13_sched3_e99, location, stop13_e99).
prop(a13_sched3_e99, time, N) :- prop(sched3_e99, startTime, Y), add(Y,33,N).

%arrivals for sched4_e99
prop(a0_sched4_e99, location, stop0_e99).
prop(a0_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,0,N).
prop(a1_sched4_e99, location, stop11_e99).
prop(a1_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,1,N).
prop(a2_sched4_e99, location, stop2_e99).
prop(a2_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,6,N).
prop(a3_sched4_e99, location, stop3_e99).
prop(a3_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,10,N).
prop(a4_sched4_e99, location, stop4_e99).
prop(a4_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,13,N).
prop(a5_sched4_e99, location, stop5_e99).
prop(a5_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,16,N).
prop(a6_sched4_e99, location, stop6_e99).
prop(a6_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,18,N).
prop(a7_sched4_e99, location, stop7_e99).
prop(a7_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,21,N).
prop(a8_sched4_e99, location, stop8_e99).
prop(a8_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,22,N).
prop(a9_sched4_e99, location, stop9_e99).
prop(a9_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,25,N).
prop(a10_sched4_e99, location, stop10_e99).
prop(a10_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,27,N).
prop(a11_sched4_e99, location, stop11_e99).
prop(a11_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,30,N).
prop(a12_sched4_e99, location, stop12_e99).
prop(a12_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,32,N).
prop(a13_sched4_e99, location, stop13_e99).
prop(a13_sched4_e99, time, N) :- prop(sched4_e99, startTime, Y), add(Y,33,N).

%arrivals for sched5_e99
prop(a0_sched5_e99, location, stop0_e99).
prop(a0_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,0,N).
prop(a1_sched5_e99, location, stop11_e99).
prop(a1_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,1,N).
prop(a2_sched5_e99, location, stop2_e99).
prop(a2_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,6,N).
prop(a3_sched5_e99, location, stop3_e99).
prop(a3_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,10,N).
prop(a4_sched5_e99, location, stop4_e99).
prop(a4_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,13,N).
prop(a5_sched5_e99, location, stop5_e99).
prop(a5_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,16,N).
prop(a6_sched5_e99, location, stop6_e99).
prop(a6_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,18,N).
prop(a7_sched5_e99, location, stop7_e99).
prop(a7_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,21,N).
prop(a8_sched5_e99, location, stop8_e99).
prop(a8_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,22,N).
prop(a9_sched5_e99, location, stop9_e99).
prop(a9_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,25,N).
prop(a10_sched5_e99, location, stop10_e99).
prop(a10_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,27,N).
prop(a11_sched5_e99, location, stop11_e99).
prop(a11_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,30,N).
prop(a12_sched5_e99, location, stop12_e99).
prop(a12_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,32,N).
prop(a13_sched5_e99, location, stop13_e99).
prop(a13_sched5_e99, time, N) :- prop(sched5_e99, startTime, Y), add(Y,33,N).

%arrivals for sched6_e99
prop(a0_sched6_e99, location, stop0_e99).
prop(a0_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,0,N).
prop(a1_sched6_e99, location, stop11_e99).
prop(a1_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,1,N).
prop(a2_sched6_e99, location, stop2_e99).
prop(a2_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,6,N).
prop(a3_sched6_e99, location, stop3_e99).
prop(a3_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,10,N).
prop(a4_sched6_e99, location, stop4_e99).
prop(a4_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,13,N).
prop(a5_sched6_e99, location, stop5_e99).
prop(a5_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,16,N).
prop(a6_sched6_e99, location, stop6_e99).
prop(a6_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,18,N).
prop(a7_sched6_e99, location, stop7_e99).
prop(a7_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,21,N).
prop(a8_sched6_e99, location, stop8_e99).
prop(a8_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,22,N).
prop(a9_sched6_e99, location, stop9_e99).
prop(a9_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,25,N).
prop(a10_sched6_e99, location, stop10_e99).
prop(a10_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,27,N).
prop(a11_sched6_e99, location, stop11_e99).
prop(a11_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,30,N).
prop(a12_sched6_e99, location, stop12_e99).
prop(a12_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,32,N).
prop(a13_sched6_e99, location, stop13_e99).
prop(a13_sched6_e99, time, N) :- prop(sched6_e99, startTime, Y), add(Y,33,N).

%arrivals for sched7_e99
prop(a0_sched7_e99, location, stop0_e99).
prop(a0_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,0,N).
prop(a1_sched7_e99, location, stop11_e99).
prop(a1_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,1,N).
prop(a2_sched7_e99, location, stop2_e99).
prop(a2_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,6,N).
prop(a3_sched7_e99, location, stop3_e99).
prop(a3_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,10,N).
prop(a4_sched7_e99, location, stop4_e99).
prop(a4_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,13,N).
prop(a5_sched7_e99, location, stop5_e99).
prop(a5_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,16,N).
prop(a6_sched7_e99, location, stop6_e99).
prop(a6_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,18,N).
prop(a7_sched7_e99, location, stop7_e99).
prop(a7_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,21,N).
prop(a8_sched7_e99, location, stop8_e99).
prop(a8_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,22,N).
prop(a9_sched7_e99, location, stop9_e99).
prop(a9_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,25,N).
prop(a10_sched7_e99, location, stop10_e99).
prop(a10_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,27,N).
prop(a11_sched7_e99, location, stop11_e99).
prop(a11_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,30,N).
prop(a12_sched7_e99, location, stop12_e99).
prop(a12_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,32,N).
prop(a13_sched7_e99, location, stop13_e99).
prop(a13_sched7_e99, time, N) :- prop(sched7_e99, startTime, Y), add(Y,33,N).

%arrivals for sched8_e99
prop(a0_sched8_e99, location, stop0_e99).
prop(a0_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,0,N).
prop(a1_sched8_e99, location, stop11_e99).
prop(a1_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,1,N).
prop(a2_sched8_e99, location, stop2_e99).
prop(a2_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,6,N).
prop(a3_sched8_e99, location, stop3_e99).
prop(a3_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,10,N).
prop(a4_sched8_e99, location, stop4_e99).
prop(a4_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,13,N).
prop(a5_sched8_e99, location, stop5_e99).
prop(a5_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,16,N).
prop(a6_sched8_e99, location, stop6_e99).
prop(a6_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,18,N).
prop(a7_sched8_e99, location, stop7_e99).
prop(a7_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,21,N).
prop(a8_sched8_e99, location, stop8_e99).
prop(a8_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,22,N).
prop(a9_sched8_e99, location, stop9_e99).
prop(a9_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,25,N).
prop(a10_sched8_e99, location, stop10_e99).
prop(a10_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,27,N).
prop(a11_sched8_e99, location, stop11_e99).
prop(a11_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,30,N).
prop(a12_sched8_e99, location, stop12_e99).
prop(a12_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,32,N).
prop(a13_sched8_e99, location, stop13_e99).
prop(a13_sched8_e99, time, N) :- prop(sched8_e99, startTime, Y), add(Y,33,N).

%arrivals for sched9_e99
prop(a0_sched9_e99, location, stop0_e99).
prop(a0_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,0,N).
prop(a1_sched9_e99, location, stop11_e99).
prop(a1_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,1,N).
prop(a2_sched9_e99, location, stop2_e99).
prop(a2_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,6,N).
prop(a3_sched9_e99, location, stop3_e99).
prop(a3_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,10,N).
prop(a4_sched9_e99, location, stop4_e99).
prop(a4_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,13,N).
prop(a5_sched9_e99, location, stop5_e99).
prop(a5_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,16,N).
prop(a6_sched9_e99, location, stop6_e99).
prop(a6_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,18,N).
prop(a7_sched9_e99, location, stop7_e99).
prop(a7_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,21,N).
prop(a8_sched9_e99, location, stop8_e99).
prop(a8_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,22,N).
prop(a9_sched9_e99, location, stop9_e99).
prop(a9_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,25,N).
prop(a10_sched9_e99, location, stop10_e99).
prop(a10_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,27,N).
prop(a11_sched9_e99, location, stop11_e99).
prop(a11_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,30,N).
prop(a12_sched9_e99, location, stop12_e99).
prop(a12_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,32,N).
prop(a13_sched9_e99, location, stop13_e99).
prop(a13_sched9_e99, time, N) :- prop(sched9_e99, startTime, Y), add(Y,33,N).

%arrivals for sched10_e99
prop(a0_sched10_e99, location, stop0_e99).
prop(a0_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,0,N).
prop(a1_sched10_e99, location, stop11_e99).
prop(a1_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,1,N).
prop(a2_sched10_e99, location, stop2_e99).
prop(a2_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,6,N).
prop(a3_sched10_e99, location, stop3_e99).
prop(a3_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,10,N).
prop(a4_sched10_e99, location, stop4_e99).
prop(a4_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,13,N).
prop(a5_sched10_e99, location, stop5_e99).
prop(a5_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,16,N).
prop(a6_sched10_e99, location, stop6_e99).
prop(a6_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,18,N).
prop(a7_sched10_e99, location, stop7_e99).
prop(a7_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,21,N).
prop(a8_sched10_e99, location, stop8_e99).
prop(a8_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,22,N).
prop(a9_sched10_e99, location, stop9_e99).
prop(a9_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,25,N).
prop(a10_sched10_e99, location, stop10_e99).
prop(a10_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,27,N).
prop(a11_sched10_e99, location, stop11_e99).
prop(a11_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,30,N).
prop(a12_sched10_e99, location, stop12_e99).
prop(a12_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,32,N).
prop(a13_sched10_e99, location, stop13_e99).
prop(a13_sched10_e99, time, N) :- prop(sched10_e99, startTime, Y), add(Y,33,N).

%arrivals for sched11_e99
prop(a0_sched11_e99, location, stop0_e99).
prop(a0_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,0,N).
prop(a1_sched11_e99, location, stop11_e99).
prop(a1_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,1,N).
prop(a2_sched11_e99, location, stop2_e99).
prop(a2_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,6,N).
prop(a3_sched11_e99, location, stop3_e99).
prop(a3_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,10,N).
prop(a4_sched11_e99, location, stop4_e99).
prop(a4_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,13,N).
prop(a5_sched11_e99, location, stop5_e99).
prop(a5_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,16,N).
prop(a6_sched11_e99, location, stop6_e99).
prop(a6_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,18,N).
prop(a7_sched11_e99, location, stop7_e99).
prop(a7_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,21,N).
prop(a8_sched11_e99, location, stop8_e99).
prop(a8_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,22,N).
prop(a9_sched11_e99, location, stop9_e99).
prop(a9_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,25,N).
prop(a10_sched11_e99, location, stop10_e99).
prop(a10_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,27,N).
prop(a11_sched11_e99, location, stop11_e99).
prop(a11_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,30,N).
prop(a12_sched11_e99, location, stop12_e99).
prop(a12_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,32,N).
prop(a13_sched11_e99, location, stop13_e99).
prop(a13_sched11_e99, time, N) :- prop(sched11_e99, startTime, Y), add(Y,33,N).

%arrivals for sched12_e99
prop(a0_sched12_e99, location, stop0_e99).
prop(a0_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,0,N).
prop(a1_sched12_e99, location, stop11_e99).
prop(a1_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,1,N).
prop(a2_sched12_e99, location, stop2_e99).
prop(a2_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,6,N).
prop(a3_sched12_e99, location, stop3_e99).
prop(a3_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,10,N).
prop(a4_sched12_e99, location, stop4_e99).
prop(a4_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,13,N).
prop(a5_sched12_e99, location, stop5_e99).
prop(a5_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,16,N).
prop(a6_sched12_e99, location, stop6_e99).
prop(a6_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,18,N).
prop(a7_sched12_e99, location, stop7_e99).
prop(a7_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,21,N).
prop(a8_sched12_e99, location, stop8_e99).
prop(a8_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,22,N).
prop(a9_sched12_e99, location, stop9_e99).
prop(a9_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,25,N).
prop(a10_sched12_e99, location, stop10_e99).
prop(a10_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,27,N).
prop(a11_sched12_e99, location, stop11_e99).
prop(a11_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,30,N).
prop(a12_sched12_e99, location, stop12_e99).
prop(a12_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,32,N).
prop(a13_sched12_e99, location, stop13_e99).
prop(a13_sched12_e99, time, N) :- prop(sched12_e99, startTime, Y), add(Y,33,N).

%arrivals for sched13_e99
prop(a0_sched13_e99, location, stop0_e99).
prop(a0_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,0,N).
prop(a1_sched13_e99, location, stop11_e99).
prop(a1_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,1,N).
prop(a2_sched13_e99, location, stop2_e99).
prop(a2_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,6,N).
prop(a3_sched13_e99, location, stop3_e99).
prop(a3_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,10,N).
prop(a4_sched13_e99, location, stop4_e99).
prop(a4_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,13,N).
prop(a5_sched13_e99, location, stop5_e99).
prop(a5_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,16,N).
prop(a6_sched13_e99, location, stop6_e99).
prop(a6_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,18,N).
prop(a7_sched13_e99, location, stop7_e99).
prop(a7_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,21,N).
prop(a8_sched13_e99, location, stop8_e99).
prop(a8_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,22,N).
prop(a9_sched13_e99, location, stop9_e99).
prop(a9_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,25,N).
prop(a10_sched13_e99, location, stop10_e99).
prop(a10_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,27,N).
prop(a11_sched13_e99, location, stop11_e99).
prop(a11_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,30,N).
prop(a12_sched13_e99, location, stop12_e99).
prop(a12_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,32,N).
prop(a13_sched13_e99, location, stop13_e99).
prop(a13_sched13_e99, time, N) :- prop(sched13_e99, startTime, Y), add(Y,33,N).

%arrivals for sched14_e99
prop(a0_sched14_e99, location, stop0_e99).
prop(a0_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,0,N).
prop(a1_sched14_e99, location, stop11_e99).
prop(a1_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,1,N).
prop(a2_sched14_e99, location, stop2_e99).
prop(a2_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,6,N).
prop(a3_sched14_e99, location, stop3_e99).
prop(a3_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,10,N).
prop(a4_sched14_e99, location, stop4_e99).
prop(a4_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,13,N).
prop(a5_sched14_e99, location, stop5_e99).
prop(a5_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,16,N).
prop(a6_sched14_e99, location, stop6_e99).
prop(a6_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,18,N).
prop(a7_sched14_e99, location, stop7_e99).
prop(a7_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,21,N).
prop(a8_sched14_e99, location, stop8_e99).
prop(a8_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,22,N).
prop(a9_sched14_e99, location, stop9_e99).
prop(a9_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,25,N).
prop(a10_sched14_e99, location, stop10_e99).
prop(a10_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,27,N).
prop(a11_sched14_e99, location, stop11_e99).
prop(a11_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,30,N).
prop(a12_sched14_e99, location, stop12_e99).
prop(a12_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,32,N).
prop(a13_sched14_e99, location, stop13_e99).
prop(a13_sched14_e99, time, N) :- prop(sched14_e99, startTime, Y), add(Y,33,N).

%arrivals for sched15_e99
prop(a0_sched15_e99, location, stop0_e99).
prop(a0_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,0,N).
prop(a1_sched15_e99, location, stop11_e99).
prop(a1_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,1,N).
prop(a2_sched15_e99, location, stop2_e99).
prop(a2_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,6,N).
prop(a3_sched15_e99, location, stop3_e99).
prop(a3_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,10,N).
prop(a4_sched15_e99, location, stop4_e99).
prop(a4_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,13,N).
prop(a5_sched15_e99, location, stop5_e99).
prop(a5_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,16,N).
prop(a6_sched15_e99, location, stop6_e99).
prop(a6_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,18,N).
prop(a7_sched15_e99, location, stop7_e99).
prop(a7_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,21,N).
prop(a8_sched15_e99, location, stop8_e99).
prop(a8_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,22,N).
prop(a9_sched15_e99, location, stop9_e99).
prop(a9_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,25,N).
prop(a10_sched15_e99, location, stop10_e99).
prop(a10_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,27,N).
prop(a11_sched15_e99, location, stop11_e99).
prop(a11_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,30,N).
prop(a12_sched15_e99, location, stop12_e99).
prop(a12_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,32,N).
prop(a13_sched15_e99, location, stop13_e99).
prop(a13_sched15_e99, time, N) :- prop(sched15_e99, startTime, Y), add(Y,33,N).

%arrivals for sched16_e99
prop(a0_sched16_e99, location, stop0_e99).
prop(a0_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,0,N).
prop(a1_sched16_e99, location, stop11_e99).
prop(a1_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,1,N).
prop(a2_sched16_e99, location, stop2_e99).
prop(a2_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,6,N).
prop(a3_sched16_e99, location, stop3_e99).
prop(a3_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,10,N).
prop(a4_sched16_e99, location, stop4_e99).
prop(a4_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,13,N).
prop(a5_sched16_e99, location, stop5_e99).
prop(a5_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,16,N).
prop(a6_sched16_e99, location, stop6_e99).
prop(a6_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,18,N).
prop(a7_sched16_e99, location, stop7_e99).
prop(a7_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,21,N).
prop(a8_sched16_e99, location, stop8_e99).
prop(a8_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,22,N).
prop(a9_sched16_e99, location, stop9_e99).
prop(a9_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,25,N).
prop(a10_sched16_e99, location, stop10_e99).
prop(a10_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,27,N).
prop(a11_sched16_e99, location, stop11_e99).
prop(a11_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,30,N).
prop(a12_sched16_e99, location, stop12_e99).
prop(a12_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,32,N).
prop(a13_sched16_e99, location, stop13_e99).
prop(a13_sched16_e99, time, N) :- prop(sched16_e99, startTime, Y), add(Y,33,N).
