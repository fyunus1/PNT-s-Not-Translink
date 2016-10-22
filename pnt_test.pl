%clock(H,M) and add(clock(H,M),I) are to make times easier to manipulate
clock(H,M) :- H >= 0,
	      H < 24,
	      M >= 0,
	      M < 60.

add(Y,I,N) :- Y = clock(H,M),
	      N = clock(NH,NM),
	      NH is mod(H+floor((M+I)/60),24),
	      NM is mod(M+I,60).

%Line99 has westbound and eastbound routes
prop(line99, route, westbound99).

%the westbound route has stops stop0_w99 through stop19_w99
prop(westbound99, stop, stop0_w99).
prop(westbound99, stop, stop1_w99).
prop(westbound99, stop, stop2_w99).

%stop0_w99 is at boundary loop
prop(stop0_w99, location, loc(loughheed_highway,boundary_loop)).

%stop1_w99 is at rupert st
prop(stop1_w99, location, loc(e_broadway,rupert_st)).

%stopn_w99 is at x...
prop(stop2_w99, location, loc(e_broadway,renfrew_st)).
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

%the schedule has a start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_w99, startTime, clock(05,41)).
%the schedule has an arrival a0_schedn_w99
prop(sched0_w99, arrival, a0_sched0_w99).
%schedn_w99 has an arrival at a1_shedn_w99
prop(sched0_w99, arrival, a1_sched0_w99).
%schedn_w99 has an arrival at...
prop(sched0_w99, arrival, a2_sched0_w99).

prop(sched1_w99, startTime, clock(06,25)).
prop(sched1_w99, arrival, a0_sched1_w99).
prop(sched1_w99, arrival, a1_sched1_w99).
prop(sched1_w99, arrival, a2_sched1_w99).

prop(sched2_w99, startTime, clock(07,36)).
prop(sched2_w99, arrival, a0_sched2_w99).
prop(sched2_w99, arrival, a1_sched2_w99).
prop(sched2_w99, arrival, a2_sched2_w99).

prop(sched3_w99, startTime, clock(08,25)).
prop(sched3_w99, arrival, a0_sched3_w99).
prop(sched3_w99, arrival, a1_sched3_w99).
prop(sched3_w99, arrival, a2_sched3_w99).

prop(sched4_w99, startTime, clock(09,31)).
prop(sched4_w99, arrival, a0_sched4_w99).
prop(sched4_w99, arrival, a1_sched4_w99).
prop(sched4_w99, arrival, a2_sched4_w99).

prop(sched5_w99, startTime, clock(10,42)).
prop(sched5_w99, arrival, a0_sched5_w99).
prop(sched5_w99, arrival, a1_sched5_w99).
prop(sched5_w99, arrival, a2_sched5_w99).

prop(sched6_w99, startTime, clock(11,27)).
prop(sched6_w99, arrival, a0_sched6_w99).
prop(sched6_w99, arrival, a1_sched6_w99).
prop(sched6_w99, arrival, a2_sched6_w99).

prop(sched7_w99, startTime, clock(12,38)).
prop(sched7_w99, arrival, a0_sched7_w99).
prop(sched7_w99, arrival, a1_sched7_w99).
prop(sched7_w99, arrival, a2_sched7_w99).

prop(sched8_w99, startTime, clock(13,22)).
prop(sched8_w99, arrival, a0_sched8_w99).
prop(sched8_w99, arrival, a1_sched8_w99).
prop(sched8_w99, arrival, a2_sched8_w99).

prop(sched9_w99, startTime, clock(14,03)).
prop(sched9_w99, arrival, a0_sched9_w99).
prop(sched9_w99, arrival, a1_sched9_w99).
prop(sched9_w99, arrival, a2_sched9_w99).


%an_sched0_w99 is at stopm_w99...
prop(a0_sched0_w99, location, stop0_w99).
prop(a0_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
				add(Y,0,N).
prop(a1_sched0_w99, location, stop11_w99).
prop(a1_sched0_w99, time, N) :- prop(sched0_w99, startTime, Y),
	add(Y,1,N).
prop(a2_sched0_w99, location, stop2_w99).
prop(a2_sched0_w99, time, add(Y,2)) :- prop(sched0_w99, startTime, Y).

%arrivals for sched1_w99
prop(a0_sched1_w99, location, stop0_w99).
prop(a0_sched1_w99, time, add(Y,0)) :- prop(sched1_w99, startTime, Y).
prop(a1_sched1_w99, location, stop11_w99).
prop(a1_sched1_w99, time, add(Y,1)) :- prop(sched1_w99, startTime, Y).
prop(a2_sched1_w99, location, stop2_w99).
prop(a2_sched1_w99, time, add(Y,2)) :- prop(sched1_w99, startTime, Y).

%arrivals for sched2_w99
prop(a0_sched2_w99, location, stop0_w99).
prop(a0_sched2_w99, time, add(Y,0)) :- prop(sched2_w99, startTime, Y).
prop(a1_sched2_w99, location, stop11_w99).
prop(a1_sched2_w99, time, add(Y,1)) :- prop(sched2_w99, startTime, Y).
prop(a2_sched2_w99, location, stop2_w99).
prop(a2_sched2_w99, time, add(Y,2)) :- prop(sched2_w99, startTime, Y).

%arrivals for sched3_w99
prop(a0_sched3_w99, location, stop0_w99).
prop(a0_sched3_w99, time, add(Y,0)) :- prop(sched3_w99, startTime, Y).
prop(a1_sched3_w99, location, stop11_w99).
prop(a1_sched3_w99, time, add(Y,1)) :- prop(sched3_w99, startTime, Y).
prop(a2_sched3_w99, location, stop2_w99).
prop(a2_sched3_w99, time, add(Y,2)) :- prop(sched3_w99, startTime, Y).

%arrivals for sched4_w99
prop(a0_sched4_w99, location, stop0_w99).
prop(a0_sched4_w99, time, add(Y,0)) :- prop(sched4_w99, startTime, Y).
prop(a1_sched4_w99, location, stop11_w99).
prop(a1_sched4_w99, time, add(Y,1)) :- prop(sched4_w99, startTime, Y).
prop(a2_sched4_w99, location, stop2_w99).
prop(a2_sched4_w99, time, add(Y,2)) :- prop(sched4_w99, startTime, Y).

%arrivals for sched5_w99
prop(a0_sched5_w99, location, stop0_w99).
prop(a0_sched5_w99, time, add(Y,0)) :- prop(sched5_w99, startTime, Y).
prop(a1_sched5_w99, location, stop11_w99).
prop(a1_sched5_w99, time, add(Y,1)) :- prop(sched5_w99, startTime, Y).
prop(a2_sched5_w99, location, stop2_w99).
prop(a2_sched5_w99, time, add(Y,2)) :- prop(sched5_w99, startTime, Y).

%arrivals for sched6_w99
prop(a0_sched6_w99, location, stop0_w99).
prop(a0_sched6_w99, time, add(Y,0)) :- prop(sched6_w99, startTime, Y).
prop(a1_sched6_w99, location, stop11_w99).
prop(a1_sched6_w99, time, add(Y,1)) :- prop(sched6_w99, startTime, Y).
prop(a2_sched6_w99, location, stop2_w99).
prop(a2_sched6_w99, time, add(Y,2)) :- prop(sched6_w99, startTime, Y).

%arrivals for sched7_w99
prop(a0_sched7_w99, location, stop0_w99).
prop(a0_sched7_w99, time, add(Y,0)) :- prop(sched7_w99, startTime, Y).
prop(a1_sched7_w99, location, stop11_w99).
prop(a1_sched7_w99, time, add(Y,1)) :- prop(sched7_w99, startTime, Y).
prop(a2_sched7_w99, location, stop2_w99).
prop(a2_sched7_w99, time, add(Y,2)) :- prop(sched7_w99, startTime, Y).

%arrivals for sched8_w99
prop(a0_sched8_w99, location, stop0_w99).
prop(a0_sched8_w99, time, add(Y,0)) :- prop(sched8_w99, startTime, Y).
prop(a1_sched8_w99, location, stop11_w99).
prop(a1_sched8_w99, time, add(Y,1)) :- prop(sched8_w99, startTime, Y).
prop(a2_sched8_w99, location, stop2_w99).
prop(a2_sched8_w99, time, add(Y,2)) :- prop(sched8_w99, startTime, Y).

%arrivals for sched9_w99
prop(a0_sched9_w99, location, stop0_w99).
prop(a0_sched9_w99, time, add(Y,0)) :- prop(sched9_w99, startTime, Y).
prop(a1_sched9_w99, location, stop11_w99).
prop(a1_sched9_w99, time, add(Y,1)) :- prop(sched9_w99, startTime, Y).
prop(a2_sched9_w99, location, stop2_w99).
prop(a2_sched9_w99, time, add(Y,2)) :- prop(sched9_w99, startTime, Y).















