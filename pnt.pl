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
prop(stop0_w99, location, loc(loughheed_highway,boundary_loop)).
%stop1_w99 is at rupert st
prop(stop1_w99, location, loc(e_broadway,rupert_st)).
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
prop(stop19_w99, location, loc(ubc_loop, bay4)).





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

