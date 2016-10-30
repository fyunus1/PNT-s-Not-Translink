% Try to run the program with the following cases:
% With two bus transfers
% findRoutes(loc(w_st,street1),loc(e_st,street3),clock(12,0),50,R,S,D,J).
% With bus transfers
% findRoutes(loc(w_st,street1),loc(n_st,street2),clock(12,0),50,R,S,D,J).
% No bus transfers
% findRoutes(loc(w_st,street1),loc(w_st,n_st),clock(12,0),50,R,S,D,J).
% With maxTime exceeded
% findroutes(loc(w_st,street1),loc(w_st,n_st),clock(12,0),5,R,S,D,J).

:- discontiguous prop/3.

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
findRoutes(Start,Dest,StartTime,MaxTime,[Route],S,D,JourneyMinutes) :-
%Set S to Start, D to Dest; these are just to format the returned info
S = Start,
D = Dest,
%check if there�s a line with a route with stops at Start and Dest
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
%(with 1 transfer)
findRoutes(Start,Dest,StartTime,MaxTime,L,S,D,JourneyMinutes) :-
%Set S to Start, D to Dest; these are just to format the returned info
S = Start,
D = Dest,
prop(Route,stop,StopOfStart),
prop(StopOfStart,location,Start),
prop(Route,stop,StopOfIntersection11),
dif(StopOfStart,StopOfIntersection11),
prop(StopOfIntersection11,location,Intersection1),
prop(StopOfIntersection12,location,Intersection1),
dif(StopOfIntersection11,StopOfIntersection12),
prop(Route2,stop,StopOfIntersection12),
prop(Route2,stop,StopOfDest),
dif(StopOfIntersection12,StopOfDest),
prop(StopOfDest,location,Dest),

prop(Route,vehicle,Vehicle),
prop(Vehicle, schedule, Schedule),
prop(Schedule, arrival, ArrivalOfStart),
prop(ArrivalOfStart, location, StopOfStart),
prop(ArrivalOfStart, time, TimeOfStopOfStart),
add(StartTime,StartTimeDiff,TimeOfStopOfStart),
StartTimeDiff >= 0,
prop(Schedule, arrival, ArrivalAtInt),
prop(ArrivalAtInt, location, StopOfIntersection11),
prop(ArrivalAtInt, time, TimeOfStopOfInt),
add(StartTime,FirstHopMinutes,TimeOfStopOfInt),
FirstHopMinutes >= StartTimeDiff,
FirstHopMinutes =< MaxTime,
prop(Route2,vehicle,Vehicle2),
dif(Vehicle,Vehicle2),
prop(Schedule2, arrival, ArrivalAtDest),
dif(Schedule,Schedule2),
prop(ArrivalAtDest, location, StopOfDest),
prop(ArrivalAtDest, time, TimeOfStopOfDest),
add(StartTime,SecondHopMinutes,TimeOfStopOfDest),
SecondHopMinutes >= StartTimeDiff,
JourneyMinutes is FirstHopMinutes + SecondHopMinutes,
JourneyMinutes =< MaxTime,
L = [[Route,Start,TimeOfStopOfStart],[Route2,Intersection1,TimeOfStopOfInt],[Dest,TimeOfStopOfDest]].



%find routes from location Start to location Dest
%departing at or after time StartTime
%and arriving at destination within MaxTime minutes
%(with 2 transfers)
findRoutes(Start,Dest,StartTime,MaxTime,L,S,D,JourneyMinutes) :-
%Set S to Start, D to Dest; these are just to format the returned info
S = Start,
D = Dest,
%check if there's a line with a route with stops at Start and Via,
%(where there exists a series of routes from Via to Dest)
%prop(_, route, Route),
prop(StopOfStart,location, Start),
prop(Route, stop, StopOfStart),

% Check for intersections with 2 bus transfers
% On route 1
prop(Route, stop, StopOfIntersection11),
prop(StopOfIntersection11,location,Intersection1),
prop(StopOfIntersection12,location,Intersection1),
% On route 2
prop(Route2, stop, StopOfIntersection12),
prop(Route2, stop, StopOfIntersection21),
prop(StopOfIntersection21,location,Intersection2),
prop(StopOfIntersection22,location,Intersection2),
% On route 3
prop(Route3, stop, StopOfIntersection22),
prop(Route3, stop, StopOfDest),

dif(Route, Route2),
dif(Route3, Route2),
dif(Route, Route3),
dif(Intersection1, Start),
dif(Intersection1, Intersection2),
dif(Intersection2, Start),
dif(StopOfStart,StopOfIntersection11),
dif(StopOfStart,StopOfIntersection12),
dif(StopOfStart,StopOfIntersection21),
dif(StopOfStart,StopOfIntersection22),
dif(StopOfIntersection11, StopOfDest),
dif(StopOfIntersection12, StopOfDest),
dif(StopOfIntersection21, StopOfDest),
dif(StopOfIntersection22, StopOfDest),
dif(StopOfIntersection11, StopOfIntersection12),
dif(StopOfIntersection11, StopOfIntersection21),
dif(StopOfIntersection11, StopOfIntersection22),
dif(StopOfIntersection12, StopOfIntersection21),
dif(StopOfIntersection12, StopOfIntersection22),
dif(StopOfIntersection21, StopOfIntersection22),
prop(StopOfDest, location, Dest),

prop(Route,vehicle,Vehicle),
prop(Vehicle, schedule, Schedule),
prop(Schedule, arrival, ArrivalOfStart),
prop(ArrivalOfStart, location, StopOfStart),
prop(ArrivalOfStart, time, TimeOfStopOfStart),
add(StartTime,StartTimeDiff,TimeOfStopOfStart),
StartTimeDiff >= 0,

prop(Schedule, arrival, ArrivalAtInt1),
prop(ArrivalAtInt1, location, StopOfIntersection11),
prop(ArrivalAtInt1, time, TimeOfStopOfInt1),
add(StartTime,FirstHopMinutes,TimeOfStopOfInt1),
FirstHopMinutes >= StartTimeDiff,
TimeLeft is MaxTime - FirstHopMinutes,
TimeLeft >= 0,

prop(Route2,vehicle,Vehicle2),
dif(Vehicle,Vehicle2),
prop(Schedule2, arrival, ArrivalAtInt2),
dif(Schedule,Schedule2),
prop(Schedule2, arrival, ArrivalAtInt2),
prop(ArrivalAtInt2, location, StopOfIntersection21),
prop(ArrivalAtInt2, time, TimeOfStopOfInt2),
add(StartTime,SecondHopMinutes,TimeOfStopOfInt2),
SecondHopMinutes >= StartTimeDiff,
TimeLeft2 is MaxTime - SecondHopMinutes,
TimeLeft2 >= 0,

prop(Route3,vehicle,Vehicle3),
dif(Vehicle,Vehicle3),
prop(Schedule3, arrival, ArrivalAtDest),
dif(Schedule2,Schedule3),
dif(Schedule,Schedule3),
prop(Schedule3, arrival, ArrivalAtDest),
prop(ArrivalAtDest, location, StopOfDest),
prop(ArrivalAtDest, time, TimeOfStopOfDest),
add(StartTime,ThirdHopMinutes,TimeOfStopOfDest),
ThirdHopMinutes >= StartTimeDiff,
JourneyMinutesIntermediate is FirstHopMinutes + SecondHopMinutes,
JourneyMinutes is JourneyMinutesIntermediate + ThirdHopMinutes,
JourneyMinutes =< MaxTime,
L = [[Route,Start,TimeOfStopOfStart],[Route2,Intersection1,TimeOfStopOfInt1],[Route3,Intersection2,TimeOfStopOfInt2],[Dest,TimeOfStopOfDest]].

%database starts here
% line1 has westbound routes.
prop(line1, route, westbound).

% the westbound route has stop ws1 through wsn.
prop(westbound, stop, ws1).
prop(westbound, stop, ws2).
prop(westbound, stop, ws3).

% Stop ws1 is at location x.
prop(ws1, location, loc(w_st,street1)).
prop(ws2, location, loc(w_st,s_st)).
prop(ws3, location, loc(w_st,n_st)).

% the westbound route has bus wb1.
prop(westbound, bus, wb1).
prop(westbound, bus, wb2).

% every bus has a schedule.
prop(wb1, schedule, wb1sched).
prop(wb2, schedule, wb2sched).

% each bus schedule has a start time.
% wbnsched has an arrival at...
prop(wb1sched, startTime, clock(12,0)).
prop(wb1sched, arrival, aAtws1).
prop(wb1sched, arrival, aAtws2).
prop(wb1sched, arrival, aAtws3).

% each bus schedule has a StartTime
prop(wb2sched, startTime, clock(12,10)).
prop(wb2sched, arrival, aAtws1).
prop(wb2sched, arrival, aAtws2).
prop(wb2sched, arrival, aAtws3).

% aAtws1 is at ws1...
prop(aAtws1, location, ws1).
prop(aAtws1, time, N) :- prop(wb1sched, startTime, Y), add(Y,0,N).
prop(aAtws2, location, ws2).
prop(aAtws2, time, N) :- prop(wb1sched, startTime, Y), add(Y,4,N).
prop(aAtws3, location, ws3).
prop(aAtws3, time, N) :- prop(wb1sched, startTime, Y), add(Y,8,N).

% line2 has northbound routes.
prop(line2, route, northbound).

% the northbound route has stop ns1 through nsn.
prop(northbound, stop, ns1).
prop(northbound, stop, ns2).
prop(northbound, stop, ns3).

% Stop ns1 is at location x.
prop(ns1, location, loc(w_st,n_st)).
prop(ns2, location, loc(n_st,street2)).
prop(ns3, location, loc(n_st,e_st)).

% the northbound route has bus nb1.
prop(northbound, bus, nb1).
prop(northbound, bus, nb2).

% every bus has a schedule.
prop(nb1, schedule, nb1sched).
prop(nb2, schedule, nb2sched).

% each bus schedule has a start time.
prop(nb1sched, startTime, clock(12,0)).
% nbnsched has an arrival at...
prop(nb1sched, arrival, aAtns1).
prop(nb1sched, arrival, aAtns2).
prop(nb1sched, arrival, aAtns3).

prop(nb2sched, startTime, clock(12,20)).
prop(nb2sched, arrival, aAtns1).
prop(nb2sched, arrival, aAtns2).
prop(nb2sched, arrival, aAtns3).

% aAtns1 is at ns1...
prop(aAtns1, location, ns1).
prop(aAtns1, time, N) :- prop(wb1sched, startTime, Y), add(Y,0,N).
prop(aAtns2, location, ns2).
prop(aAtns2, time, N) :- prop(wb1sched, startTime, Y), add(Y,7,N).
prop(aAtns3, location, ns3).
prop(aAtns3, time, N) :- prop(wb1sched, startTime, Y), add(Y,14,N).

% line3 has westbound routes.
prop(line3, route, eastbound).

% the eastbound route has stop es1 through esn.
prop(eastbound, stop, es1).
prop(eastbound, stop, es2).
prop(eastbound, stop, es3).

% Stop es1 is at location x.
prop(es1, location, loc(n_st,e_st)).
prop(es2, location, loc(e_st,street3)).
prop(es3, location, loc(e_st,s_st)).

% the eastbound route has bus eb1.
prop(eastbound, bus, eb1).
prop(eastbound, bus, eb2).

% every bus has a schedule.
prop(eb1, schedule, eb1sched).
prop(eb2, schedule, eb2sched).

% each bus schedule has a start time.
% wbnsched has an arrival at...
prop(eb1sched, startTime, clock(12,0)).
prop(eb1sched, arrival, aAtes1).
prop(eb1sched, arrival, aAtes2).
prop(eb1sched, arrival, aAtes3).

prop(eb2sched, startTime, clock(12,30)).
prop(eb2sched, arrival, aAtes1).
prop(eb2sched, arrival, aAtes2).
prop(eb2sched, arrival, aAtes3).

% aAtes1 is at es1...
prop(aAtes1, location, es1).
prop(aAtes1, time, N) :- prop(wb1sched, startTime, Y), add(Y,0,N).
prop(aAtes2, location, es2).
prop(aAtes2, time, N) :- prop(wb1sched, startTime, Y), add(Y,10,N).
prop(aAtes3, location, es3).
prop(aAtes3, time, N) :- prop(wb1sched, startTime, Y), add(Y,20,N).

% line4 has westbound routes.
prop(line4, route, southbound).

% the southbound route has stop ss1 through ssn.
prop(southbound, stop, ss1).
prop(southbound, stop, ss2).
prop(southbound, stop, ss3).

% Stop ss1 is at location x.
prop(ss1, location, loc(e_st,s_st)).
prop(ss2, location, loc(s_st,street4)).
prop(ss3, location, loc(w_st,s_st)).

% the southbound route has bus sb1.
prop(southbound, bus, sb1).
prop(southbound, bus, sb2).

% every bus has a schedule.
prop(sb1, schedule, sb1sched).
prop(sb2, schedule, sb2sched).

% each bus schedule has a start time.
% wbnsched has an arrival at...
prop(sb1sched, startTime, clock(12,0)).
prop(sb1sched, arrival, aAtss1).
prop(sb1sched, arrival, aAtss2).
prop(sb1sched, arrival, aAtss3).

prop(sb2sched, startTime, clock(12,45)).
prop(sb2sched, arrival, aAtss1).
prop(sb2sched, arrival, aAtss2).
prop(sb2sched, arrival, aAtss3).

% aAtss1 is at ss1...
prop(aAtss1, location, ss1).
prop(aAtss1, time, N) :- prop(sb1sched, startTime, Y), add(Y,0,N).
prop(aAtss2, location, ss2).
prop(aAtss2, time, N) :- prop(sb1sched, startTime, Y), add(Y,8,N).
prop(aAtss3, location, ss3).
prop(aAtss3, time, N) :- prop(sb1sched, startTime, Y), add(Y,16,N).
