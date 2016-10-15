%clock(H,M) and add(clock(H,M),I) are to make times easier to manipulate
clock(H,M) :- H >= 0,
	      H < 24,
	      M >= 0,
	      M < 60.

add(clock(H,M),I) :- clock(mod((H+((M+I)/60)),24), mod(M+I,60)).

%line99 has a westbound route
prop(line99, route, westbound99).

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
prop(westbound99, stop, stop15_w99).
prop(westbound99, stop, stop16_w99).
prop(westbound99, stop, stop17_w99).
prop(westbound99, stop, stop18_w99).
prop(westbound99, stop, stop19_w99).


%stop0_w99 is at boundary loop
prop(stop0_w99, location, loc(loughheed_highway,boundary_loop)).

%stop1_w99 is at rupert st
prop(stop1_w99, location, loc(e_broadway,rupert_st)).

%stop n is at x...
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
%sched0_w99 has an arrival at a1_shed0_w99
prop(sched0_w99, arrival, a1_sched0_w99).
%sched0_w99 has an arrival at...
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

%a0_sched0_w99 is at stop0_w99
prop(a0_sched0_w99, location, stop0_w99).
%the bus arrives at a0_sched0_w99 at the start time
prop(a0_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is add(Y,0).

%a1_sched0_w99 is at stop1_w99
prop(a1_sched0_w99, location, stop1_w99).
%the bus arrives at a1_sched0_w99 a minute after the start time
prop(a1_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is add(Y,1).

%an_sched0_w99 is at stopm_w99...
prop(a2_sched0_w99, location, stop2_w99).
prop(a2_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,2).
prop(a3_sched0_w99, location, stop3_w99).
prop(a3_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,3).
prop(a4_sched0_w99, location, stop4_w99).
prop(a4_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,4).
prop(a5_sched0_w99, location, stop5_w99).
prop(a5_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,6).
prop(a6_sched0_w99, location, stop6_w99).
prop(a6_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,7).
prop(a7_sched0_w99, location, stop7_w99).
prop(a7_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,9).
prop(a8_sched0_w99, location, stop8_w99).
prop(a8_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,10).
prop(a9_sched0_w99, location, stop9_w99).
prop(a9_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,13).
prop(a10_sched0_w99, location, stop10_w99).
prop(a10_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,14).
prop(a11_sched0_w99, location, stop11_w99).
prop(a11_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,16).
prop(a12_sched0_w99, location, stop12_w99).
prop(a12_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,19).
prop(a13_sched0_w99, location, stop13_w99).
prop(a13_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,21).
prop(a14_sched0_w99, location, stop14_w99).
prop(a14_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,24).
prop(a15_sched0_w99, location, stop16_w99).
prop(a15_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,29).
prop(a16_sched0_w99, location, stop17_w99).
prop(a16_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,34).
prop(a17_sched0_w99, location, stop18_w99).
prop(a17_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,39).
prop(a18_sched0_w99, location, stop19_w99).
prop(a18_sched0_w99, time, X) :- prop(sched0_w99, startTime, Y),
	                        X is  add(Y,41).
