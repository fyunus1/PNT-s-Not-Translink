%clock(H,M) and add(clock(H,M),I) are to make times easier to manipulate
clock(H,M) :- H >= 0,
	      H < 24,
	      M >= 0,
	      M < 60.

add(clock(H,M),I) :- clock(mod(ceiling(H+((M+I)/60)),24), mod(M+I,60)).

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
prop(a0_sched0_w99, time, add(Y,0)) :- prop(sched0_w99, startTime, Y).
prop(a1_sched0_w99, location, stop11_w99).
prop(a1_sched0_w99, time, add(Y,1)) :- prop(sched0_w99, startTime, Y).
prop(a2_sched0_w99, location, stop2_w99).
prop(a2_sched0_w99, time, add(Y,2)) :- prop(sched0_w99, startTime, Y).
prop(a3_sched0_w99, location, stop3_w99).
prop(a3_sched0_w99, time, add(Y,3)) :- prop(sched0_w99, startTime, Y).
prop(a4_sched0_w99, location, stop4_w99).
prop(a4_sched0_w99, time, add(Y,4)) :- prop(sched0_w99, startTime, Y).
prop(a5_sched0_w99, location, stop5_w99).
prop(a5_sched0_w99, time, add(Y,6)) :- prop(sched0_w99, startTime, Y).
prop(a6_sched0_w99, location, stop6_w99).
prop(a6_sched0_w99, time, add(Y,7)) :- prop(sched0_w99, startTime, Y).
prop(a7_sched0_w99, location, stop7_w99).
prop(a7_sched0_w99, time, add(Y,9)) :- prop(sched0_w99, startTime, Y).
prop(a8_sched0_w99, location, stop8_w99).
prop(a8_sched0_w99, time, add(Y,10)) :- prop(sched0_w99, startTime, Y).
prop(a9_sched0_w99, location, stop9_w99).
prop(a9_sched0_w99, time, add(Y,13)) :- prop(sched0_w99, startTime, Y).
prop(a10_sched0_w99, location, stop10_w99).
prop(a10_sched0_w99, time, add(Y,14)) :- prop(sched0_w99, startTime, Y).
prop(a11_sched0_w99, location, stop11_w99).
prop(a11_sched0_w99, time, add(Y,16)) :- prop(sched0_w99, startTime, Y).
prop(a12_sched0_w99, location, stop12_w99).
prop(a12_sched0_w99, time, add(Y,19)) :- prop(sched0_w99, startTime, Y).
prop(a13_sched0_w99, location, stop13_w99).
prop(a13_sched0_w99, time, add(Y,21)) :- prop(sched0_w99, startTime, Y).
prop(a14_sched0_w99, location, stop14_w99).
prop(a14_sched0_w99, time, add(Y,24)) :- prop(sched0_w99, startTime, Y).
prop(a15_sched0_w99, location, stop16_w99).
prop(a15_sched0_w99, time, add(Y,29)) :- prop(sched0_w99, startTime, Y).
prop(a16_sched0_w99, location, stop17_w99).
prop(a16_sched0_w99, time, add(Y,34)) :- prop(sched0_w99, startTime, Y).
prop(a17_sched0_w99, location, stop18_w99).
prop(a17_sched0_w99, time, add(Y,39)) :- prop(sched0_w99, startTime, Y).
prop(a18_sched0_w99, location, stop19_w99).
prop(a18_sched0_w99, time, add(Y,41)) :- prop(sched0_w99, startTime, Y).

%arrivals for sched1_w99
prop(a0_sched1_w99, location, stop0_w99).
prop(a0_sched1_w99, time, add(Y,0)) :- prop(sched1_w99, startTime, Y).
prop(a1_sched1_w99, location, stop11_w99).
prop(a1_sched1_w99, time, add(Y,1)) :- prop(sched1_w99, startTime, Y).
prop(a2_sched1_w99, location, stop2_w99).
prop(a2_sched1_w99, time, add(Y,2)) :- prop(sched1_w99, startTime, Y).
prop(a3_sched1_w99, location, stop3_w99).
prop(a3_sched1_w99, time, add(Y,3)) :- prop(sched1_w99, startTime, Y).
prop(a4_sched1_w99, location, stop4_w99).
prop(a4_sched1_w99, time, add(Y,4)) :- prop(sched1_w99, startTime, Y).
prop(a5_sched1_w99, location, stop5_w99).
prop(a5_sched1_w99, time, add(Y,6)) :- prop(sched1_w99, startTime, Y).
prop(a6_sched1_w99, location, stop6_w99).
prop(a6_sched1_w99, time, add(Y,7)) :- prop(sched1_w99, startTime, Y).
prop(a7_sched1_w99, location, stop7_w99).
prop(a7_sched1_w99, time, add(Y,9)) :- prop(sched1_w99, startTime, Y).
prop(a8_sched1_w99, location, stop8_w99).
prop(a8_sched1_w99, time, add(Y,10)) :- prop(sched1_w99, startTime, Y).
prop(a9_sched1_w99, location, stop9_w99).
prop(a9_sched1_w99, time, add(Y,13)) :- prop(sched1_w99, startTime, Y).
prop(a10_sched1_w99, location, stop10_w99).
prop(a10_sched1_w99, time, add(Y,14)) :- prop(sched1_w99, startTime, Y).
prop(a11_sched1_w99, location, stop11_w99).
prop(a11_sched1_w99, time, add(Y,16)) :- prop(sched1_w99, startTime, Y).
prop(a12_sched1_w99, location, stop12_w99).
prop(a12_sched1_w99, time, add(Y,19)) :- prop(sched1_w99, startTime, Y).
prop(a13_sched1_w99, location, stop13_w99).
prop(a13_sched1_w99, time, add(Y,21)) :- prop(sched1_w99, startTime, Y).
prop(a14_sched1_w99, location, stop14_w99).
prop(a14_sched1_w99, time, add(Y,24)) :- prop(sched1_w99, startTime, Y).
prop(a15_sched1_w99, location, stop16_w99).
prop(a15_sched1_w99, time, add(Y,29)) :- prop(sched1_w99, startTime, Y).
prop(a16_sched1_w99, location, stop17_w99).
prop(a16_sched1_w99, time, add(Y,34)) :- prop(sched1_w99, startTime, Y).
prop(a17_sched1_w99, location, stop18_w99).
prop(a17_sched1_w99, time, add(Y,39)) :- prop(sched1_w99, startTime, Y).
prop(a18_sched1_w99, location, stop19_w99).
prop(a18_sched1_w99, time, add(Y,41)) :- prop(sched1_w99, startTime, Y).

%arrivals for sched2_w99
prop(a0_sched2_w99, location, stop0_w99).
prop(a0_sched2_w99, time, add(Y,0)) :- prop(sched2_w99, startTime, Y).
prop(a1_sched2_w99, location, stop11_w99).
prop(a1_sched2_w99, time, add(Y,1)) :- prop(sched2_w99, startTime, Y).
prop(a2_sched2_w99, location, stop2_w99).
prop(a2_sched2_w99, time, add(Y,2)) :- prop(sched2_w99, startTime, Y).
prop(a3_sched2_w99, location, stop3_w99).
prop(a3_sched2_w99, time, add(Y,3)) :- prop(sched2_w99, startTime, Y).
prop(a4_sched2_w99, location, stop4_w99).
prop(a4_sched2_w99, time, add(Y,4)) :- prop(sched2_w99, startTime, Y).
prop(a5_sched2_w99, location, stop5_w99).
prop(a5_sched2_w99, time, add(Y,6)) :- prop(sched2_w99, startTime, Y).
prop(a6_sched2_w99, location, stop6_w99).
prop(a6_sched2_w99, time, add(Y,7)) :- prop(sched2_w99, startTime, Y).
prop(a7_sched2_w99, location, stop7_w99).
prop(a7_sched2_w99, time, add(Y,9)) :- prop(sched2_w99, startTime, Y).
prop(a8_sched2_w99, location, stop8_w99).
prop(a8_sched2_w99, time, add(Y,10)) :- prop(sched2_w99, startTime, Y).
prop(a9_sched2_w99, location, stop9_w99).
prop(a9_sched2_w99, time, add(Y,13)) :- prop(sched2_w99, startTime, Y).
prop(a10_sched2_w99, location, stop10_w99).
prop(a10_sched2_w99, time, add(Y,14)) :- prop(sched2_w99, startTime, Y).
prop(a11_sched2_w99, location, stop11_w99).
prop(a11_sched2_w99, time, add(Y,16)) :- prop(sched2_w99, startTime, Y).
prop(a12_sched2_w99, location, stop12_w99).
prop(a12_sched2_w99, time, add(Y,19)) :- prop(sched2_w99, startTime, Y).
prop(a13_sched2_w99, location, stop13_w99).
prop(a13_sched2_w99, time, add(Y,21)) :- prop(sched2_w99, startTime, Y).
prop(a14_sched2_w99, location, stop14_w99).
prop(a14_sched2_w99, time, add(Y,24)) :- prop(sched2_w99, startTime, Y).
prop(a15_sched2_w99, location, stop16_w99).
prop(a15_sched2_w99, time, add(Y,29)) :- prop(sched2_w99, startTime, Y).
prop(a16_sched2_w99, location, stop17_w99).
prop(a16_sched2_w99, time, add(Y,34)) :- prop(sched2_w99, startTime, Y).
prop(a17_sched2_w99, location, stop18_w99).
prop(a17_sched2_w99, time, add(Y,39)) :- prop(sched2_w99, startTime, Y).
prop(a18_sched2_w99, location, stop19_w99).
prop(a18_sched2_w99, time, add(Y,41)) :- prop(sched2_w99, startTime, Y).


%arrivals for sched3_w99
prop(a0_sched3_w99, location, stop0_w99).
prop(a0_sched3_w99, time, add(Y,0)) :- prop(sched3_w99, startTime, Y).
prop(a1_sched3_w99, location, stop11_w99).
prop(a1_sched3_w99, time, add(Y,1)) :- prop(sched3_w99, startTime, Y).
prop(a2_sched3_w99, location, stop2_w99).
prop(a2_sched3_w99, time, add(Y,2)) :- prop(sched3_w99, startTime, Y).
prop(a3_sched3_w99, location, stop3_w99).
prop(a3_sched3_w99, time, add(Y,3)) :- prop(sched3_w99, startTime, Y).
prop(a4_sched3_w99, location, stop4_w99).
prop(a4_sched3_w99, time, add(Y,4)) :- prop(sched3_w99, startTime, Y).
prop(a5_sched3_w99, location, stop5_w99).
prop(a5_sched3_w99, time, add(Y,6)) :- prop(sched3_w99, startTime, Y).
prop(a6_sched3_w99, location, stop6_w99).
prop(a6_sched3_w99, time, add(Y,7)) :- prop(sched3_w99, startTime, Y).
prop(a7_sched3_w99, location, stop7_w99).
prop(a7_sched3_w99, time, add(Y,9)) :- prop(sched3_w99, startTime, Y).
prop(a8_sched3_w99, location, stop8_w99).
prop(a8_sched3_w99, time, add(Y,10)) :- prop(sched3_w99, startTime, Y).
prop(a9_sched3_w99, location, stop9_w99).
prop(a9_sched3_w99, time, add(Y,13)) :- prop(sched3_w99, startTime, Y).
prop(a10_sched3_w99, location, stop10_w99).
prop(a10_sched3_w99, time, add(Y,14)) :- prop(sched3_w99, startTime, Y).
prop(a11_sched3_w99, location, stop11_w99).
prop(a11_sched3_w99, time, add(Y,16)) :- prop(sched3_w99, startTime, Y).
prop(a12_sched3_w99, location, stop12_w99).
prop(a12_sched3_w99, time, add(Y,19)) :- prop(sched3_w99, startTime, Y).
prop(a13_sched3_w99, location, stop13_w99).
prop(a13_sched3_w99, time, add(Y,21)) :- prop(sched3_w99, startTime, Y).
prop(a14_sched3_w99, location, stop14_w99).
prop(a14_sched3_w99, time, add(Y,24)) :- prop(sched3_w99, startTime, Y).
prop(a15_sched3_w99, location, stop16_w99).
prop(a15_sched3_w99, time, add(Y,29)) :- prop(sched3_w99, startTime, Y).
prop(a16_sched3_w99, location, stop17_w99).
prop(a16_sched3_w99, time, add(Y,34)) :- prop(sched3_w99, startTime, Y).
prop(a17_sched3_w99, location, stop18_w99).
prop(a17_sched3_w99, time, add(Y,39)) :- prop(sched3_w99, startTime, Y).
prop(a18_sched3_w99, location, stop19_w99).
prop(a18_sched3_w99, time, add(Y,41)) :- prop(sched3_w99, startTime, Y).

%arrivals for sched4_w99
prop(a0_sched4_w99, location, stop0_w99).
prop(a0_sched4_w99, time, add(Y,0)) :- prop(sched4_w99, startTime, Y).
prop(a1_sched4_w99, location, stop11_w99).
prop(a1_sched4_w99, time, add(Y,1)) :- prop(sched4_w99, startTime, Y).
prop(a2_sched4_w99, location, stop2_w99).
prop(a2_sched4_w99, time, add(Y,2)) :- prop(sched4_w99, startTime, Y).
prop(a3_sched4_w99, location, stop3_w99).
prop(a3_sched4_w99, time, add(Y,3)) :- prop(sched4_w99, startTime, Y).
prop(a4_sched4_w99, location, stop4_w99).
prop(a4_sched4_w99, time, add(Y,4)) :- prop(sched4_w99, startTime, Y).
prop(a5_sched4_w99, location, stop5_w99).
prop(a5_sched4_w99, time, add(Y,6)) :- prop(sched4_w99, startTime, Y).
prop(a6_sched4_w99, location, stop6_w99).
prop(a6_sched4_w99, time, add(Y,7)) :- prop(sched4_w99, startTime, Y).
prop(a7_sched4_w99, location, stop7_w99).
prop(a7_sched4_w99, time, add(Y,9)) :- prop(sched4_w99, startTime, Y).
prop(a8_sched4_w99, location, stop8_w99).
prop(a8_sched4_w99, time, add(Y,10)) :- prop(sched4_w99, startTime, Y).
prop(a9_sched4_w99, location, stop9_w99).
prop(a9_sched4_w99, time, add(Y,13)) :- prop(sched4_w99, startTime, Y).
prop(a10_sched4_w99, location, stop10_w99).
prop(a10_sched4_w99, time, add(Y,14)) :- prop(sched4_w99, startTime, Y).
prop(a11_sched4_w99, location, stop11_w99).
prop(a11_sched4_w99, time, add(Y,16)) :- prop(sched4_w99, startTime, Y).
prop(a12_sched4_w99, location, stop12_w99).
prop(a12_sched4_w99, time, add(Y,19)) :- prop(sched4_w99, startTime, Y).
prop(a13_sched4_w99, location, stop13_w99).
prop(a13_sched4_w99, time, add(Y,21)) :- prop(sched4_w99, startTime, Y).
prop(a14_sched4_w99, location, stop14_w99).
prop(a14_sched4_w99, time, add(Y,24)) :- prop(sched4_w99, startTime, Y).
prop(a15_sched4_w99, location, stop16_w99).
prop(a15_sched4_w99, time, add(Y,29)) :- prop(sched4_w99, startTime, Y).
prop(a16_sched4_w99, location, stop17_w99).
prop(a16_sched4_w99, time, add(Y,34)) :- prop(sched4_w99, startTime, Y).
prop(a17_sched4_w99, location, stop18_w99).
prop(a17_sched4_w99, time, add(Y,39)) :- prop(sched4_w99, startTime, Y).
prop(a18_sched4_w99, location, stop19_w99).
prop(a18_sched4_w99, time, add(Y,41)) :- prop(sched4_w99, startTime, Y).

%arrivals for sched5_w99
prop(a0_sched5_w99, location, stop0_w99).
prop(a0_sched5_w99, time, add(Y,0)) :- prop(sched5_w99, startTime, Y).
prop(a1_sched5_w99, location, stop11_w99).
prop(a1_sched5_w99, time, add(Y,1)) :- prop(sched5_w99, startTime, Y).
prop(a2_sched5_w99, location, stop2_w99).
prop(a2_sched5_w99, time, add(Y,2)) :- prop(sched5_w99, startTime, Y).
prop(a3_sched5_w99, location, stop3_w99).
prop(a3_sched5_w99, time, add(Y,3)) :- prop(sched5_w99, startTime, Y).
prop(a4_sched5_w99, location, stop4_w99).
prop(a4_sched5_w99, time, add(Y,4)) :- prop(sched5_w99, startTime, Y).
prop(a5_sched5_w99, location, stop5_w99).
prop(a5_sched5_w99, time, add(Y,6)) :- prop(sched5_w99, startTime, Y).
prop(a6_sched5_w99, location, stop6_w99).
prop(a6_sched5_w99, time, add(Y,7)) :- prop(sched5_w99, startTime, Y).
prop(a7_sched5_w99, location, stop7_w99).
prop(a7_sched5_w99, time, add(Y,9)) :- prop(sched5_w99, startTime, Y).
prop(a8_sched5_w99, location, stop8_w99).
prop(a8_sched5_w99, time, add(Y,10)) :- prop(sched5_w99, startTime, Y).
prop(a9_sched5_w99, location, stop9_w99).
prop(a9_sched5_w99, time, add(Y,13)) :- prop(sched5_w99, startTime, Y).
prop(a10_sched5_w99, location, stop10_w99).
prop(a10_sched5_w99, time, add(Y,14)) :- prop(sched5_w99, startTime, Y).
prop(a11_sched5_w99, location, stop11_w99).
prop(a11_sched5_w99, time, add(Y,16)) :- prop(sched5_w99, startTime, Y).
prop(a12_sched5_w99, location, stop12_w99).
prop(a12_sched5_w99, time, add(Y,19)) :- prop(sched5_w99, startTime, Y).
prop(a13_sched5_w99, location, stop13_w99).
prop(a13_sched5_w99, time, add(Y,21)) :- prop(sched5_w99, startTime, Y).
prop(a14_sched5_w99, location, stop14_w99).
prop(a14_sched5_w99, time, add(Y,24)) :- prop(sched5_w99, startTime, Y).
prop(a15_sched5_w99, location, stop16_w99).
prop(a15_sched5_w99, time, add(Y,29)) :- prop(sched5_w99, startTime, Y).
prop(a16_sched5_w99, location, stop17_w99).
prop(a16_sched5_w99, time, add(Y,34)) :- prop(sched5_w99, startTime, Y).
prop(a17_sched5_w99, location, stop18_w99).
prop(a17_sched5_w99, time, add(Y,39)) :- prop(sched5_w99, startTime, Y).
prop(a18_sched5_w99, location, stop19_w99).
prop(a18_sched5_w99, time, add(Y,41)) :- prop(sched5_w99, startTime, Y).

%arrivals for sched6_w99
prop(a0_sched6_w99, location, stop0_w99).
prop(a0_sched6_w99, time, add(Y,0)) :- prop(sched6_w99, startTime, Y).
prop(a1_sched6_w99, location, stop11_w99).
prop(a1_sched6_w99, time, add(Y,1)) :- prop(sched6_w99, startTime, Y).
prop(a2_sched6_w99, location, stop2_w99).
prop(a2_sched6_w99, time, add(Y,2)) :- prop(sched6_w99, startTime, Y).
prop(a3_sched6_w99, location, stop3_w99).
prop(a3_sched6_w99, time, add(Y,3)) :- prop(sched6_w99, startTime, Y).
prop(a4_sched6_w99, location, stop4_w99).
prop(a4_sched6_w99, time, add(Y,4)) :- prop(sched6_w99, startTime, Y).
prop(a5_sched6_w99, location, stop5_w99).
prop(a5_sched6_w99, time, add(Y,6)) :- prop(sched6_w99, startTime, Y).
prop(a6_sched6_w99, location, stop6_w99).
prop(a6_sched6_w99, time, add(Y,7)) :- prop(sched6_w99, startTime, Y).
prop(a7_sched6_w99, location, stop7_w99).
prop(a7_sched6_w99, time, add(Y,9)) :- prop(sched6_w99, startTime, Y).
prop(a8_sched6_w99, location, stop8_w99).
prop(a8_sched6_w99, time, add(Y,10)) :- prop(sched6_w99, startTime, Y).
prop(a9_sched6_w99, location, stop9_w99).
prop(a9_sched6_w99, time, add(Y,13)) :- prop(sched6_w99, startTime, Y).
prop(a10_sched6_w99, location, stop10_w99).
prop(a10_sched6_w99, time, add(Y,14)) :- prop(sched6_w99, startTime, Y).
prop(a11_sched6_w99, location, stop11_w99).
prop(a11_sched6_w99, time, add(Y,16)) :- prop(sched6_w99, startTime, Y).
prop(a12_sched6_w99, location, stop12_w99).
prop(a12_sched6_w99, time, add(Y,19)) :- prop(sched6_w99, startTime, Y).
prop(a13_sched6_w99, location, stop13_w99).
prop(a13_sched6_w99, time, add(Y,21)) :- prop(sched6_w99, startTime, Y).
prop(a14_sched6_w99, location, stop14_w99).
prop(a14_sched6_w99, time, add(Y,24)) :- prop(sched6_w99, startTime, Y).
prop(a15_sched6_w99, location, stop16_w99).
prop(a15_sched6_w99, time, add(Y,29)) :- prop(sched6_w99, startTime, Y).
prop(a16_sched6_w99, location, stop17_w99).
prop(a16_sched6_w99, time, add(Y,34)) :- prop(sched6_w99, startTime, Y).
prop(a17_sched6_w99, location, stop18_w99).
prop(a17_sched6_w99, time, add(Y,39)) :- prop(sched6_w99, startTime, Y).
prop(a18_sched6_w99, location, stop19_w99).
prop(a18_sched6_w99, time, add(Y,41)) :- prop(sched6_w99, startTime, Y).

%arrivals for sched7_w99
prop(a0_sched7_w99, location, stop0_w99).
prop(a0_sched7_w99, time, add(Y,0)) :- prop(sched7_w99, startTime, Y).
prop(a1_sched7_w99, location, stop11_w99).
prop(a1_sched7_w99, time, add(Y,1)) :- prop(sched7_w99, startTime, Y).
prop(a2_sched7_w99, location, stop2_w99).
prop(a2_sched7_w99, time, add(Y,2)) :- prop(sched7_w99, startTime, Y).
prop(a3_sched7_w99, location, stop3_w99).
prop(a3_sched7_w99, time, add(Y,3)) :- prop(sched7_w99, startTime, Y).
prop(a4_sched7_w99, location, stop4_w99).
prop(a4_sched7_w99, time, add(Y,4)) :- prop(sched7_w99, startTime, Y).
prop(a5_sched7_w99, location, stop5_w99).
prop(a5_sched7_w99, time, add(Y,6)) :- prop(sched7_w99, startTime, Y).
prop(a6_sched7_w99, location, stop6_w99).
prop(a6_sched7_w99, time, add(Y,7)) :- prop(sched7_w99, startTime, Y).
prop(a7_sched7_w99, location, stop7_w99).
prop(a7_sched7_w99, time, add(Y,9)) :- prop(sched7_w99, startTime, Y).
prop(a8_sched7_w99, location, stop8_w99).
prop(a8_sched7_w99, time, add(Y,10)) :- prop(sched7_w99, startTime, Y).
prop(a9_sched7_w99, location, stop9_w99).
prop(a9_sched7_w99, time, add(Y,13)) :- prop(sched7_w99, startTime, Y).
prop(a10_sched7_w99, location, stop10_w99).
prop(a10_sched7_w99, time, add(Y,14)) :- prop(sched7_w99, startTime, Y).
prop(a11_sched7_w99, location, stop11_w99).
prop(a11_sched7_w99, time, add(Y,16)) :- prop(sched7_w99, startTime, Y).
prop(a12_sched7_w99, location, stop12_w99).
prop(a12_sched7_w99, time, add(Y,19)) :- prop(sched7_w99, startTime, Y).
prop(a13_sched7_w99, location, stop13_w99).
prop(a13_sched7_w99, time, add(Y,21)) :- prop(sched7_w99, startTime, Y).
prop(a14_sched7_w99, location, stop14_w99).
prop(a14_sched7_w99, time, add(Y,24)) :- prop(sched7_w99, startTime, Y).
prop(a15_sched7_w99, location, stop16_w99).
prop(a15_sched7_w99, time, add(Y,29)) :- prop(sched7_w99, startTime, Y).
prop(a16_sched7_w99, location, stop17_w99).
prop(a16_sched7_w99, time, add(Y,34)) :- prop(sched7_w99, startTime, Y).
prop(a17_sched7_w99, location, stop18_w99).
prop(a17_sched7_w99, time, add(Y,39)) :- prop(sched7_w99, startTime, Y).
prop(a18_sched7_w99, location, stop19_w99).
prop(a18_sched7_w99, time, add(Y,41)) :- prop(sched7_w99, startTime, Y).

%arrivals for sched8_w99
prop(a0_sched8_w99, location, stop0_w99).
prop(a0_sched8_w99, time, add(Y,0)) :- prop(sched8_w99, startTime, Y).
prop(a1_sched8_w99, location, stop11_w99).
prop(a1_sched8_w99, time, add(Y,1)) :- prop(sched8_w99, startTime, Y).
prop(a2_sched8_w99, location, stop2_w99).
prop(a2_sched8_w99, time, add(Y,2)) :- prop(sched8_w99, startTime, Y).
prop(a3_sched8_w99, location, stop3_w99).
prop(a3_sched8_w99, time, add(Y,3)) :- prop(sched8_w99, startTime, Y).
prop(a4_sched8_w99, location, stop4_w99).
prop(a4_sched8_w99, time, add(Y,4)) :- prop(sched8_w99, startTime, Y).
prop(a5_sched8_w99, location, stop5_w99).
prop(a5_sched8_w99, time, add(Y,6)) :- prop(sched8_w99, startTime, Y).
prop(a6_sched8_w99, location, stop6_w99).
prop(a6_sched8_w99, time, add(Y,7)) :- prop(sched8_w99, startTime, Y).
prop(a7_sched8_w99, location, stop7_w99).
prop(a7_sched8_w99, time, add(Y,9)) :- prop(sched8_w99, startTime, Y).
prop(a8_sched8_w99, location, stop8_w99).
prop(a8_sched8_w99, time, add(Y,10)) :- prop(sched8_w99, startTime, Y).
prop(a9_sched8_w99, location, stop9_w99).
prop(a9_sched8_w99, time, add(Y,13)) :- prop(sched8_w99, startTime, Y).
prop(a10_sched8_w99, location, stop10_w99).
prop(a10_sched8_w99, time, add(Y,14)) :- prop(sched8_w99, startTime, Y).
prop(a11_sched8_w99, location, stop11_w99).
prop(a11_sched8_w99, time, add(Y,16)) :- prop(sched8_w99, startTime, Y).
prop(a12_sched8_w99, location, stop12_w99).
prop(a12_sched8_w99, time, add(Y,19)) :- prop(sched8_w99, startTime, Y).
prop(a13_sched8_w99, location, stop13_w99).
prop(a13_sched8_w99, time, add(Y,21)) :- prop(sched8_w99, startTime, Y).
prop(a14_sched8_w99, location, stop14_w99).
prop(a14_sched8_w99, time, add(Y,24)) :- prop(sched8_w99, startTime, Y).
prop(a15_sched8_w99, location, stop16_w99).
prop(a15_sched8_w99, time, add(Y,29)) :- prop(sched8_w99, startTime, Y).
prop(a16_sched8_w99, location, stop17_w99).
prop(a16_sched8_w99, time, add(Y,34)) :- prop(sched8_w99, startTime, Y).
prop(a17_sched8_w99, location, stop18_w99).
prop(a17_sched8_w99, time, add(Y,39)) :- prop(sched8_w99, startTime, Y).
prop(a18_sched8_w99, location, stop19_w99).
prop(a18_sched8_w99, time, add(Y,41)) :- prop(sched8_w99, startTime, Y).

%arrivals for sched9_w99
prop(a0_sched9_w99, location, stop0_w99).
prop(a0_sched9_w99, time, add(Y,0)) :- prop(sched9_w99, startTime, Y).
prop(a1_sched9_w99, location, stop11_w99).
prop(a1_sched9_w99, time, add(Y,1)) :- prop(sched9_w99, startTime, Y).
prop(a2_sched9_w99, location, stop2_w99).
prop(a2_sched9_w99, time, add(Y,2)) :- prop(sched9_w99, startTime, Y).
prop(a3_sched9_w99, location, stop3_w99).
prop(a3_sched9_w99, time, add(Y,3)) :- prop(sched9_w99, startTime, Y).
prop(a4_sched9_w99, location, stop4_w99).
prop(a4_sched9_w99, time, add(Y,4)) :- prop(sched9_w99, startTime, Y).
prop(a5_sched9_w99, location, stop5_w99).
prop(a5_sched9_w99, time, add(Y,6)) :- prop(sched9_w99, startTime, Y).
prop(a6_sched9_w99, location, stop6_w99).
prop(a6_sched9_w99, time, add(Y,7)) :- prop(sched9_w99, startTime, Y).
prop(a7_sched9_w99, location, stop7_w99).
prop(a7_sched9_w99, time, add(Y,9)) :- prop(sched9_w99, startTime, Y).
prop(a8_sched9_w99, location, stop8_w99).
prop(a8_sched9_w99, time, add(Y,10)) :- prop(sched9_w99, startTime, Y).
prop(a9_sched9_w99, location, stop9_w99).
prop(a9_sched9_w99, time, add(Y,13)) :- prop(sched9_w99, startTime, Y).
prop(a10_sched9_w99, location, stop10_w99).
prop(a10_sched9_w99, time, add(Y,14)) :- prop(sched9_w99, startTime, Y).
prop(a11_sched9_w99, location, stop11_w99).
prop(a11_sched9_w99, time, add(Y,16)) :- prop(sched9_w99, startTime, Y).
prop(a12_sched9_w99, location, stop12_w99).
prop(a12_sched9_w99, time, add(Y,19)) :- prop(sched9_w99, startTime, Y).
prop(a13_sched9_w99, location, stop13_w99).
prop(a13_sched9_w99, time, add(Y,21)) :- prop(sched9_w99, startTime, Y).
prop(a14_sched9_w99, location, stop14_w99).
prop(a14_sched9_w99, time, add(Y,24)) :- prop(sched9_w99, startTime, Y).
prop(a15_sched9_w99, location, stop16_w99).
prop(a15_sched9_w99, time, add(Y,29)) :- prop(sched9_w99, startTime, Y).
prop(a16_sched9_w99, location, stop17_w99).
prop(a16_sched9_w99, time, add(Y,34)) :- prop(sched9_w99, startTime, Y).
prop(a17_sched9_w99, location, stop18_w99).
prop(a17_sched9_w99, time, add(Y,39)) :- prop(sched9_w99, startTime, Y).
prop(a18_sched9_w99, location, stop19_w99).
prop(a18_sched9_w99, time, add(Y,41)) :- prop(sched9_w99, startTime, Y).

%an_sched0_e99 is at stopm_e99...
prop(a0_sched0_e99, location, stop0_e99).
prop(a0_sched0_e99, time, add(Y,0)) :- prop(sched0_e99, startTime, Y).
prop(a1_sched0_e99, location, stop11_e99).
prop(a1_sched0_e99, time, add(Y,1)) :- prop(sched0_e99, startTime, Y).
prop(a2_sched0_e99, location, stop2_e99).
prop(a2_sched0_e99, time, add(Y,6)) :- prop(sched0_e99, startTime, Y).
prop(a3_sched0_e99, location, stop3_e99).
prop(a3_sched0_e99, time, add(Y,10)) :- prop(sched0_e99, startTime, Y).
prop(a4_sched0_e99, location, stop4_e99).
prop(a4_sched0_e99, time, add(Y,13)) :- prop(sched0_e99, startTime, Y).
prop(a5_sched0_e99, location, stop5_e99).
prop(a5_sched0_e99, time, add(Y,16)) :- prop(sched0_e99, startTime, Y).
prop(a6_sched0_e99, location, stop6_e99).
prop(a6_sched0_e99, time, add(Y,18)) :- prop(sched0_e99, startTime, Y).
prop(a7_sched0_e99, location, stop7_e99).
prop(a7_sched0_e99, time, add(Y,21)) :- prop(sched0_e99, startTime, Y).
prop(a8_sched0_e99, location, stop8_e99).
prop(a8_sched0_e99, time, add(Y,22)) :- prop(sched0_e99, startTime, Y).
prop(a9_sched0_e99, location, stop9_e99).
prop(a9_sched0_e99, time, add(Y,25)) :- prop(sched0_e99, startTime, Y).
prop(a10_sched0_e99, location, stop10_e99).
prop(a10_sched0_e99, time, add(Y,27)) :- prop(sched0_e99, startTime, Y).
prop(a11_sched0_e99, location, stop11_e99).
prop(a11_sched0_e99, time, add(Y,30)) :- prop(sched0_e99, startTime, Y).
prop(a12_sched0_e99, location, stop12_e99).
prop(a12_sched0_e99, time, add(Y,32)) :- prop(sched0_e99, startTime, Y).
prop(a13_sched0_e99, location, stop13_e99).
prop(a13_sched0_e99, time, add(Y,33)) :- prop(sched0_e99, startTime, Y).

%arrivals for sched1_e99
prop(a0_sched1_e99, location, stop0_e99).
prop(a0_sched1_e99, time, add(Y,0)) :- prop(sched1_e99, startTime, Y).
prop(a1_sched1_e99, location, stop11_e99).
prop(a1_sched1_e99, time, add(Y,1)) :- prop(sched1_e99, startTime, Y).
prop(a2_sched1_e99, location, stop2_e99).
prop(a2_sched1_e99, time, add(Y,6)) :- prop(sched1_e99, startTime, Y).
prop(a3_sched1_e99, location, stop3_e99).
prop(a3_sched1_e99, time, add(Y,10)) :- prop(sched1_e99, startTime, Y).
prop(a4_sched1_e99, location, stop4_e99).
prop(a4_sched1_e99, time, add(Y,13)) :- prop(sched1_e99, startTime, Y).
prop(a5_sched1_e99, location, stop5_e99).
prop(a5_sched1_e99, time, add(Y,16)) :- prop(sched1_e99, startTime, Y).
prop(a6_sched1_e99, location, stop6_e99).
prop(a6_sched1_e99, time, add(Y,18)) :- prop(sched1_e99, startTime, Y).
prop(a7_sched1_e99, location, stop7_e99).
prop(a7_sched1_e99, time, add(Y,21)) :- prop(sched1_e99, startTime, Y).
prop(a8_sched1_e99, location, stop8_e99).
prop(a8_sched1_e99, time, add(Y,22)) :- prop(sched1_e99, startTime, Y).
prop(a9_sched1_e99, location, stop9_e99).
prop(a9_sched1_e99, time, add(Y,25)) :- prop(sched1_e99, startTime, Y).
prop(a10_sched1_e99, location, stop10_e99).
prop(a10_sched1_e99, time, add(Y,27)) :- prop(sched1_e99, startTime, Y).
prop(a11_sched1_e99, location, stop11_e99).
prop(a11_sched1_e99, time, add(Y,30)) :- prop(sched1_e99, startTime, Y).
prop(a12_sched1_e99, location, stop12_e99).
prop(a12_sched1_e99, time, add(Y,32)) :- prop(sched1_e99, startTime, Y).
prop(a13_sched1_e99, location, stop13_e99).
prop(a13_sched1_e99, time, add(Y,33)) :- prop(sched1_e99, startTime, Y).

%arrivals for sched2_e99
prop(a0_sched2_e99, location, stop0_e99).
prop(a0_sched2_e99, time, add(Y,0)) :- prop(sched2_e99, startTime, Y).
prop(a1_sched2_e99, location, stop11_e99).
prop(a1_sched2_e99, time, add(Y,1)) :- prop(sched2_e99, startTime, Y).
prop(a2_sched2_e99, location, stop2_e99).
prop(a2_sched2_e99, time, add(Y,6)) :- prop(sched2_e99, startTime, Y).
prop(a3_sched2_e99, location, stop3_e99).
prop(a3_sched2_e99, time, add(Y,10)) :- prop(sched2_e99, startTime, Y).
prop(a4_sched2_e99, location, stop4_e99).
prop(a4_sched2_e99, time, add(Y,13)) :- prop(sched2_e99, startTime, Y).
prop(a5_sched2_e99, location, stop5_e99).
prop(a5_sched2_e99, time, add(Y,16)) :- prop(sched2_e99, startTime, Y).
prop(a6_sched2_e99, location, stop6_e99).
prop(a6_sched2_e99, time, add(Y,18)) :- prop(sched2_e99, startTime, Y).
prop(a7_sched2_e99, location, stop7_e99).
prop(a7_sched2_e99, time, add(Y,21)) :- prop(sched2_e99, startTime, Y).
prop(a8_sched2_e99, location, stop8_e99).
prop(a8_sched2_e99, time, add(Y,22)) :- prop(sched2_e99, startTime, Y).
prop(a9_sched2_e99, location, stop9_e99).
prop(a9_sched2_e99, time, add(Y,25)) :- prop(sched2_e99, startTime, Y).
prop(a10_sched2_e99, location, stop10_e99).
prop(a10_sched2_e99, time, add(Y,27)) :- prop(sched2_e99, startTime, Y).
prop(a11_sched2_e99, location, stop11_e99).
prop(a11_sched2_e99, time, add(Y,30)) :- prop(sched2_e99, startTime, Y).
prop(a12_sched2_e99, location, stop12_e99).
prop(a12_sched2_e99, time, add(Y,32)) :- prop(sched2_e99, startTime, Y).
prop(a13_sched2_e99, location, stop13_e99).
prop(a13_sched2_e99, time, add(Y,33)) :- prop(sched2_e99, startTime, Y).


%arrivals for sched3_e99
prop(a0_sched3_e99, location, stop0_e99).
prop(a0_sched3_e99, time, add(Y,0)) :- prop(sched3_e99, startTime, Y).
prop(a1_sched3_e99, location, stop11_e99).
prop(a1_sched3_e99, time, add(Y,1)) :- prop(sched3_e99, startTime, Y).
prop(a2_sched3_e99, location, stop2_e99).
prop(a2_sched3_e99, time, add(Y,6)) :- prop(sched3_e99, startTime, Y).
prop(a3_sched3_e99, location, stop3_e99).
prop(a3_sched3_e99, time, add(Y,10)) :- prop(sched3_e99, startTime, Y).
prop(a4_sched3_e99, location, stop4_e99).
prop(a4_sched3_e99, time, add(Y,13)) :- prop(sched3_e99, startTime, Y).
prop(a5_sched3_e99, location, stop5_e99).
prop(a5_sched3_e99, time, add(Y,16)) :- prop(sched3_e99, startTime, Y).
prop(a6_sched3_e99, location, stop6_e99).
prop(a6_sched3_e99, time, add(Y,18)) :- prop(sched3_e99, startTime, Y).
prop(a7_sched3_e99, location, stop7_e99).
prop(a7_sched3_e99, time, add(Y,21)) :- prop(sched3_e99, startTime, Y).
prop(a8_sched3_e99, location, stop8_e99).
prop(a8_sched3_e99, time, add(Y,22)) :- prop(sched3_e99, startTime, Y).
prop(a9_sched3_e99, location, stop9_e99).
prop(a9_sched3_e99, time, add(Y,25)) :- prop(sched3_e99, startTime, Y).
prop(a10_sched3_e99, location, stop10_e99).
prop(a10_sched3_e99, time, add(Y,27)) :- prop(sched3_e99, startTime, Y).
prop(a11_sched3_e99, location, stop11_e99).
prop(a11_sched3_e99, time, add(Y,30)) :- prop(sched3_e99, startTime, Y).
prop(a12_sched3_e99, location, stop12_e99).
prop(a12_sched3_e99, time, add(Y,32)) :- prop(sched3_e99, startTime, Y).
prop(a13_sched3_e99, location, stop13_e99).
prop(a13_sched3_e99, time, add(Y,33)) :- prop(sched3_e99, startTime, Y).

%arrivals for sched4_e99
prop(a0_sched4_e99, location, stop0_e99).
prop(a0_sched4_e99, time, add(Y,0)) :- prop(sched4_e99, startTime, Y).
prop(a1_sched4_e99, location, stop11_e99).
prop(a1_sched4_e99, time, add(Y,1)) :- prop(sched4_e99, startTime, Y).
prop(a2_sched4_e99, location, stop2_e99).
prop(a2_sched4_e99, time, add(Y,6)) :- prop(sched4_e99, startTime, Y).
prop(a3_sched4_e99, location, stop3_e99).
prop(a3_sched4_e99, time, add(Y,10)) :- prop(sched4_e99, startTime, Y).
prop(a4_sched4_e99, location, stop4_e99).
prop(a4_sched4_e99, time, add(Y,13)) :- prop(sched4_e99, startTime, Y).
prop(a5_sched4_e99, location, stop5_e99).
prop(a5_sched4_e99, time, add(Y,16)) :- prop(sched4_e99, startTime, Y).
prop(a6_sched4_e99, location, stop6_e99).
prop(a6_sched4_e99, time, add(Y,18)) :- prop(sched4_e99, startTime, Y).
prop(a7_sched4_e99, location, stop7_e99).
prop(a7_sched4_e99, time, add(Y,21)) :- prop(sched4_e99, startTime, Y).
prop(a8_sched4_e99, location, stop8_e99).
prop(a8_sched4_e99, time, add(Y,22)) :- prop(sched4_e99, startTime, Y).
prop(a9_sched4_e99, location, stop9_e99).
prop(a9_sched4_e99, time, add(Y,25)) :- prop(sched4_e99, startTime, Y).
prop(a10_sched4_e99, location, stop10_e99).
prop(a10_sched4_e99, time, add(Y,27)) :- prop(sched4_e99, startTime, Y).
prop(a11_sched4_e99, location, stop11_e99).
prop(a11_sched4_e99, time, add(Y,30)) :- prop(sched4_e99, startTime, Y).
prop(a12_sched4_e99, location, stop12_e99).
prop(a12_sched4_e99, time, add(Y,32)) :- prop(sched4_e99, startTime, Y).
prop(a13_sched4_e99, location, stop13_e99).
prop(a13_sched4_e99, time, add(Y,33)) :- prop(sched4_e99, startTime, Y).

%arrivals for sched5_e99
prop(a0_sched5_e99, location, stop0_e99).
prop(a0_sched5_e99, time, add(Y,0)) :- prop(sched5_e99, startTime, Y).
prop(a1_sched5_e99, location, stop11_e99).
prop(a1_sched5_e99, time, add(Y,1)) :- prop(sched5_e99, startTime, Y).
prop(a2_sched5_e99, location, stop2_e99).
prop(a2_sched5_e99, time, add(Y,6)) :- prop(sched5_e99, startTime, Y).
prop(a3_sched5_e99, location, stop3_e99).
prop(a3_sched5_e99, time, add(Y,10)) :- prop(sched5_e99, startTime, Y).
prop(a4_sched5_e99, location, stop4_e99).
prop(a4_sched5_e99, time, add(Y,13)) :- prop(sched5_e99, startTime, Y).
prop(a5_sched5_e99, location, stop5_e99).
prop(a5_sched5_e99, time, add(Y,16)) :- prop(sched5_e99, startTime, Y).
prop(a6_sched5_e99, location, stop6_e99).
prop(a6_sched5_e99, time, add(Y,18)) :- prop(sched5_e99, startTime, Y).
prop(a7_sched5_e99, location, stop7_e99).
prop(a7_sched5_e99, time, add(Y,21)) :- prop(sched5_e99, startTime, Y).
prop(a8_sched5_e99, location, stop8_e99).
prop(a8_sched5_e99, time, add(Y,22)) :- prop(sched5_e99, startTime, Y).
prop(a9_sched5_e99, location, stop9_e99).
prop(a9_sched5_e99, time, add(Y,25)) :- prop(sched5_e99, startTime, Y).
prop(a10_sched5_e99, location, stop10_e99).
prop(a10_sched5_e99, time, add(Y,27)) :- prop(sched5_e99, startTime, Y).
prop(a11_sched5_e99, location, stop11_e99).
prop(a11_sched5_e99, time, add(Y,30)) :- prop(sched5_e99, startTime, Y).
prop(a12_sched5_e99, location, stop12_e99).
prop(a12_sched5_e99, time, add(Y,32)) :- prop(sched5_e99, startTime, Y).
prop(a13_sched5_e99, location, stop13_e99).
prop(a13_sched5_e99, time, add(Y,33)) :- prop(sched5_e99, startTime, Y).

%arrivals for sched6_e99
prop(a0_sched6_e99, location, stop0_e99).
prop(a0_sched6_e99, time, add(Y,0)) :- prop(sched6_e99, startTime, Y).
prop(a1_sched6_e99, location, stop11_e99).
prop(a1_sched6_e99, time, add(Y,1)) :- prop(sched6_e99, startTime, Y).
prop(a2_sched6_e99, location, stop2_e99).
prop(a2_sched6_e99, time, add(Y,6)) :- prop(sched6_e99, startTime, Y).
prop(a3_sched6_e99, location, stop3_e99).
prop(a3_sched6_e99, time, add(Y,10)) :- prop(sched6_e99, startTime, Y).
prop(a4_sched6_e99, location, stop4_e99).
prop(a4_sched6_e99, time, add(Y,13)) :- prop(sched6_e99, startTime, Y).
prop(a5_sched6_e99, location, stop5_e99).
prop(a5_sched6_e99, time, add(Y,16)) :- prop(sched6_e99, startTime, Y).
prop(a6_sched6_e99, location, stop6_e99).
prop(a6_sched6_e99, time, add(Y,18)) :- prop(sched6_e99, startTime, Y).
prop(a7_sched6_e99, location, stop7_e99).
prop(a7_sched6_e99, time, add(Y,21)) :- prop(sched6_e99, startTime, Y).
prop(a8_sched6_e99, location, stop8_e99).
prop(a8_sched6_e99, time, add(Y,22)) :- prop(sched6_e99, startTime, Y).
prop(a9_sched6_e99, location, stop9_e99).
prop(a9_sched6_e99, time, add(Y,25)) :- prop(sched6_e99, startTime, Y).
prop(a10_sched6_e99, location, stop10_e99).
prop(a10_sched6_e99, time, add(Y,27)) :- prop(sched6_e99, startTime, Y).
prop(a11_sched6_e99, location, stop11_e99).
prop(a11_sched6_e99, time, add(Y,30)) :- prop(sched6_e99, startTime, Y).
prop(a12_sched6_e99, location, stop12_e99).
prop(a12_sched6_e99, time, add(Y,32)) :- prop(sched6_e99, startTime, Y).
prop(a13_sched6_e99, location, stop13_e99).
prop(a13_sched6_e99, time, add(Y,33)) :- prop(sched6_e99, startTime, Y).

%arrivals for sched7_e99
prop(a0_sched7_e99, location, stop0_e99).
prop(a0_sched7_e99, time, add(Y,0)) :- prop(sched7_e99, startTime, Y).
prop(a1_sched7_e99, location, stop11_e99).
prop(a1_sched7_e99, time, add(Y,1)) :- prop(sched7_e99, startTime, Y).
prop(a2_sched7_e99, location, stop2_e99).
prop(a2_sched7_e99, time, add(Y,6)) :- prop(sched7_e99, startTime, Y).
prop(a3_sched7_e99, location, stop3_e99).
prop(a3_sched7_e99, time, add(Y,10)) :- prop(sched7_e99, startTime, Y).
prop(a4_sched7_e99, location, stop4_e99).
prop(a4_sched7_e99, time, add(Y,13)) :- prop(sched7_e99, startTime, Y).
prop(a5_sched7_e99, location, stop5_e99).
prop(a5_sched7_e99, time, add(Y,16)) :- prop(sched7_e99, startTime, Y).
prop(a6_sched7_e99, location, stop6_e99).
prop(a6_sched7_e99, time, add(Y,18)) :- prop(sched7_e99, startTime, Y).
prop(a7_sched7_e99, location, stop7_e99).
prop(a7_sched7_e99, time, add(Y,21)) :- prop(sched7_e99, startTime, Y).
prop(a8_sched7_e99, location, stop8_e99).
prop(a8_sched7_e99, time, add(Y,22)) :- prop(sched7_e99, startTime, Y).
prop(a9_sched7_e99, location, stop9_e99).
prop(a9_sched7_e99, time, add(Y,25)) :- prop(sched7_e99, startTime, Y).
prop(a10_sched7_e99, location, stop10_e99).
prop(a10_sched7_e99, time, add(Y,27)) :- prop(sched7_e99, startTime, Y).
prop(a11_sched7_e99, location, stop11_e99).
prop(a11_sched7_e99, time, add(Y,30)) :- prop(sched7_e99, startTime, Y).
prop(a12_sched7_e99, location, stop12_e99).
prop(a12_sched7_e99, time, add(Y,32)) :- prop(sched7_e99, startTime, Y).
prop(a13_sched7_e99, location, stop13_e99).
prop(a13_sched7_e99, time, add(Y,33)) :- prop(sched7_e99, startTime, Y).

%arrivals for sched8_e99
prop(a0_sched8_e99, location, stop0_e99).
prop(a0_sched8_e99, time, add(Y,0)) :- prop(sched8_e99, startTime, Y).
prop(a1_sched8_e99, location, stop11_e99).
prop(a1_sched8_e99, time, add(Y,1)) :- prop(sched8_e99, startTime, Y).
prop(a2_sched8_e99, location, stop2_e99).
prop(a2_sched8_e99, time, add(Y,6)) :- prop(sched8_e99, startTime, Y).
prop(a3_sched8_e99, location, stop3_e99).
prop(a3_sched8_e99, time, add(Y,10)) :- prop(sched8_e99, startTime, Y).
prop(a4_sched8_e99, location, stop4_e99).
prop(a4_sched8_e99, time, add(Y,13)) :- prop(sched8_e99, startTime, Y).
prop(a5_sched8_e99, location, stop5_e99).
prop(a5_sched8_e99, time, add(Y,16)) :- prop(sched8_e99, startTime, Y).
prop(a6_sched8_e99, location, stop6_e99).
prop(a6_sched8_e99, time, add(Y,18)) :- prop(sched8_e99, startTime, Y).
prop(a7_sched8_e99, location, stop7_e99).
prop(a7_sched8_e99, time, add(Y,21)) :- prop(sched8_e99, startTime, Y).
prop(a8_sched8_e99, location, stop8_e99).
prop(a8_sched8_e99, time, add(Y,22)) :- prop(sched8_e99, startTime, Y).
prop(a9_sched8_e99, location, stop9_e99).
prop(a9_sched8_e99, time, add(Y,25)) :- prop(sched8_e99, startTime, Y).
prop(a10_sched8_e99, location, stop10_e99).
prop(a10_sched8_e99, time, add(Y,27)) :- prop(sched8_e99, startTime, Y).
prop(a11_sched8_e99, location, stop11_e99).
prop(a11_sched8_e99, time, add(Y,30)) :- prop(sched8_e99, startTime, Y).
prop(a12_sched8_e99, location, stop12_e99).
prop(a12_sched8_e99, time, add(Y,32)) :- prop(sched8_e99, startTime, Y).
prop(a13_sched8_e99, location, stop13_e99).
prop(a13_sched8_e99, time, add(Y,33)) :- prop(sched8_e99, startTime, Y).

%arrivals for sched9_e99
prop(a0_sched9_e99, location, stop0_e99).
prop(a0_sched9_e99, time, add(Y,0)) :- prop(sched9_e99, startTime, Y).
prop(a1_sched9_e99, location, stop11_e99).
prop(a1_sched9_e99, time, add(Y,1)) :- prop(sched9_e99, startTime, Y).
prop(a2_sched9_e99, location, stop2_e99).
prop(a2_sched9_e99, time, add(Y,6)) :- prop(sched9_e99, startTime, Y).
prop(a3_sched9_e99, location, stop3_e99).
prop(a3_sched9_e99, time, add(Y,10)) :- prop(sched9_e99, startTime, Y).
prop(a4_sched9_e99, location, stop4_e99).
prop(a4_sched9_e99, time, add(Y,13)) :- prop(sched9_e99, startTime, Y).
prop(a5_sched9_e99, location, stop5_e99).
prop(a5_sched9_e99, time, add(Y,16)) :- prop(sched9_e99, startTime, Y).
prop(a6_sched9_e99, location, stop6_e99).
prop(a6_sched9_e99, time, add(Y,18)) :- prop(sched9_e99, startTime, Y).
prop(a7_sched9_e99, location, stop7_e99).
prop(a7_sched9_e99, time, add(Y,21)) :- prop(sched9_e99, startTime, Y).
prop(a8_sched9_e99, location, stop8_e99).
prop(a8_sched9_e99, time, add(Y,22)) :- prop(sched9_e99, startTime, Y).
prop(a9_sched9_e99, location, stop9_e99).
prop(a9_sched9_e99, time, add(Y,25)) :- prop(sched9_e99, startTime, Y).
prop(a10_sched9_e99, location, stop10_e99).
prop(a10_sched9_e99, time, add(Y,27)) :- prop(sched9_e99, startTime, Y).
prop(a11_sched9_e99, location, stop11_e99).
prop(a11_sched9_e99, time, add(Y,30)) :- prop(sched9_e99, startTime, Y).
prop(a12_sched9_e99, location, stop12_e99).
prop(a12_sched9_e99, time, add(Y,32)) :- prop(sched9_e99, startTime, Y).
prop(a13_sched9_e99, location, stop13_e99).
prop(a13_sched9_e99, time, add(Y,33)) :- prop(sched9_e99, startTime, Y).

%arrivals for sched10_e99
prop(a0_sched10_e99, location, stop0_e99).
prop(a0_sched10_e99, time, add(Y,0)) :- prop(sched10_e99, startTime, Y).
prop(a1_sched10_e99, location, stop11_e99).
prop(a1_sched10_e99, time, add(Y,1)) :- prop(sched10_e99, startTime, Y).
prop(a2_sched10_e99, location, stop2_e99).
prop(a2_sched10_e99, time, add(Y,6)) :- prop(sched10_e99, startTime, Y).
prop(a3_sched10_e99, location, stop3_e99).
prop(a3_sched10_e99, time, add(Y,10)) :- prop(sched10_e99, startTime, Y).
prop(a4_sched10_e99, location, stop4_e99).
prop(a4_sched10_e99, time, add(Y,13)) :- prop(sched10_e99, startTime, Y).
prop(a5_sched10_e99, location, stop5_e99).
prop(a5_sched10_e99, time, add(Y,16)) :- prop(sched10_e99, startTime, Y).
prop(a6_sched10_e99, location, stop6_e99).
prop(a6_sched10_e99, time, add(Y,18)) :- prop(sched10_e99, startTime, Y).
prop(a7_sched10_e99, location, stop7_e99).
prop(a7_sched10_e99, time, add(Y,21)) :- prop(sched10_e99, startTime, Y).
prop(a8_sched10_e99, location, stop8_e99).
prop(a8_sched10_e99, time, add(Y,22)) :- prop(sched10_e99, startTime, Y).
prop(a9_sched10_e99, location, stop9_e99).
prop(a9_sched10_e99, time, add(Y,25)) :- prop(sched10_e99, startTime, Y).
prop(a10_sched10_e99, location, stop10_e99).
prop(a10_sched10_e99, time, add(Y,27)) :- prop(sched10_e99, startTime, Y).
prop(a11_sched10_e99, location, stop11_e99).
prop(a11_sched10_e99, time, add(Y,30)) :- prop(sched10_e99, startTime, Y).
prop(a12_sched10_e99, location, stop12_e99).
prop(a12_sched10_e99, time, add(Y,32)) :- prop(sched10_e99, startTime, Y).
prop(a13_sched10_e99, location, stop13_e99).
prop(a13_sched10_e99, time, add(Y,33)) :- prop(sched10_e99, startTime, Y).

%arrivals for sched11_e99
prop(a0_sched11_e99, location, stop0_e99).
prop(a0_sched11_e99, time, add(Y,0)) :- prop(sched11_e99, startTime, Y).
prop(a1_sched11_e99, location, stop11_e99).
prop(a1_sched11_e99, time, add(Y,1)) :- prop(sched11_e99, startTime, Y).
prop(a2_sched11_e99, location, stop2_e99).
prop(a2_sched11_e99, time, add(Y,6)) :- prop(sched11_e99, startTime, Y).
prop(a3_sched11_e99, location, stop3_e99).
prop(a3_sched11_e99, time, add(Y,10)) :- prop(sched11_e99, startTime, Y).
prop(a4_sched11_e99, location, stop4_e99).
prop(a4_sched11_e99, time, add(Y,13)) :- prop(sched11_e99, startTime, Y).
prop(a5_sched11_e99, location, stop5_e99).
prop(a5_sched11_e99, time, add(Y,16)) :- prop(sched11_e99, startTime, Y).
prop(a6_sched11_e99, location, stop6_e99).
prop(a6_sched11_e99, time, add(Y,18)) :- prop(sched11_e99, startTime, Y).
prop(a7_sched11_e99, location, stop7_e99).
prop(a7_sched11_e99, time, add(Y,21)) :- prop(sched11_e99, startTime, Y).
prop(a8_sched11_e99, location, stop8_e99).
prop(a8_sched11_e99, time, add(Y,22)) :- prop(sched11_e99, startTime, Y).
prop(a9_sched11_e99, location, stop9_e99).
prop(a9_sched11_e99, time, add(Y,25)) :- prop(sched11_e99, startTime, Y).
prop(a10_sched11_e99, location, stop10_e99).
prop(a10_sched11_e99, time, add(Y,27)) :- prop(sched11_e99, startTime, Y).
prop(a11_sched11_e99, location, stop11_e99).
prop(a11_sched11_e99, time, add(Y,30)) :- prop(sched11_e99, startTime, Y).
prop(a12_sched11_e99, location, stop12_e99).
prop(a12_sched11_e99, time, add(Y,32)) :- prop(sched11_e99, startTime, Y).
prop(a13_sched11_e99, location, stop13_e99).
prop(a13_sched11_e99, time, add(Y,33)) :- prop(sched11_e99, startTime, Y).

%arrivals for sched12_e99
prop(a0_sched12_e99, location, stop0_e99).
prop(a0_sched12_e99, time, add(Y,0)) :- prop(sched12_e99, startTime, Y).
prop(a1_sched12_e99, location, stop11_e99).
prop(a1_sched12_e99, time, add(Y,1)) :- prop(sched12_e99, startTime, Y).
prop(a2_sched12_e99, location, stop2_e99).
prop(a2_sched12_e99, time, add(Y,6)) :- prop(sched12_e99, startTime, Y).
prop(a3_sched12_e99, location, stop3_e99).
prop(a3_sched12_e99, time, add(Y,10)) :- prop(sched12_e99, startTime, Y).
prop(a4_sched12_e99, location, stop4_e99).
prop(a4_sched12_e99, time, add(Y,13)) :- prop(sched12_e99, startTime, Y).
prop(a5_sched12_e99, location, stop5_e99).
prop(a5_sched12_e99, time, add(Y,16)) :- prop(sched12_e99, startTime, Y).
prop(a6_sched12_e99, location, stop6_e99).
prop(a6_sched12_e99, time, add(Y,18)) :- prop(sched12_e99, startTime, Y).
prop(a7_sched12_e99, location, stop7_e99).
prop(a7_sched12_e99, time, add(Y,21)) :- prop(sched12_e99, startTime, Y).
prop(a8_sched12_e99, location, stop8_e99).
prop(a8_sched12_e99, time, add(Y,22)) :- prop(sched12_e99, startTime, Y).
prop(a9_sched12_e99, location, stop9_e99).
prop(a9_sched12_e99, time, add(Y,25)) :- prop(sched12_e99, startTime, Y).
prop(a10_sched12_e99, location, stop10_e99).
prop(a10_sched12_e99, time, add(Y,27)) :- prop(sched12_e99, startTime, Y).
prop(a11_sched12_e99, location, stop11_e99).
prop(a11_sched12_e99, time, add(Y,30)) :- prop(sched12_e99, startTime, Y).
prop(a12_sched12_e99, location, stop12_e99).
prop(a12_sched12_e99, time, add(Y,32)) :- prop(sched12_e99, startTime, Y).
prop(a13_sched12_e99, location, stop13_e99).
prop(a13_sched12_e99, time, add(Y,33)) :- prop(sched12_e99, startTime, Y).

%arrivals for sched13_e99
prop(a0_sched13_e99, location, stop0_e99).
prop(a0_sched13_e99, time, add(Y,0)) :- prop(sched13_e99, startTime, Y).
prop(a1_sched13_e99, location, stop11_e99).
prop(a1_sched13_e99, time, add(Y,1)) :- prop(sched13_e99, startTime, Y).
prop(a2_sched13_e99, location, stop2_e99).
prop(a2_sched13_e99, time, add(Y,6)) :- prop(sched13_e99, startTime, Y).
prop(a3_sched13_e99, location, stop3_e99).
prop(a3_sched13_e99, time, add(Y,10)) :- prop(sched13_e99, startTime, Y).
prop(a4_sched13_e99, location, stop4_e99).
prop(a4_sched13_e99, time, add(Y,13)) :- prop(sched13_e99, startTime, Y).
prop(a5_sched13_e99, location, stop5_e99).
prop(a5_sched13_e99, time, add(Y,16)) :- prop(sched13_e99, startTime, Y).
prop(a6_sched13_e99, location, stop6_e99).
prop(a6_sched13_e99, time, add(Y,18)) :- prop(sched13_e99, startTime, Y).
prop(a7_sched13_e99, location, stop7_e99).
prop(a7_sched13_e99, time, add(Y,21)) :- prop(sched13_e99, startTime, Y).
prop(a8_sched13_e99, location, stop8_e99).
prop(a8_sched13_e99, time, add(Y,22)) :- prop(sched13_e99, startTime, Y).
prop(a9_sched13_e99, location, stop9_e99).
prop(a9_sched13_e99, time, add(Y,25)) :- prop(sched13_e99, startTime, Y).
prop(a10_sched13_e99, location, stop10_e99).
prop(a10_sched13_e99, time, add(Y,27)) :- prop(sched13_e99, startTime, Y).
prop(a11_sched13_e99, location, stop11_e99).
prop(a11_sched13_e99, time, add(Y,30)) :- prop(sched13_e99, startTime, Y).
prop(a12_sched13_e99, location, stop12_e99).
prop(a12_sched13_e99, time, add(Y,32)) :- prop(sched13_e99, startTime, Y).
prop(a13_sched13_e99, location, stop13_e99).
prop(a13_sched13_e99, time, add(Y,33)) :- prop(sched13_e99, startTime, Y).

%arrivals for sched14_e99
prop(a0_sched14_e99, location, stop0_e99).
prop(a0_sched14_e99, time, add(Y,0)) :- prop(sched14_e99, startTime, Y).
prop(a1_sched14_e99, location, stop11_e99).
prop(a1_sched14_e99, time, add(Y,1)) :- prop(sched14_e99, startTime, Y).
prop(a2_sched14_e99, location, stop2_e99).
prop(a2_sched14_e99, time, add(Y,6)) :- prop(sched14_e99, startTime, Y).
prop(a3_sched14_e99, location, stop3_e99).
prop(a3_sched14_e99, time, add(Y,10)) :- prop(sched14_e99, startTime, Y).
prop(a4_sched14_e99, location, stop4_e99).
prop(a4_sched14_e99, time, add(Y,13)) :- prop(sched14_e99, startTime, Y).
prop(a5_sched14_e99, location, stop5_e99).
prop(a5_sched14_e99, time, add(Y,16)) :- prop(sched14_e99, startTime, Y).
prop(a6_sched14_e99, location, stop6_e99).
prop(a6_sched14_e99, time, add(Y,18)) :- prop(sched14_e99, startTime, Y).
prop(a7_sched14_e99, location, stop7_e99).
prop(a7_sched14_e99, time, add(Y,21)) :- prop(sched14_e99, startTime, Y).
prop(a8_sched14_e99, location, stop8_e99).
prop(a8_sched14_e99, time, add(Y,22)) :- prop(sched14_e99, startTime, Y).
prop(a9_sched14_e99, location, stop9_e99).
prop(a9_sched14_e99, time, add(Y,25)) :- prop(sched14_e99, startTime, Y).
prop(a10_sched14_e99, location, stop10_e99).
prop(a10_sched14_e99, time, add(Y,27)) :- prop(sched14_e99, startTime, Y).
prop(a11_sched14_e99, location, stop11_e99).
prop(a11_sched14_e99, time, add(Y,30)) :- prop(sched14_e99, startTime, Y).
prop(a12_sched14_e99, location, stop12_e99).
prop(a12_sched14_e99, time, add(Y,32)) :- prop(sched14_e99, startTime, Y).
prop(a13_sched14_e99, location, stop13_e99).
prop(a13_sched14_e99, time, add(Y,33)) :- prop(sched14_e99, startTime, Y).

%arrivals for sched15_e99
prop(a0_sched15_e99, location, stop0_e99).
prop(a0_sched15_e99, time, add(Y,0)) :- prop(sched15_e99, startTime, Y).
prop(a1_sched15_e99, location, stop11_e99).
prop(a1_sched15_e99, time, add(Y,1)) :- prop(sched15_e99, startTime, Y).
prop(a2_sched15_e99, location, stop2_e99).
prop(a2_sched15_e99, time, add(Y,6)) :- prop(sched15_e99, startTime, Y).
prop(a3_sched15_e99, location, stop3_e99).
prop(a3_sched15_e99, time, add(Y,10)) :- prop(sched15_e99, startTime, Y).
prop(a4_sched15_e99, location, stop4_e99).
prop(a4_sched15_e99, time, add(Y,13)) :- prop(sched15_e99, startTime, Y).
prop(a5_sched15_e99, location, stop5_e99).
prop(a5_sched15_e99, time, add(Y,16)) :- prop(sched15_e99, startTime, Y).
prop(a6_sched15_e99, location, stop6_e99).
prop(a6_sched15_e99, time, add(Y,18)) :- prop(sched15_e99, startTime, Y).
prop(a7_sched15_e99, location, stop7_e99).
prop(a7_sched15_e99, time, add(Y,21)) :- prop(sched15_e99, startTime, Y).
prop(a8_sched15_e99, location, stop8_e99).
prop(a8_sched15_e99, time, add(Y,22)) :- prop(sched15_e99, startTime, Y).
prop(a9_sched15_e99, location, stop9_e99).
prop(a9_sched15_e99, time, add(Y,25)) :- prop(sched15_e99, startTime, Y).
prop(a10_sched15_e99, location, stop10_e99).
prop(a10_sched15_e99, time, add(Y,27)) :- prop(sched15_e99, startTime, Y).
prop(a11_sched15_e99, location, stop11_e99).
prop(a11_sched15_e99, time, add(Y,30)) :- prop(sched15_e99, startTime, Y).
prop(a12_sched15_e99, location, stop12_e99).
prop(a12_sched15_e99, time, add(Y,32)) :- prop(sched15_e99, startTime, Y).
prop(a13_sched15_e99, location, stop13_e99).
prop(a13_sched15_e99, time, add(Y,33)) :- prop(sched15_e99, startTime, Y).

%arrivals for sched16_e99
prop(a0_sched16_e99, location, stop0_e99).
prop(a0_sched16_e99, time, add(Y,0)) :- prop(sched16_e99, startTime, Y).
prop(a1_sched16_e99, location, stop11_e99).
prop(a1_sched16_e99, time, add(Y,1)) :- prop(sched16_e99, startTime, Y).
prop(a2_sched16_e99, location, stop2_e99).
prop(a2_sched16_e99, time, add(Y,6)) :- prop(sched16_e99, startTime, Y).
prop(a3_sched16_e99, location, stop3_e99).
prop(a3_sched16_e99, time, add(Y,10)) :- prop(sched16_e99, startTime, Y).
prop(a4_sched16_e99, location, stop4_e99).
prop(a4_sched16_e99, time, add(Y,13)) :- prop(sched16_e99, startTime, Y).
prop(a5_sched16_e99, location, stop5_e99).
prop(a5_sched16_e99, time, add(Y,16)) :- prop(sched16_e99, startTime, Y).
prop(a6_sched16_e99, location, stop6_e99).
prop(a6_sched16_e99, time, add(Y,18)) :- prop(sched16_e99, startTime, Y).
prop(a7_sched16_e99, location, stop7_e99).
prop(a7_sched16_e99, time, add(Y,21)) :- prop(sched16_e99, startTime, Y).
prop(a8_sched16_e99, location, stop8_e99).
prop(a8_sched16_e99, time, add(Y,22)) :- prop(sched16_e99, startTime, Y).
prop(a9_sched16_e99, location, stop9_e99).
prop(a9_sched16_e99, time, add(Y,25)) :- prop(sched16_e99, startTime, Y).
prop(a10_sched16_e99, location, stop10_e99).
prop(a10_sched16_e99, time, add(Y,27)) :- prop(sched16_e99, startTime, Y).
prop(a11_sched16_e99, location, stop11_e99).
prop(a11_sched16_e99, time, add(Y,30)) :- prop(sched16_e99, startTime, Y).
prop(a12_sched16_e99, location, stop12_e99).
prop(a12_sched16_e99, time, add(Y,32)) :- prop(sched16_e99, startTime, Y).
prop(a13_sched16_e99, location, stop13_e99).
prop(a13_sched16_e99, time, add(Y,33)) :- prop(sched16_e99, startTime, Y).





















