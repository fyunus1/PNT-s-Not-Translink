%clock(H,M) and add(clock(H,M),I) are to make times easier to manipulate
clock(H,M) :- H >= 0,
	      H < 24,
	      M >= 0,
	      M < 60.

add(clock(H,M),I) :- clock(mod((H+((M+I)/60)),24), mod(M+I,60)).

%line99 has a westbound route
prop(line99, route, westbound99).
%the westbound route has stops stop0_w99 and stop1_w99
prop(westbound99, stop, stop0_w99).
prop(westbound99, stop, stop1_w99).
%stop0_w99 is at boundary loop
prop(stop0_w99, location, loughheed_highway_at_boundary_loop).
%stop1_w99 is at rupert st
prop(stop1_w99, location, e_broadway_at_rupert_st).

%westbound route has bus0
prop(westbound99, bus, bus0_w99).
%bus0 has a schedule
prop(bus0_w99, schedule, sched0_w99).
%the schedule has an start time (i.e. the time when the bus departs from
%the first stop)
prop(sched0_w99, startTime, clock(05,41)).
%the schedule has an arrival a0_sched0_w99
prop(sched0_w99, arrival, a0_sched0_w99).
%a0_sched0_w99 is at stop0_w99
prop(a0_sched0_w99, location, stop0_w99).
%the bus arrives at a0_sched0_w99 at the start time
prop(a0_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        add(Y,0).
%sched0_w99 has an arrival at a1_shed0_w99
prop(sched0_w99, arrival, a1_sched0_w99).
%a1_sched0_w99 is at stop1_w99
prop(a1_sched0_w99, location, stop1_w99).
%the bus arrives at a1_sched0_w99 a minute after the start time
prop(a1_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        add(Y,1).

