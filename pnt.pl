% clock(H,M) and add(clock(H,M),I) are to make times easier to manipulate
clock(H,M) :- H >= 0,
	      H < 24,
	      M >= 0,
	      M < 60.

add(clock(H,M),I) :- clock(mod((H+((M+I)/60)),24), mod(M+I,60)).

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
prop(a0_sched0_w41, time, add(Y, 0)) :- prop(sched0_w41, startTime, Y).
prop(a1_sched0_w41, location, stop1_w41).
prop(a1_sched0_w41, time, add(Y, 1)) :- prop(sched0_w41, startTime, Y).
prop(a2_sched0_w41, location, stop2_w41).
prop(a2_sched0_w41, time, add(Y, 2)) :- prop(sched0_w41, startTime, Y).
prop(a3_sched0_w41, location, stop3_w41).
prop(a3_sched0_w41, time, add(Y, 3)) :- prop(sched0_w41, startTime, Y).
prop(a4_sched0_w41, location, stop4_w41).
prop(a4_sched0_w41, time, add(Y, 4)) :- prop(sched0_w41, startTime, Y).
prop(a5_sched0_w41, location, stop5_w41).
prop(a5_sched0_w41, time, add(Y, 6)) :- prop(sched0_w41, startTime, Y).
prop(a6_sched0_w41, location, stop6_w41).
prop(a6_sched0_w41, time, add(Y, 7)) :- prop(sched0_w41, startTime, Y).
prop(a7_sched0_w41, location, stop7_w41).
prop(a7_sched0_w41, time, add(Y, 9)) :- prop(sched0_w41, startTime, Y).
prop(a8_sched0_w41, location, stop8_w41).
prop(a8_sched0_w41, time, add(Y, 10)) :- prop(sched0_w41, startTime, Y).
prop(a9_sched0_w41, location, stop9_w41).
prop(a9_sched0_w41, time, add(Y, 13)) :- prop(sched0_w41, startTime, Y).
prop(a10_sched0_w41, location, stop10_w41).
prop(a10_sched0_w41, time, add(Y, 14)) :- prop(sched0_w41, startTime, Y).
prop(a11_sched0_w41, location, stop11_w41).
prop(a11_sched0_w41, time, add(Y, 19)) :- prop(sched0_w41, startTime, Y).
prop(a12_sched0_w41, location, stop12_w41).
prop(a12_sched0_w41, time, add(Y, 21)) :- prop(sched0_w41, startTime, Y).
prop(a13_sched0_w41, location, stop13_w41).
prop(a13_sched0_w41, time, add(Y, 34)) :- prop(sched0_w41, startTime, Y).
prop(a14_sched0_w41, location, stop14_w41).
prop(a14_sched0_w41, time, add(Y, 39)) :- prop(sched0_w41, startTime, Y).
prop(a15_sched0_w41, location, stop15_w41).
prop(a15_sched0_w41, time, add(Y, 41)) :- prop(sched0_w41, startTime, Y).

% an_sched1_w41 is at stopm_w41...
prop(a0_sched1_w41, location, stop0_w41).
prop(a0_sched1_w41, time, add(Y, 0)) :- prop(sched1_w41, startTime, Y).
prop(a1_sched1_w41, location, stop1_w41).
prop(a1_sched1_w41, time, add(Y, 1)) :- prop(sched1_w41, startTime, Y).
prop(a2_sched1_w41, location, stop2_w41).
prop(a2_sched1_w41, time, add(Y, 2)) :- prop(sched1_w41, startTime, Y).
prop(a3_sched1_w41, location, stop3_w41).
prop(a3_sched1_w41, time, add(Y, 3)) :- prop(sched1_w41, startTime, Y).
prop(a4_sched1_w41, location, stop4_w41).
prop(a4_sched1_w41, time, add(Y, 4)) :- prop(sched1_w41, startTime, Y).
prop(a5_sched1_w41, location, stop5_w41).
prop(a5_sched1_w41, time, add(Y, 6)) :- prop(sched1_w41, startTime, Y).
prop(a6_sched1_w41, location, stop6_w41).
prop(a6_sched1_w41, time, add(Y, 7)) :- prop(sched1_w41, startTime, Y).
prop(a7_sched1_w41, location, stop7_w41).
prop(a7_sched1_w41, time, add(Y, 9)) :- prop(sched1_w41, startTime, Y).
prop(a8_sched1_w41, location, stop8_w41).
prop(a8_sched1_w41, time, add(Y, 10)) :- prop(sched1_w41, startTime, Y).
prop(a9_sched1_w41, location, stop9_w41).
prop(a9_sched1_w41, time, add(Y, 13)) :- prop(sched1_w41, startTime, Y).
prop(a10_sched1_w41, location, stop10_w41).
prop(a10_sched1_w41, time, add(Y, 14)) :- prop(sched1_w41, startTime, Y).
prop(a11_sched1_w41, location, stop11_w41).
prop(a11_sched1_w41, time, add(Y, 19)) :- prop(sched1_w41, startTime, Y).
prop(a12_sched1_w41, location, stop12_w41).
prop(a12_sched1_w41, time, add(Y, 21)) :- prop(sched1_w41, startTime, Y).
prop(a13_sched1_w41, location, stop13_w41).
prop(a13_sched1_w41, time, add(Y, 34)) :- prop(sched1_w41, startTime, Y).
prop(a14_sched1_w41, location, stop14_w41).
prop(a14_sched1_w41, time, add(Y, 39)) :- prop(sched1_w41, startTime, Y).
prop(a15_sched1_w41, location, stop15_w41).
prop(a15_sched1_w41, time, add(Y, 41)) :- prop(sched1_w41, startTime, Y).

% an_sched2_w41 is at stopm_w41...
prop(a0_sched2_w41, location, stop0_w41).
prop(a0_sched2_w41, time, add(Y, 0)) :- prop(sched2_w41, startTime, Y).
prop(a1_sched2_w41, location, stop1_w41).
prop(a1_sched2_w41, time, add(Y, 1)) :- prop(sched2_w41, startTime, Y).
prop(a2_sched2_w41, location, stop2_w41).
prop(a2_sched2_w41, time, add(Y, 2)) :- prop(sched2_w41, startTime, Y).
prop(a3_sched2_w41, location, stop3_w41).
prop(a3_sched2_w41, time, add(Y, 3)) :- prop(sched2_w41, startTime, Y).
prop(a4_sched2_w41, location, stop4_w41).
prop(a4_sched2_w41, time, add(Y, 4)) :- prop(sched2_w41, startTime, Y).
prop(a5_sched2_w41, location, stop5_w41).
prop(a5_sched2_w41, time, add(Y, 6)) :- prop(sched2_w41, startTime, Y).
prop(a6_sched2_w41, location, stop6_w41).
prop(a6_sched2_w41, time, add(Y, 7)) :- prop(sched2_w41, startTime, Y).
prop(a7_sched2_w41, location, stop7_w41).
prop(a7_sched2_w41, time, add(Y, 9)) :- prop(sched2_w41, startTime, Y).
prop(a8_sched2_w41, location, stop8_w41).
prop(a8_sched2_w41, time, add(Y, 10)) :- prop(sched2_w41, startTime, Y).
prop(a9_sched2_w41, location, stop9_w41).
prop(a9_sched2_w41, time, add(Y, 13)) :- prop(sched2_w41, startTime, Y).
prop(a10_sched2_w41, location, stop10_w41).
prop(a10_sched2_w41, time, add(Y, 14)) :- prop(sched2_w41, startTime, Y).
prop(a11_sched2_w41, location, stop11_w41).
prop(a11_sched2_w41, time, add(Y, 19)) :- prop(sched2_w41, startTime, Y).
prop(a12_sched2_w41, location, stop12_w41).
prop(a12_sched2_w41, time, add(Y, 21)) :- prop(sched2_w41, startTime, Y).
prop(a13_sched2_w41, location, stop13_w41).
prop(a13_sched2_w41, time, add(Y, 34)) :- prop(sched2_w41, startTime, Y).
prop(a14_sched2_w41, location, stop14_w41).
prop(a14_sched2_w41, time, add(Y, 39)) :- prop(sched2_w41, startTime, Y).
prop(a15_sched2_w41, location, stop15_w41).
prop(a15_sched2_w41, time, add(Y, 41)) :- prop(sched2_w41, startTime, Y).

% an_sched3_w41 is at stopm_w41...
prop(a0_sched3_w41, location, stop0_w41).
prop(a0_sched3_w41, time, add(Y, 0)) :- prop(sched3_w41, startTime, Y).
prop(a1_sched3_w41, location, stop1_w41).
prop(a1_sched3_w41, time, add(Y, 1)) :- prop(sched3_w41, startTime, Y).
prop(a2_sched3_w41, location, stop2_w41).
prop(a2_sched3_w41, time, add(Y, 2)) :- prop(sched3_w41, startTime, Y).
prop(a3_sched3_w41, location, stop3_w41).
prop(a3_sched3_w41, time, add(Y, 3)) :- prop(sched3_w41, startTime, Y).
prop(a4_sched3_w41, location, stop4_w41).
prop(a4_sched3_w41, time, add(Y, 4)) :- prop(sched3_w41, startTime, Y).
prop(a5_sched3_w41, location, stop5_w41).
prop(a5_sched3_w41, time, add(Y, 6)) :- prop(sched3_w41, startTime, Y).
prop(a6_sched3_w41, location, stop6_w41).
prop(a6_sched3_w41, time, add(Y, 7)) :- prop(sched3_w41, startTime, Y).
prop(a7_sched3_w41, location, stop7_w41).
prop(a7_sched3_w41, time, add(Y, 9)) :- prop(sched3_w41, startTime, Y).
prop(a8_sched3_w41, location, stop8_w41).
prop(a8_sched3_w41, time, add(Y, 10)) :- prop(sched3_w41, startTime, Y).
prop(a9_sched3_w41, location, stop9_w41).
prop(a9_sched3_w41, time, add(Y, 13)) :- prop(sched3_w41, startTime, Y).
prop(a10_sched3_w41, location, stop10_w41).
prop(a10_sched3_w41, time, add(Y, 14)) :- prop(sched3_w41, startTime, Y).
prop(a11_sched3_w41, location, stop11_w41).
prop(a11_sched3_w41, time, add(Y, 19)) :- prop(sched3_w41, startTime, Y).
prop(a12_sched3_w41, location, stop12_w41).
prop(a12_sched3_w41, time, add(Y, 21)) :- prop(sched3_w41, startTime, Y).
prop(a13_sched3_w41, location, stop13_w41).
prop(a13_sched3_w41, time, add(Y, 34)) :- prop(sched3_w41, startTime, Y).
prop(a14_sched3_w41, location, stop14_w41).
prop(a14_sched3_w41, time, add(Y, 39)) :- prop(sched3_w41, startTime, Y).
prop(a15_sched3_w41, location, stop15_w41).
prop(a15_sched3_w41, time, add(Y, 41)) :- prop(sched3_w41, startTime, Y).

% an_sched4_w41 is at stopm_w41...
prop(a0_sched4_w41, location, stop0_w41).
prop(a0_sched4_w41, time, add(Y, 0)) :- prop(sched4_w41, startTime, Y).
prop(a1_sched4_w41, location, stop1_w41).
prop(a1_sched4_w41, time, add(Y, 1)) :- prop(sched4_w41, startTime, Y).
prop(a2_sched4_w41, location, stop2_w41).
prop(a2_sched4_w41, time, add(Y, 2)) :- prop(sched4_w41, startTime, Y).
prop(a3_sched4_w41, location, stop3_w41).
prop(a3_sched4_w41, time, add(Y, 3)) :- prop(sched4_w41, startTime, Y).
prop(a4_sched4_w41, location, stop4_w41).
prop(a4_sched4_w41, time, add(Y, 4)) :- prop(sched4_w41, startTime, Y).
prop(a5_sched4_w41, location, stop5_w41).
prop(a5_sched4_w41, time, add(Y, 6)) :- prop(sched4_w41, startTime, Y).
prop(a6_sched4_w41, location, stop6_w41).
prop(a6_sched4_w41, time, add(Y, 7)) :- prop(sched4_w41, startTime, Y).
prop(a7_sched4_w41, location, stop7_w41).
prop(a7_sched4_w41, time, add(Y, 9)) :- prop(sched4_w41, startTime, Y).
prop(a8_sched4_w41, location, stop8_w41).
prop(a8_sched4_w41, time, add(Y, 10)) :- prop(sched4_w41, startTime, Y).
prop(a9_sched4_w41, location, stop9_w41).
prop(a9_sched4_w41, time, add(Y, 13)) :- prop(sched4_w41, startTime, Y).
prop(a10_sched4_w41, location, stop10_w41).
prop(a10_sched4_w41, time, add(Y, 14)) :- prop(sched4_w41, startTime, Y).
prop(a11_sched4_w41, location, stop11_w41).
prop(a11_sched4_w41, time, add(Y, 19)) :- prop(sched4_w41, startTime, Y).
prop(a12_sched4_w41, location, stop12_w41).
prop(a12_sched4_w41, time, add(Y, 21)) :- prop(sched4_w41, startTime, Y).
prop(a13_sched4_w41, location, stop13_w41).
prop(a13_sched4_w41, time, add(Y, 34)) :- prop(sched4_w41, startTime, Y).
prop(a14_sched4_w41, location, stop14_w41).
prop(a14_sched4_w41, time, add(Y, 39)) :- prop(sched4_w41, startTime, Y).
prop(a15_sched4_w41, location, stop15_w41).
prop(a15_sched4_w41, time, add(Y, 41)) :- prop(sched4_w41, startTime, Y).

% an_sched0_e41 is at stopm_e41...
prop(a0_sched0_e41, location, stop0_w41).
prop(a0_sched0_e41, time, add(Y, 0)) :- prop(sched0_e41, startTime, Y).
prop(a1_sched0_e41, location, stop1_e41).
prop(a1_sched0_e41, time, add(Y, 2)) :- prop(sched0_e41, startTime, Y).
prop(a2_sched0_e41, location, stop2_e41).
prop(a2_sched0_e41, time, add(Y, 6)) :- prop(sched0_e41, startTime, Y).
prop(a3_sched0_e41, location, stop3_e41).
prop(a3_sched0_e41, time, add(Y, 10)) :- prop(sched0_e41, startTime, Y).
prop(a4_sched0_e41, location, stop4_e41).
prop(a4_sched0_e41, time, add(Y, 12)) :- prop(sched0_e41, startTime, Y).
prop(a5_sched0_e41, location, stop5_e41).
prop(a5_sched0_e41, time, add(Y, 15)) :- prop(sched0_e41, startTime, Y).
prop(a6_sched0_e41, location, stop6_e41).
prop(a6_sched0_e41, time, add(Y, 20)) :- prop(sched0_e41, startTime, Y).
prop(a7_sched0_e41, location, stop7_e41).
prop(a7_sched0_e41, time, add(Y, 22)) :- prop(sched0_e41, startTime, Y).
prop(a8_sched0_e41, location, stop8_e41).
prop(a8_sched0_e41, time, add(Y, 26)) :- prop(sched0_e41, startTime, Y).
prop(a9_sched0_e41, location, stop9_e41).
prop(a9_sched0_e41, time, add(Y, 28)) :- prop(sched0_e41, startTime, Y).
prop(a10_sched0_e41, location, stop10_e41).
prop(a10_sched0_e41, time, add(Y, 30)) :- prop(sched0_e41, startTime, Y).
prop(a11_sched0_e41, location, stop11_e41).
prop(a11_sched0_e41, time, add(Y, 31)) :- prop(sched0_e41, startTime, Y).
prop(a12_sched0_e41, location, stop12_e41).
prop(a12_sched0_e41, time, add(Y, 33)) :- prop(sched0_e41, startTime, Y).

% an_sched1_e41 is at stopm_e41...
prop(a0_sched1_e41, location, stop0_w41).
prop(a0_sched1_e41, time, add(Y, 0)) :- prop(sched1_e41, startTime, Y).
prop(a1_sched1_e41, location, stop1_e41).
prop(a1_sched1_e41, time, add(Y, 2)) :- prop(sched1_e41, startTime, Y).
prop(a2_sched1_e41, location, stop2_e41).
prop(a2_sched1_e41, time, add(Y, 6)) :- prop(sched1_e41, startTime, Y).
prop(a3_sched1_e41, location, stop3_e41).
prop(a3_sched1_e41, time, add(Y, 10)) :- prop(sched1_e41, startTime, Y).
prop(a4_sched1_e41, location, stop4_e41).
prop(a4_sched1_e41, time, add(Y, 12)) :- prop(sched1_e41, startTime, Y).
prop(a5_sched1_e41, location, stop5_e41).
prop(a5_sched1_e41, time, add(Y, 15)) :- prop(sched1_e41, startTime, Y).
prop(a6_sched1_e41, location, stop6_e41).
prop(a6_sched1_e41, time, add(Y, 20)) :- prop(sched1_e41, startTime, Y).
prop(a7_sched1_e41, location, stop7_e41).
prop(a7_sched1_e41, time, add(Y, 22)) :- prop(sched1_e41, startTime, Y).
prop(a8_sched1_e41, location, stop8_e41).
prop(a8_sched1_e41, time, add(Y, 26)) :- prop(sched1_e41, startTime, Y).
prop(a9_sched1_e41, location, stop9_e41).
prop(a9_sched1_e41, time, add(Y, 28)) :- prop(sched1_e41, startTime, Y).
prop(a10_sched1_e41, location, stop10_e41).
prop(a10_sched1_e41, time, add(Y, 30)) :- prop(sched1_e41, startTime, Y).
prop(a11_sched1_e41, location, stop11_e41).
prop(a11_sched1_e41, time, add(Y, 31)) :- prop(sched1_e41, startTime, Y).
prop(a12_sched1_e41, location, stop12_e41).
prop(a12_sched1_e41, time, add(Y, 33)) :- prop(sched1_e41, startTime, Y).

% an_sched2_e41 is at stopm_e41...
prop(a0_sched2_e41, location, stop0_w41).
prop(a0_sched2_e41, time, add(Y, 0)) :- prop(sched2_e41, startTime, Y).
prop(a1_sched2_e41, location, stop1_e41).
prop(a1_sched2_e41, time, add(Y, 2)) :- prop(sched2_e41, startTime, Y).
prop(a2_sched2_e41, location, stop2_e41).
prop(a2_sched2_e41, time, add(Y, 6)) :- prop(sched2_e41, startTime, Y).
prop(a3_sched2_e41, location, stop3_e41).
prop(a3_sched2_e41, time, add(Y, 10)) :- prop(sched2_e41, startTime, Y).
prop(a4_sched2_e41, location, stop4_e41).
prop(a4_sched2_e41, time, add(Y, 12)) :- prop(sched2_e41, startTime, Y).
prop(a5_sched2_e41, location, stop5_e41).
prop(a5_sched2_e41, time, add(Y, 15)) :- prop(sched2_e41, startTime, Y).
prop(a6_sched2_e41, location, stop6_e41).
prop(a6_sched2_e41, time, add(Y, 20)) :- prop(sched2_e41, startTime, Y).
prop(a7_sched2_e41, location, stop7_e41).
prop(a7_sched2_e41, time, add(Y, 22)) :- prop(sched2_e41, startTime, Y).
prop(a8_sched2_e41, location, stop8_e41).
prop(a8_sched2_e41, time, add(Y, 26)) :- prop(sched2_e41, startTime, Y).
prop(a9_sched2_e41, location, stop9_e41).
prop(a9_sched2_e41, time, add(Y, 28)) :- prop(sched2_e41, startTime, Y).
prop(a10_sched2_e41, location, stop10_e41).
prop(a10_sched2_e41, time, add(Y, 30)) :- prop(sched2_e41, startTime, Y).
prop(a11_sched2_e41, location, stop11_e41).
prop(a11_sched2_e41, time, add(Y, 31)) :- prop(sched2_e41, startTime, Y).
prop(a12_sched2_e41, location, stop12_e41).
prop(a12_sched2_e41, time, add(Y, 33)) :- prop(sched2_e41, startTime, Y).

% an_sched3_e41 is at stopm_e41...
prop(a0_sched3_e41, location, stop0_w41).
prop(a0_sched3_e41, time, add(Y, 0)) :- prop(sched3_e41, startTime, Y).
prop(a1_sched3_e41, location, stop1_e41).
prop(a1_sched3_e41, time, add(Y, 2)) :- prop(sched3_e41, startTime, Y).
prop(a2_sched3_e41, location, stop2_e41).
prop(a2_sched3_e41, time, add(Y, 6)) :- prop(sched3_e41, startTime, Y).
prop(a3_sched3_e41, location, stop3_e41).
prop(a3_sched3_e41, time, add(Y, 10)) :- prop(sched3_e41, startTime, Y).
prop(a4_sched3_e41, location, stop4_e41).
prop(a4_sched3_e41, time, add(Y, 12)) :- prop(sched3_e41, startTime, Y).
prop(a5_sched3_e41, location, stop5_e41).
prop(a5_sched3_e41, time, add(Y, 15)) :- prop(sched3_e41, startTime, Y).
prop(a6_sched3_e41, location, stop6_e41).
prop(a6_sched3_e41, time, add(Y, 20)) :- prop(sched3_e41, startTime, Y).
prop(a7_sched3_e41, location, stop7_e41).
prop(a7_sched3_e41, time, add(Y, 22)) :- prop(sched3_e41, startTime, Y).
prop(a8_sched3_e41, location, stop8_e41).
prop(a8_sched3_e41, time, add(Y, 26)) :- prop(sched3_e41, startTime, Y).
prop(a9_sched3_e41, location, stop9_e41).
prop(a9_sched3_e41, time, add(Y, 28)) :- prop(sched3_e41, startTime, Y).
prop(a10_sched3_e41, location, stop10_e41).
prop(a10_sched3_e41, time, add(Y, 30)) :- prop(sched3_e41, startTime, Y).
prop(a11_sched3_e41, location, stop11_e41).
prop(a11_sched3_e41, time, add(Y, 31)) :- prop(sched3_e41, startTime, Y).
prop(a12_sched3_e41, location, stop12_e41).
prop(a12_sched3_e41, time, add(Y, 33)) :- prop(sched3_e41, startTime, Y).

% an_sched4_e41 is at stopm_e41...
prop(a0_sched4_e41, location, stop0_w41).
prop(a0_sched4_e41, time, add(Y, 0)) :- prop(sched4_e41, startTime, Y).
prop(a1_sched4_e41, location, stop1_e41).
prop(a1_sched4_e41, time, add(Y, 2)) :- prop(sched4_e41, startTime, Y).
prop(a2_sched4_e41, location, stop2_e41).
prop(a2_sched4_e41, time, add(Y, 6)) :- prop(sched4_e41, startTime, Y).
prop(a3_sched4_e41, location, stop3_e41).
prop(a3_sched4_e41, time, add(Y, 10)) :- prop(sched4_e41, startTime, Y).
prop(a4_sched4_e41, location, stop4_e41).
prop(a4_sched4_e41, time, add(Y, 12)) :- prop(sched4_e41, startTime, Y).
prop(a5_sched4_e41, location, stop5_e41).
prop(a5_sched4_e41, time, add(Y, 15)) :- prop(sched4_e41, startTime, Y).
prop(a6_sched4_e41, location, stop6_e41).
prop(a6_sched4_e41, time, add(Y, 20)) :- prop(sched4_e41, startTime, Y).
prop(a7_sched4_e41, location, stop7_e41).
prop(a7_sched4_e41, time, add(Y, 22)) :- prop(sched4_e41, startTime, Y).
prop(a8_sched4_e41, location, stop8_e41).
prop(a8_sched4_e41, time, add(Y, 26)) :- prop(sched4_e41, startTime, Y).
prop(a9_sched4_e41, location, stop9_e41).
prop(a9_sched4_e41, time, add(Y, 28)) :- prop(sched4_e41, startTime, Y).
prop(a10_sched4_e41, location, stop10_e41).
prop(a10_sched4_e41, time, add(Y, 30)) :- prop(sched4_e41, startTime, Y).
prop(a11_sched4_e41, location, stop11_e41).
prop(a11_sched4_e41, time, add(Y, 31)) :- prop(sched4_e41, startTime, Y).
prop(a12_sched4_e41, location, stop12_e41).
prop(a12_sched4_e41, time, add(Y, 33)) :- prop(sched4_e41, startTime, Y).

% an_sched0_w2 is at stopm_w2...
prop(a0_sched0_w2, location, stop0_w2).
prop(a0_sched0_w2, time, add(Y, 0)) :- prop(sched0_w2, startTime, Y).
prop(a1_sched0_w2, location, stop1_w2).
prop(a1_sched0_w2, time, add(Y, 2)) :- prop(sched0_w2, startTime, Y).
prop(a2_sched0_w2, location, stop2_w2).
prop(a2_sched0_w2, time, add(Y, 4)) :- prop(sched0_w2, startTime, Y).
prop(a3_sched0_w2, location, stop3_w2).
prop(a3_sched0_w2, time, add(Y, 7)) :- prop(sched0_w2, startTime, Y).
prop(a4_sched0_w2, location, stop4_w2).
prop(a4_sched0_w2, time, add(Y, 9)) :- prop(sched0_w2, startTime, Y).
prop(a5_sched0_w2, location, stop5_w2).
prop(a5_sched0_w2, time, add(Y, 10)) :- prop(sched0_w2, startTime, Y).
prop(a6_sched0_w2, location, stop6_w2).
prop(a6_sched0_w2, time, add(Y, 13)) :- prop(sched0_w2, startTime, Y).
prop(a7_sched0_w2, location, stop7_w2).
prop(a7_sched0_w2, time, add(Y, 19)) :- prop(sched0_w2, startTime, Y).
prop(a8_sched0_w2, location, stop8_w2).
prop(a8_sched0_w2, time, add(Y, 23)) :- prop(sched0_w2, startTime, Y).
prop(a9_sched0_w2, location, stop9_w2).
prop(a9_sched0_w2, time, add(Y, 26)) :- prop(sched0_w2, startTime, Y).
prop(a10_sched0_w2, location, stop10_w2).
prop(a10_sched0_w2, time, add(Y, 28)) :- prop(sched0_w2, startTime, Y).
prop(a11_sched0_w2, location, stop11_w2).
prop(a11_sched0_w2, time, add(Y, 33)) :- prop(sched0_w2, startTime, Y).
prop(a12_sched0_w2, location, stop12_w2).
prop(a12_sched0_w2, time, add(Y, 35)) :- prop(sched0_w2, startTime, Y).
prop(a13_sched0_w2, location, stop13_w2).
prop(a13_sched0_w2, time, add(Y, 36)) :- prop(sched0_w2, startTime, Y).

% an_sched1_w2 is at stopm_w2...
prop(a0_sched1_w2, location, stop0_w2).
prop(a0_sched1_w2, time, add(Y, 0)) :- prop(sched1_w2, startTime, Y).
prop(a1_sched1_w2, location, stop1_w2).
prop(a1_sched1_w2, time, add(Y, 2)) :- prop(sched1_w2, startTime, Y).
prop(a2_sched1_w2, location, stop2_w2).
prop(a2_sched1_w2, time, add(Y, 4)) :- prop(sched1_w2, startTime, Y).
prop(a3_sched1_w2, location, stop3_w2).
prop(a3_sched1_w2, time, add(Y, 7)) :- prop(sched1_w2, startTime, Y).
prop(a4_sched1_w2, location, stop4_w2).
prop(a4_sched1_w2, time, add(Y, 9)) :- prop(sched1_w2, startTime, Y).
prop(a5_sched1_w2, location, stop5_w2).
prop(a5_sched1_w2, time, add(Y, 10)) :- prop(sched1_w2, startTime, Y).
prop(a6_sched1_w2, location, stop6_w2).
prop(a6_sched1_w2, time, add(Y, 13)) :- prop(sched1_w2, startTime, Y).
prop(a7_sched1_w2, location, stop7_w2).
prop(a7_sched1_w2, time, add(Y, 19)) :- prop(sched1_w2, startTime, Y).
prop(a8_sched1_w2, location, stop8_w2).
prop(a8_sched1_w2, time, add(Y, 23)) :- prop(sched1_w2, startTime, Y).
prop(a9_sched1_w2, location, stop9_w2).
prop(a9_sched1_w2, time, add(Y, 26)) :- prop(sched1_w2, startTime, Y).
prop(a10_sched1_w2, location, stop10_w2).
prop(a10_sched1_w2, time, add(Y, 28)) :- prop(sched1_w2, startTime, Y).
prop(a11_sched1_w2, location, stop11_w2).
prop(a11_sched1_w2, time, add(Y, 33)) :- prop(sched1_w2, startTime, Y).
prop(a12_sched1_w2, location, stop12_w2).
prop(a12_sched1_w2, time, add(Y, 35)) :- prop(sched1_w2, startTime, Y).
prop(a13_sched1_w2, location, stop13_w2).
prop(a13_sched1_w2, time, add(Y, 36)) :- prop(sched1_w2, startTime, Y).

% an_sched2_w2 is at stopm_w2...
prop(a0_sched2_w2, location, stop0_w2).
prop(a0_sched2_w2, time, add(Y, 0)) :- prop(sched2_w2, startTime, Y).
prop(a1_sched2_w2, location, stop1_w2).
prop(a1_sched2_w2, time, add(Y, 2)) :- prop(sched2_w2, startTime, Y).
prop(a2_sched2_w2, location, stop2_w2).
prop(a2_sched2_w2, time, add(Y, 4)) :- prop(sched2_w2, startTime, Y).
prop(a3_sched2_w2, location, stop3_w2).
prop(a3_sched2_w2, time, add(Y, 7)) :- prop(sched2_w2, startTime, Y).
prop(a4_sched2_w2, location, stop4_w2).
prop(a4_sched2_w2, time, add(Y, 9)) :- prop(sched2_w2, startTime, Y).
prop(a5_sched2_w2, location, stop5_w2).
prop(a5_sched2_w2, time, add(Y, 10)) :- prop(sched2_w2, startTime, Y).
prop(a6_sched2_w2, location, stop6_w2).
prop(a6_sched2_w2, time, add(Y, 13)) :- prop(sched2_w2, startTime, Y).
prop(a7_sched2_w2, location, stop7_w2).
prop(a7_sched2_w2, time, add(Y, 19)) :- prop(sched2_w2, startTime, Y).
prop(a8_sched2_w2, location, stop8_w2).
prop(a8_sched2_w2, time, add(Y, 23)) :- prop(sched2_w2, startTime, Y).
prop(a9_sched2_w2, location, stop9_w2).
prop(a9_sched2_w2, time, add(Y, 26)) :- prop(sched2_w2, startTime, Y).
prop(a10_sched2_w2, location, stop10_w2).
prop(a10_sched2_w2, time, add(Y, 28)) :- prop(sched2_w2, startTime, Y).
prop(a11_sched2_w2, location, stop11_w2).
prop(a11_sched2_w2, time, add(Y, 33)) :- prop(sched2_w2, startTime, Y).
prop(a12_sched2_w2, location, stop12_w2).
prop(a12_sched2_w2, time, add(Y, 35)) :- prop(sched2_w2, startTime, Y).
prop(a13_sched2_w2, location, stop13_w2).
prop(a13_sched2_w2, time, add(Y, 36)) :- prop(sched2_w2, startTime, Y).

% an_sched3_w2 is at stopm_w2...
prop(a0_sched3_w2, location, stop0_w2).
prop(a0_sched3_w2, time, add(Y, 0)) :- prop(sched3_w2, startTime, Y).
prop(a1_sched3_w2, location, stop1_w2).
prop(a1_sched3_w2, time, add(Y, 2)) :- prop(sched3_w2, startTime, Y).
prop(a2_sched3_w2, location, stop2_w2).
prop(a2_sched3_w2, time, add(Y, 4)) :- prop(sched3_w2, startTime, Y).
prop(a3_sched3_w2, location, stop3_w2).
prop(a3_sched3_w2, time, add(Y, 7)) :- prop(sched3_w2, startTime, Y).
prop(a4_sched3_w2, location, stop4_w2).
prop(a4_sched3_w2, time, add(Y, 9)) :- prop(sched3_w2, startTime, Y).
prop(a5_sched3_w2, location, stop5_w2).
prop(a5_sched3_w2, time, add(Y, 10)) :- prop(sched3_w2, startTime, Y).
prop(a6_sched3_w2, location, stop6_w2).
prop(a6_sched3_w2, time, add(Y, 13)) :- prop(sched3_w2, startTime, Y).
prop(a7_sched3_w2, location, stop7_w2).
prop(a7_sched3_w2, time, add(Y, 19)) :- prop(sched3_w2, startTime, Y).
prop(a8_sched3_w2, location, stop8_w2).
prop(a8_sched3_w2, time, add(Y, 23)) :- prop(sched3_w2, startTime, Y).
prop(a9_sched3_w2, location, stop9_w2).
prop(a9_sched3_w2, time, add(Y, 26)) :- prop(sched3_w2, startTime, Y).
prop(a10_sched3_w2, location, stop10_w2).
prop(a10_sched3_w2, time, add(Y, 28)) :- prop(sched3_w2, startTime, Y).
prop(a11_sched3_w2, location, stop11_w2).
prop(a11_sched3_w2, time, add(Y, 33)) :- prop(sched3_w2, startTime, Y).
prop(a12_sched3_w2, location, stop12_w2).
prop(a12_sched3_w2, time, add(Y, 35)) :- prop(sched3_w2, startTime, Y).
prop(a13_sched3_w2, location, stop13_w2).
prop(a13_sched3_w2, time, add(Y, 36)) :- prop(sched3_w2, startTime, Y).

% an_sched4_w2 is at stopm_w2...
prop(a0_sched4_w2, location, stop0_w2).
prop(a0_sched4_w2, time, add(Y, 0)) :- prop(sched4_w2, startTime, Y).
prop(a1_sched4_w2, location, stop1_w2).
prop(a1_sched4_w2, time, add(Y, 2)) :- prop(sched4_w2, startTime, Y).
prop(a2_sched4_w2, location, stop2_w2).
prop(a2_sched4_w2, time, add(Y, 4)) :- prop(sched4_w2, startTime, Y).
prop(a3_sched4_w2, location, stop3_w2).
prop(a3_sched4_w2, time, add(Y, 7)) :- prop(sched4_w2, startTime, Y).
prop(a4_sched4_w2, location, stop4_w2).
prop(a4_sched4_w2, time, add(Y, 9)) :- prop(sched4_w2, startTime, Y).
prop(a5_sched4_w2, location, stop5_w2).
prop(a5_sched4_w2, time, add(Y, 10)) :- prop(sched4_w2, startTime, Y).
prop(a6_sched4_w2, location, stop6_w2).
prop(a6_sched4_w2, time, add(Y, 13)) :- prop(sched4_w2, startTime, Y).
prop(a7_sched4_w2, location, stop7_w2).
prop(a7_sched4_w2, time, add(Y, 19)) :- prop(sched4_w2, startTime, Y).
prop(a8_sched4_w2, location, stop8_w2).
prop(a8_sched4_w2, time, add(Y, 23)) :- prop(sched4_w2, startTime, Y).
prop(a9_sched4_w2, location, stop9_w2).
prop(a9_sched4_w2, time, add(Y, 26)) :- prop(sched4_w2, startTime, Y).
prop(a10_sched4_w2, location, stop10_w2).
prop(a10_sched4_w2, time, add(Y, 28)) :- prop(sched4_w2, startTime, Y).
prop(a11_sched4_w2, location, stop11_w2).
prop(a11_sched4_w2, time, add(Y, 33)) :- prop(sched4_w2, startTime, Y).
prop(a12_sched4_w2, location, stop12_w2).
prop(a12_sched4_w2, time, add(Y, 35)) :- prop(sched4_w2, startTime, Y).
prop(a13_sched4_w2, location, stop13_w2).
prop(a13_sched4_w2, time, add(Y, 36)) :- prop(sched4_w2, startTime, Y).

% an_sched0_e2 is at stopm_e2...
prop(a0_sched0_e2, location, stop0_w2).
prop(a0_sched0_e2, time, add(Y, 0)) :- prop(sched0_e2, startTime, Y).
prop(a1_sched0_e2, location, stop1_w2).
prop(a1_sched0_e2, time, add(Y, 1)) :- prop(sched0_e2, startTime, Y).
prop(a2_sched0_e2, location, stop2_w2).
prop(a2_sched0_e2, time, add(Y, 3)) :- prop(sched0_e2, startTime, Y).
prop(a3_sched0_e2, location, stop3_w2).
prop(a3_sched0_e2, time, add(Y, 5)) :- prop(sched0_e2, startTime, Y).
prop(a4_sched0_e2, location, stop4_w2).
prop(a4_sched0_e2, time, add(Y, 7)) :- prop(sched0_e2, startTime, Y).
prop(a5_sched0_e2, location, stop5_w2).
prop(a5_sched0_e2, time, add(Y, 11)) :- prop(sched0_e2, startTime, Y).
prop(a6_sched0_e2, location, stop6_w2).
prop(a6_sched0_e2, time, add(Y, 15)) :- prop(sched0_e2, startTime, Y).
prop(a7_sched0_e2, location, stop7_w2).
prop(a7_sched0_e2, time, add(Y, 20)) :- prop(sched0_e2, startTime, Y).
prop(a8_sched0_e2, location, stop8_w2).
prop(a8_sched0_e2, time, add(Y, 22)) :- prop(sched0_e2, startTime, Y).
prop(a9_sched0_e2, location, stop9_w2).
prop(a9_sched0_e2, time, add(Y, 28)) :- prop(sched0_e2, startTime, Y).
prop(a10_sched0_e2, location, stop10_w2).
prop(a10_sched0_e2, time, add(Y, 30)) :- prop(sched0_e2, startTime, Y).
prop(a11_sched0_e2, location, stop11_w2).
prop(a11_sched0_e2, time, add(Y, 33)) :- prop(sched0_e2, startTime, Y).
prop(a12_sched0_e2, location, stop12_w2).
prop(a12_sched0_e2, time, add(Y, 35)) :- prop(sched0_e2, startTime, Y).
prop(a13_sched0_e2, location, stop13_w2).
prop(a13_sched0_e2, time, add(Y, 36)) :- prop(sched0_e2, startTime, Y).

% an_sched1_e2 is at stopm_e2...
prop(a0_sched1_e2, location, stop0_w2).
prop(a0_sched1_e2, time, add(Y, 0)) :- prop(sched1_e2, startTime, Y).
prop(a1_sched1_e2, location, stop1_w2).
prop(a1_sched1_e2, time, add(Y, 1)) :- prop(sched1_e2, startTime, Y).
prop(a2_sched1_e2, location, stop2_w2).
prop(a2_sched1_e2, time, add(Y, 3)) :- prop(sched1_e2, startTime, Y).
prop(a3_sched1_e2, location, stop3_w2).
prop(a3_sched1_e2, time, add(Y, 5)) :- prop(sched1_e2, startTime, Y).
prop(a4_sched1_e2, location, stop4_w2).
prop(a4_sched1_e2, time, add(Y, 7)) :- prop(sched1_e2, startTime, Y).
prop(a5_sched1_e2, location, stop5_w2).
prop(a5_sched1_e2, time, add(Y, 11)) :- prop(sched1_e2, startTime, Y).
prop(a6_sched1_e2, location, stop6_w2).
prop(a6_sched1_e2, time, add(Y, 15)) :- prop(sched1_e2, startTime, Y).
prop(a7_sched1_e2, location, stop7_w2).
prop(a7_sched1_e2, time, add(Y, 20)) :- prop(sched1_e2, startTime, Y).
prop(a8_sched1_e2, location, stop8_w2).
prop(a8_sched1_e2, time, add(Y, 22)) :- prop(sched1_e2, startTime, Y).
prop(a9_sched1_e2, location, stop9_w2).
prop(a9_sched1_e2, time, add(Y, 28)) :- prop(sched1_e2, startTime, Y).
prop(a10_sched1_e2, location, stop10_w2).
prop(a10_sched1_e2, time, add(Y, 30)) :- prop(sched1_e2, startTime, Y).
prop(a11_sched1_e2, location, stop11_w2).
prop(a11_sched1_e2, time, add(Y, 33)) :- prop(sched1_e2, startTime, Y).
prop(a12_sched1_e2, location, stop12_w2).
prop(a12_sched1_e2, time, add(Y, 35)) :- prop(sched1_e2, startTime, Y).
prop(a13_sched1_e2, location, stop13_w2).
prop(a13_sched1_e2, time, add(Y, 36)) :- prop(sched1_e2, startTime, Y).

% an_sched2_e2 is at stopm_e2...
prop(a0_sched2_e2, location, stop0_w2).
prop(a0_sched2_e2, time, add(Y, 0)) :- prop(sched2_e2, startTime, Y).
prop(a1_sched2_e2, location, stop1_w2).
prop(a1_sched2_e2, time, add(Y, 1)) :- prop(sched2_e2, startTime, Y).
prop(a2_sched2_e2, location, stop2_w2).
prop(a2_sched2_e2, time, add(Y, 3)) :- prop(sched2_e2, startTime, Y).
prop(a3_sched2_e2, location, stop3_w2).
prop(a3_sched2_e2, time, add(Y, 5)) :- prop(sched2_e2, startTime, Y).
prop(a4_sched2_e2, location, stop4_w2).
prop(a4_sched2_e2, time, add(Y, 7)) :- prop(sched2_e2, startTime, Y).
prop(a5_sched2_e2, location, stop5_w2).
prop(a5_sched2_e2, time, add(Y, 11)) :- prop(sched2_e2, startTime, Y).
prop(a6_sched2_e2, location, stop6_w2).
prop(a6_sched2_e2, time, add(Y, 15)) :- prop(sched2_e2, startTime, Y).
prop(a7_sched2_e2, location, stop7_w2).
prop(a7_sched2_e2, time, add(Y, 20)) :- prop(sched2_e2, startTime, Y).
prop(a8_sched2_e2, location, stop8_w2).
prop(a8_sched2_e2, time, add(Y, 22)) :- prop(sched2_e2, startTime, Y).
prop(a9_sched2_e2, location, stop9_w2).
prop(a9_sched2_e2, time, add(Y, 28)) :- prop(sched2_e2, startTime, Y).
prop(a10_sched2_e2, location, stop10_w2).
prop(a10_sched2_e2, time, add(Y, 30)) :- prop(sched2_e2, startTime, Y).
prop(a11_sched2_e2, location, stop11_w2).
prop(a11_sched2_e2, time, add(Y, 33)) :- prop(sched2_e2, startTime, Y).
prop(a12_sched2_e2, location, stop12_w2).
prop(a12_sched2_e2, time, add(Y, 35)) :- prop(sched2_e2, startTime, Y).
prop(a13_sched2_e2, location, stop13_w2).
prop(a13_sched2_e2, time, add(Y, 36)) :- prop(sched2_e2, startTime, Y).

% an_sched3_e2 is at stopm_e2...
prop(a0_sched3_e2, location, stop0_w2).
prop(a0_sched3_e2, time, add(Y, 0)) :- prop(sched3_e2, startTime, Y).
prop(a1_sched3_e2, location, stop1_w2).
prop(a1_sched3_e2, time, add(Y, 1)) :- prop(sched3_e2, startTime, Y).
prop(a2_sched3_e2, location, stop2_w2).
prop(a2_sched3_e2, time, add(Y, 3)) :- prop(sched3_e2, startTime, Y).
prop(a3_sched3_e2, location, stop3_w2).
prop(a3_sched3_e2, time, add(Y, 5)) :- prop(sched3_e2, startTime, Y).
prop(a4_sched3_e2, location, stop4_w2).
prop(a4_sched3_e2, time, add(Y, 7)) :- prop(sched3_e2, startTime, Y).
prop(a5_sched3_e2, location, stop5_w2).
prop(a5_sched3_e2, time, add(Y, 11)) :- prop(sched3_e2, startTime, Y).
prop(a6_sched3_e2, location, stop6_w2).
prop(a6_sched3_e2, time, add(Y, 15)) :- prop(sched3_e2, startTime, Y).
prop(a7_sched3_e2, location, stop7_w2).
prop(a7_sched3_e2, time, add(Y, 20)) :- prop(sched3_e2, startTime, Y).
prop(a8_sched3_e2, location, stop8_w2).
prop(a8_sched3_e2, time, add(Y, 22)) :- prop(sched3_e2, startTime, Y).
prop(a9_sched3_e2, location, stop9_w2).
prop(a9_sched3_e2, time, add(Y, 28)) :- prop(sched3_e2, startTime, Y).
prop(a10_sched3_e2, location, stop10_w2).
prop(a10_sched3_e2, time, add(Y, 30)) :- prop(sched3_e2, startTime, Y).
prop(a11_sched3_e2, location, stop11_w2).
prop(a11_sched3_e2, time, add(Y, 33)) :- prop(sched3_e2, startTime, Y).
prop(a12_sched3_e2, location, stop12_w2).
prop(a12_sched3_e2, time, add(Y, 35)) :- prop(sched3_e2, startTime, Y).
prop(a13_sched3_e2, location, stop13_w2).
prop(a13_sched3_e2, time, add(Y, 36)) :- prop(sched3_e2, startTime, Y).

% an_sched4_e2 is at stopm_e2...
prop(a0_sched4_e2, location, stop0_w2).
prop(a0_sched4_e2, time, add(Y, 0)) :- prop(sched4_e2, startTime, Y).
prop(a1_sched4_e2, location, stop1_w2).
prop(a1_sched4_e2, time, add(Y, 1)) :- prop(sched4_e2, startTime, Y).
prop(a2_sched4_e2, location, stop2_w2).
prop(a2_sched4_e2, time, add(Y, 3)) :- prop(sched4_e2, startTime, Y).
prop(a3_sched4_e2, location, stop3_w2).
prop(a3_sched4_e2, time, add(Y, 5)) :- prop(sched4_e2, startTime, Y).
prop(a4_sched4_e2, location, stop4_w2).
prop(a4_sched4_e2, time, add(Y, 7)) :- prop(sched4_e2, startTime, Y).
prop(a5_sched4_e2, location, stop5_w2).
prop(a5_sched4_e2, time, add(Y, 11)) :- prop(sched4_e2, startTime, Y).
prop(a6_sched4_e2, location, stop6_w2).
prop(a6_sched4_e2, time, add(Y, 15)) :- prop(sched4_e2, startTime, Y).
prop(a7_sched4_e2, location, stop7_w2).
prop(a7_sched4_e2, time, add(Y, 20)) :- prop(sched4_e2, startTime, Y).
prop(a8_sched4_e2, location, stop8_w2).
prop(a8_sched4_e2, time, add(Y, 22)) :- prop(sched4_e2, startTime, Y).
prop(a9_sched4_e2, location, stop9_w2).
prop(a9_sched4_e2, time, add(Y, 28)) :- prop(sched4_e2, startTime, Y).
prop(a10_sched4_e2, location, stop10_w2).
prop(a10_sched4_e2, time, add(Y, 30)) :- prop(sched4_e2, startTime, Y).
prop(a11_sched4_e2, location, stop11_w2).
prop(a11_sched4_e2, time, add(Y, 33)) :- prop(sched4_e2, startTime, Y).
prop(a12_sched4_e2, location, stop12_w2).
prop(a12_sched4_e2, time, add(Y, 35)) :- prop(sched4_e2, startTime, Y).
prop(a13_sched4_e2, location, stop13_w2).
prop(a13_sched4_e2, time, add(Y, 36)) :- prop(sched4_e2, startTime, Y).

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
prop(stop9_ncl, location, loc(cambie_st, oakridge)).
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
prop(stop6_scl, location, loc(cambie_st, oakridge)).
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
prop(a0_sched0_ncl, time, add(Y,0)) :- prop(sched0_ncl, startTime, Y).
prop(a1_sched0_ncl, location, stop1_ncl).
prop(a1_sched0_ncl, time, add(Y,2)) :- prop(sched0_ncl, startTime, Y).
prop(a2_sched0_ncl, location, stop2_ncl).
prop(a2_sched0_ncl, time, add(Y,4)) :- prop(sched0_ncl, startTime, Y).
prop(a3_sched0_ncl, location, stop3_ncl).
prop(a3_sched0_ncl, time, add(Y,13)) :- prop(sched0_ncl, startTime, Y).
prop(a4_sched0_ncl, location, stop4_ncl).
prop(a4_sched0_ncl, time, add(Y,11)) :- prop(sched0_ncl, startTime, Y).
prop(a5_sched0_ncl, location, stop5_ncl).
prop(a5_sched0_ncl, time, add(Y,9)) :- prop(sched0_ncl, startTime, Y).
prop(a6_sched0_ncl, location, stop6_ncl).
prop(a6_sched0_ncl, time, add(Y,7)) :- prop(sched0_ncl, startTime, Y).
prop(a7_sched0_ncl, location, stop7_ncl).
prop(a7_sched0_ncl, time, add(Y,9)) :- prop(sched0_ncl, startTime, Y).
prop(a8_sched0_ncl, location, stop8_ncl).
prop(a8_sched0_ncl, time, add(Y,12)) :- prop(sched0_ncl, startTime, Y).
prop(a9_sched0_ncl, location, stop9_ncl).
prop(a9_sched0_ncl, time, add(Y,15)) :- prop(sched0_ncl, startTime, Y).
prop(a10_sched0_ncl, location, stop10_ncl).
prop(a10_sched0_ncl, time, add(Y,17)) :- prop(sched0_ncl, startTime, Y).
prop(a11_sched0_ncl, location, stop11_ncl).
prop(a11_sched0_ncl, time, add(Y,19)) :- prop(sched0_ncl, startTime, Y).
prop(a12_sched0_ncl, location, stop12_ncl).
prop(a12_sched0_ncl, time, add(Y,20)) :- prop(sched0_ncl, startTime, Y).
prop(a13_sched0_ncl, location, stop13_ncl).
prop(a13_sched0_ncl, time, add(Y,22)) :- prop(sched0_ncl, startTime, Y).
prop(a14_sched0_ncl, location, stop14_ncl).
prop(a14_sched0_ncl, time, add(Y,24)) :- prop(sched0_ncl, startTime, Y).
prop(a15_sched0_ncl, location, stop15_ncl).
prop(a15_sched0_ncl, time, add(Y,26)) :- prop(sched0_ncl, startTime, Y).

prop(a0_sched1_ncl, location, stop0_ncl).
prop(a0_sched1_ncl, time, add(Y,0)) :- prop(sched1_ncl, startTime, Y).
prop(a1_sched1_ncl, location, stop1_ncl).
prop(a1_sched1_ncl, time, add(Y,2)) :- prop(sched1_ncl, startTime, Y).
prop(a2_sched1_ncl, location, stop2_ncl).
prop(a2_sched1_ncl, time, add(Y,4)) :- prop(sched1_ncl, startTime, Y).
prop(a3_sched1_ncl, location, stop3_ncl).
prop(a3_sched1_ncl, time, add(Y,13)) :- prop(sched1_ncl, startTime, Y).
prop(a4_sched1_ncl, location, stop4_ncl).
prop(a4_sched1_ncl, time, add(Y,11)) :- prop(sched1_ncl, startTime, Y).
prop(a5_sched1_ncl, location, stop5_ncl).
prop(a5_sched1_ncl, time, add(Y,9)) :- prop(sched1_ncl, startTime, Y).
prop(a6_sched1_ncl, location, stop6_ncl).
prop(a6_sched1_ncl, time, add(Y,7)) :- prop(sched1_ncl, startTime, Y).
prop(a7_sched1_ncl, location, stop7_ncl).
prop(a7_sched1_ncl, time, add(Y,9)) :- prop(sched1_ncl, startTime, Y).
prop(a8_sched1_ncl, location, stop8_ncl).
prop(a8_sched1_ncl, time, add(Y,12)) :- prop(sched1_ncl, startTime, Y).
prop(a9_sched1_ncl, location, stop9_ncl).
prop(a9_sched1_ncl, time, add(Y,15)) :- prop(sched1_ncl, startTime, Y).
prop(a10_sched1_ncl, location, stop10_ncl).
prop(a10_sched1_ncl, time, add(Y,17)) :- prop(sched1_ncl, startTime, Y).
prop(a11_sched1_ncl, location, stop11_ncl).
prop(a11_sched1_ncl, time, add(Y,19)) :- prop(sched1_ncl, startTime, Y).
prop(a12_sched1_ncl, location, stop12_ncl).
prop(a12_sched1_ncl, time, add(Y,20)) :- prop(sched1_ncl, startTime, Y).
prop(a13_sched1_ncl, location, stop13_ncl).
prop(a13_sched1_ncl, time, add(Y,22)) :- prop(sched1_ncl, startTime, Y).
prop(a14_sched1_ncl, location, stop14_ncl).
prop(a14_sched1_ncl, time, add(Y,24)) :- prop(sched1_ncl, startTime, Y).
prop(a15_sched1_ncl, location, stop15_ncl).
prop(a15_sched1_ncl, time, add(Y,26)) :- prop(sched1_ncl, startTime, Y).

prop(a0_sched2_ncl, location, stop0_ncl).
prop(a0_sched2_ncl, time, add(Y,0)) :- prop(sched2_ncl, startTime, Y).
prop(a1_sched2_ncl, location, stop1_ncl).
prop(a1_sched2_ncl, time, add(Y,2)) :- prop(sched2_ncl, startTime, Y).
prop(a2_sched2_ncl, location, stop2_ncl).
prop(a2_sched2_ncl, time, add(Y,4)) :- prop(sched2_ncl, startTime, Y).
prop(a3_sched2_ncl, location, stop3_ncl).
prop(a3_sched2_ncl, time, add(Y,13)) :- prop(sched2_ncl, startTime, Y).
prop(a4_sched2_ncl, location, stop4_ncl).
prop(a4_sched2_ncl, time, add(Y,11)) :- prop(sched2_ncl, startTime, Y).
prop(a5_sched2_ncl, location, stop5_ncl).
prop(a5_sched2_ncl, time, add(Y,9)) :- prop(sched2_ncl, startTime, Y).
prop(a6_sched2_ncl, location, stop6_ncl).
prop(a6_sched2_ncl, time, add(Y,7)) :- prop(sched2_ncl, startTime, Y).
prop(a7_sched2_ncl, location, stop7_ncl).
prop(a7_sched2_ncl, time, add(Y,9)) :- prop(sched2_ncl, startTime, Y).
prop(a8_sched2_ncl, location, stop8_ncl).
prop(a8_sched2_ncl, time, add(Y,12)) :- prop(sched2_ncl, startTime, Y).
prop(a9_sched2_ncl, location, stop9_ncl).
prop(a9_sched2_ncl, time, add(Y,15)) :- prop(sched2_ncl, startTime, Y).
prop(a10_sched2_ncl, location, stop10_ncl).
prop(a10_sched2_ncl, time, add(Y,17)) :- prop(sched2_ncl, startTime, Y).
prop(a11_sched2_ncl, location, stop11_ncl).
prop(a11_sched2_ncl, time, add(Y,19)) :- prop(sched2_ncl, startTime, Y).
prop(a12_sched2_ncl, location, stop12_ncl).
prop(a12_sched2_ncl, time, add(Y,20)) :- prop(sched2_ncl, startTime, Y).
prop(a13_sched2_ncl, location, stop13_ncl).
prop(a13_sched2_ncl, time, add(Y,22)) :- prop(sched2_ncl, startTime, Y).
prop(a14_sched2_ncl, location, stop14_ncl).
prop(a14_sched2_ncl, time, add(Y,24)) :- prop(sched2_ncl, startTime, Y).
prop(a15_sched2_ncl, location, stop15_ncl).
prop(a15_sched2_ncl, time, add(Y,26)) :- prop(sched2_ncl, startTime, Y).

prop(a0_sched3_ncl, location, stop0_ncl).
prop(a0_sched3_ncl, time, add(Y,0)) :- prop(sched3_ncl, startTime, Y).
prop(a1_sched3_ncl, location, stop1_ncl).
prop(a1_sched3_ncl, time, add(Y,2)) :- prop(sched3_ncl, startTime, Y).
prop(a2_sched3_ncl, location, stop2_ncl).
prop(a2_sched3_ncl, time, add(Y,4)) :- prop(sched3_ncl, startTime, Y).
prop(a3_sched3_ncl, location, stop3_ncl).
prop(a3_sched3_ncl, time, add(Y,13)) :- prop(sched3_ncl, startTime, Y).
prop(a4_sched3_ncl, location, stop4_ncl).
prop(a4_sched3_ncl, time, add(Y,11)) :- prop(sched3_ncl, startTime, Y).
prop(a5_sched3_ncl, location, stop5_ncl).
prop(a5_sched3_ncl, time, add(Y,9)) :- prop(sched3_ncl, startTime, Y).
prop(a6_sched3_ncl, location, stop6_ncl).
prop(a6_sched3_ncl, time, add(Y,7)) :- prop(sched3_ncl, startTime, Y).
prop(a7_sched3_ncl, location, stop7_ncl).
prop(a7_sched3_ncl, time, add(Y,9)) :- prop(sched3_ncl, startTime, Y).
prop(a8_sched3_ncl, location, stop8_ncl).
prop(a8_sched3_ncl, time, add(Y,12)) :- prop(sched3_ncl, startTime, Y).
prop(a9_sched3_ncl, location, stop9_ncl).
prop(a9_sched3_ncl, time, add(Y,15)) :- prop(sched3_ncl, startTime, Y).
prop(a10_sched3_ncl, location, stop10_ncl).
prop(a10_sched3_ncl, time, add(Y,17)) :- prop(sched3_ncl, startTime, Y).
prop(a11_sched3_ncl, location, stop11_ncl).
prop(a11_sched3_ncl, time, add(Y,19)) :- prop(sched3_ncl, startTime, Y).
prop(a12_sched3_ncl, location, stop12_ncl).
prop(a12_sched3_ncl, time, add(Y,20)) :- prop(sched3_ncl, startTime, Y).
prop(a13_sched3_ncl, location, stop13_ncl).
prop(a13_sched3_ncl, time, add(Y,22)) :- prop(sched3_ncl, startTime, Y).
prop(a14_sched3_ncl, location, stop14_ncl).
prop(a14_sched3_ncl, time, add(Y,24)) :- prop(sched3_ncl, startTime, Y).
prop(a15_sched3_ncl, location, stop15_ncl).
prop(a15_sched3_ncl, time, add(Y,26)) :- prop(sched3_ncl, startTime, Y).

prop(a0_sched4_ncl, location, stop0_ncl).
prop(a0_sched4_ncl, time, add(Y,0)) :- prop(sched4_ncl, startTime, Y).
prop(a1_sched4_ncl, location, stop1_ncl).
prop(a1_sched4_ncl, time, add(Y,2)) :- prop(sched4_ncl, startTime, Y).
prop(a2_sched4_ncl, location, stop2_ncl).
prop(a2_sched4_ncl, time, add(Y,4)) :- prop(sched4_ncl, startTime, Y).
prop(a3_sched4_ncl, location, stop3_ncl).
prop(a3_sched4_ncl, time, add(Y,13)) :- prop(sched4_ncl, startTime, Y).
prop(a4_sched4_ncl, location, stop4_ncl).
prop(a4_sched4_ncl, time, add(Y,11)) :- prop(sched4_ncl, startTime, Y).
prop(a5_sched4_ncl, location, stop5_ncl).
prop(a5_sched4_ncl, time, add(Y,9)) :- prop(sched4_ncl, startTime, Y).
prop(a6_sched4_ncl, location, stop6_ncl).
prop(a6_sched4_ncl, time, add(Y,7)) :- prop(sched4_ncl, startTime, Y).
prop(a7_sched4_ncl, location, stop7_ncl).
prop(a7_sched4_ncl, time, add(Y,9)) :- prop(sched4_ncl, startTime, Y).
prop(a8_sched4_ncl, location, stop8_ncl).
prop(a8_sched4_ncl, time, add(Y,12)) :- prop(sched4_ncl, startTime, Y).
prop(a9_sched4_ncl, location, stop9_ncl).
prop(a9_sched4_ncl, time, add(Y,15)) :- prop(sched4_ncl, startTime, Y).
prop(a10_sched4_ncl, location, stop10_ncl).
prop(a10_sched4_ncl, time, add(Y,17)) :- prop(sched4_ncl, startTime, Y).
prop(a11_sched4_ncl, location, stop11_ncl).
prop(a11_sched4_ncl, time, add(Y,19)) :- prop(sched4_ncl, startTime, Y).
prop(a12_sched4_ncl, location, stop12_ncl).
prop(a12_sched4_ncl, time, add(Y,20)) :- prop(sched4_ncl, startTime, Y).
prop(a13_sched4_ncl, location, stop13_ncl).
prop(a13_sched4_ncl, time, add(Y,22)) :- prop(sched4_ncl, startTime, Y).
prop(a14_sched4_ncl, location, stop14_ncl).
prop(a14_sched4_ncl, time, add(Y,24)) :- prop(sched4_ncl, startTime, Y).
prop(a15_sched4_ncl, location, stop15_ncl).
prop(a15_sched4_ncl, time, add(Y,26)) :- prop(sched4_ncl, startTime, Y).

prop(a0_sched5_ncl, location, stop0_ncl).
prop(a0_sched5_ncl, time, add(Y,0)) :- prop(sched5_ncl, startTime, Y).
prop(a1_sched5_ncl, location, stop1_ncl).
prop(a1_sched5_ncl, time, add(Y,2)) :- prop(sched5_ncl, startTime, Y).
prop(a2_sched5_ncl, location, stop2_ncl).
prop(a2_sched5_ncl, time, add(Y,4)) :- prop(sched5_ncl, startTime, Y).
prop(a3_sched5_ncl, location, stop3_ncl).
prop(a3_sched5_ncl, time, add(Y,13)) :- prop(sched5_ncl, startTime, Y).
prop(a4_sched5_ncl, location, stop4_ncl).
prop(a4_sched5_ncl, time, add(Y,11)) :- prop(sched5_ncl, startTime, Y).
prop(a5_sched5_ncl, location, stop5_ncl).
prop(a5_sched5_ncl, time, add(Y,9)) :- prop(sched5_ncl, startTime, Y).
prop(a6_sched5_ncl, location, stop6_ncl).
prop(a6_sched5_ncl, time, add(Y,7)) :- prop(sched5_ncl, startTime, Y).
prop(a7_sched5_ncl, location, stop7_ncl).
prop(a7_sched5_ncl, time, add(Y,9)) :- prop(sched5_ncl, startTime, Y).
prop(a8_sched5_ncl, location, stop8_ncl).
prop(a8_sched5_ncl, time, add(Y,12)) :- prop(sched5_ncl, startTime, Y).
prop(a9_sched5_ncl, location, stop9_ncl).
prop(a9_sched5_ncl, time, add(Y,15)) :- prop(sched5_ncl, startTime, Y).
prop(a10_sched5_ncl, location, stop10_ncl).
prop(a10_sched5_ncl, time, add(Y,17)) :- prop(sched5_ncl, startTime, Y).
prop(a11_sched5_ncl, location, stop11_ncl).
prop(a11_sched5_ncl, time, add(Y,19)) :- prop(sched5_ncl, startTime, Y).
prop(a12_sched5_ncl, location, stop12_ncl).
prop(a12_sched5_ncl, time, add(Y,20)) :- prop(sched5_ncl, startTime, Y).
prop(a13_sched5_ncl, location, stop13_ncl).
prop(a13_sched5_ncl, time, add(Y,22)) :- prop(sched5_ncl, startTime, Y).
prop(a14_sched5_ncl, location, stop14_ncl).
prop(a14_sched5_ncl, time, add(Y,24)) :- prop(sched5_ncl, startTime, Y).
prop(a15_sched5_ncl, location, stop15_ncl).
prop(a15_sched5_ncl, time, add(Y,26)) :- prop(sched5_ncl, startTime, Y).

prop(a0_sched6_ncl, location, stop0_ncl).
prop(a0_sched6_ncl, time, add(Y,0)) :- prop(sched6_ncl, startTime, Y).
prop(a1_sched6_ncl, location, stop1_ncl).
prop(a1_sched6_ncl, time, add(Y,2)) :- prop(sched6_ncl, startTime, Y).
prop(a2_sched6_ncl, location, stop2_ncl).
prop(a2_sched6_ncl, time, add(Y,4)) :- prop(sched6_ncl, startTime, Y).
prop(a3_sched6_ncl, location, stop3_ncl).
prop(a3_sched6_ncl, time, add(Y,13)) :- prop(sched6_ncl, startTime, Y).
prop(a4_sched6_ncl, location, stop4_ncl).
prop(a4_sched6_ncl, time, add(Y,11)) :- prop(sched6_ncl, startTime, Y).
prop(a5_sched6_ncl, location, stop5_ncl).
prop(a5_sched6_ncl, time, add(Y,9)) :- prop(sched6_ncl, startTime, Y).
prop(a6_sched6_ncl, location, stop6_ncl).
prop(a6_sched6_ncl, time, add(Y,7)) :- prop(sched6_ncl, startTime, Y).
prop(a7_sched6_ncl, location, stop7_ncl).
prop(a7_sched6_ncl, time, add(Y,9)) :- prop(sched6_ncl, startTime, Y).
prop(a8_sched6_ncl, location, stop8_ncl).
prop(a8_sched6_ncl, time, add(Y,12)) :- prop(sched6_ncl, startTime, Y).
prop(a9_sched6_ncl, location, stop9_ncl).
prop(a9_sched6_ncl, time, add(Y,15)) :- prop(sched6_ncl, startTime, Y).
prop(a10_sched6_ncl, location, stop10_ncl).
prop(a10_sched6_ncl, time, add(Y,17)) :- prop(sched6_ncl, startTime, Y).
prop(a11_sched6_ncl, location, stop11_ncl).
prop(a11_sched6_ncl, time, add(Y,19)) :- prop(sched6_ncl, startTime, Y).
prop(a12_sched6_ncl, location, stop12_ncl).
prop(a12_sched6_ncl, time, add(Y,20)) :- prop(sched6_ncl, startTime, Y).
prop(a13_sched6_ncl, location, stop13_ncl).
prop(a13_sched6_ncl, time, add(Y,22)) :- prop(sched6_ncl, startTime, Y).
prop(a14_sched6_ncl, location, stop14_ncl).
prop(a14_sched6_ncl, time, add(Y,24)) :- prop(sched6_ncl, startTime, Y).
prop(a15_sched6_ncl, location, stop15_ncl).
prop(a15_sched6_ncl, time, add(Y,26)) :- prop(sched6_ncl, startTime, Y).

prop(a0_sched7_ncl, location, stop0_ncl).
prop(a0_sched7_ncl, time, add(Y,0)) :- prop(sched7_ncl, startTime, Y).
prop(a1_sched7_ncl, location, stop1_ncl).
prop(a1_sched7_ncl, time, add(Y,2)) :- prop(sched7_ncl, startTime, Y).
prop(a2_sched7_ncl, location, stop2_ncl).
prop(a2_sched7_ncl, time, add(Y,4)) :- prop(sched7_ncl, startTime, Y).
prop(a3_sched7_ncl, location, stop3_ncl).
prop(a3_sched7_ncl, time, add(Y,13)) :- prop(sched7_ncl, startTime, Y).
prop(a4_sched7_ncl, location, stop4_ncl).
prop(a4_sched7_ncl, time, add(Y,11)) :- prop(sched7_ncl, startTime, Y).
prop(a5_sched7_ncl, location, stop5_ncl).
prop(a5_sched7_ncl, time, add(Y,9)) :- prop(sched7_ncl, startTime, Y).
prop(a6_sched7_ncl, location, stop6_ncl).
prop(a6_sched7_ncl, time, add(Y,7)) :- prop(sched7_ncl, startTime, Y).
prop(a7_sched7_ncl, location, stop7_ncl).
prop(a7_sched7_ncl, time, add(Y,9)) :- prop(sched7_ncl, startTime, Y).
prop(a8_sched7_ncl, location, stop8_ncl).
prop(a8_sched7_ncl, time, add(Y,12)) :- prop(sched7_ncl, startTime, Y).
prop(a9_sched7_ncl, location, stop9_ncl).
prop(a9_sched7_ncl, time, add(Y,15)) :- prop(sched7_ncl, startTime, Y).
prop(a10_sched7_ncl, location, stop10_ncl).
prop(a10_sched7_ncl, time, add(Y,17)) :- prop(sched7_ncl, startTime, Y).
prop(a11_sched7_ncl, location, stop11_ncl).
prop(a11_sched7_ncl, time, add(Y,19)) :- prop(sched7_ncl, startTime, Y).
prop(a12_sched7_ncl, location, stop12_ncl).
prop(a12_sched7_ncl, time, add(Y,20)) :- prop(sched7_ncl, startTime, Y).
prop(a13_sched7_ncl, location, stop13_ncl).
prop(a13_sched7_ncl, time, add(Y,22)) :- prop(sched7_ncl, startTime, Y).
prop(a14_sched7_ncl, location, stop14_ncl).
prop(a14_sched7_ncl, time, add(Y,24)) :- prop(sched7_ncl, startTime, Y).
prop(a15_sched7_ncl, location, stop15_ncl).
prop(a15_sched7_ncl, time, add(Y,26)) :- prop(sched7_ncl, startTime, Y).

prop(a0_sched8_ncl, location, stop0_ncl).
prop(a0_sched8_ncl, time, add(Y,0)) :- prop(sched8_ncl, startTime, Y).
prop(a1_sched8_ncl, location, stop1_ncl).
prop(a1_sched8_ncl, time, add(Y,2)) :- prop(sched8_ncl, startTime, Y).
prop(a2_sched8_ncl, location, stop2_ncl).
prop(a2_sched8_ncl, time, add(Y,4)) :- prop(sched8_ncl, startTime, Y).
prop(a3_sched8_ncl, location, stop3_ncl).
prop(a3_sched8_ncl, time, add(Y,13)) :- prop(sched8_ncl, startTime, Y).
prop(a4_sched8_ncl, location, stop4_ncl).
prop(a4_sched8_ncl, time, add(Y,11)) :- prop(sched8_ncl, startTime, Y).
prop(a5_sched8_ncl, location, stop5_ncl).
prop(a5_sched8_ncl, time, add(Y,9)) :- prop(sched8_ncl, startTime, Y).
prop(a6_sched8_ncl, location, stop6_ncl).
prop(a6_sched8_ncl, time, add(Y,7)) :- prop(sched8_ncl, startTime, Y).
prop(a7_sched8_ncl, location, stop7_ncl).
prop(a7_sched8_ncl, time, add(Y,9)) :- prop(sched8_ncl, startTime, Y).
prop(a8_sched8_ncl, location, stop8_ncl).
prop(a8_sched8_ncl, time, add(Y,12)) :- prop(sched8_ncl, startTime, Y).
prop(a9_sched8_ncl, location, stop9_ncl).
prop(a9_sched8_ncl, time, add(Y,15)) :- prop(sched8_ncl, startTime, Y).
prop(a10_sched8_ncl, location, stop10_ncl).
prop(a10_sched8_ncl, time, add(Y,17)) :- prop(sched8_ncl, startTime, Y).
prop(a11_sched8_ncl, location, stop11_ncl).
prop(a11_sched8_ncl, time, add(Y,19)) :- prop(sched8_ncl, startTime, Y).
prop(a12_sched8_ncl, location, stop12_ncl).
prop(a12_sched8_ncl, time, add(Y,20)) :- prop(sched8_ncl, startTime, Y).
prop(a13_sched8_ncl, location, stop13_ncl).
prop(a13_sched8_ncl, time, add(Y,22)) :- prop(sched8_ncl, startTime, Y).
prop(a14_sched8_ncl, location, stop14_ncl).
prop(a14_sched8_ncl, time, add(Y,24)) :- prop(sched8_ncl, startTime, Y).
prop(a15_sched8_ncl, location, stop15_ncl).
prop(a15_sched8_ncl, time, add(Y,26)) :- prop(sched8_ncl, startTime, Y).

prop(a0_sched8_ncl, location, stop0_ncl).
prop(a0_sched8_ncl, time, add(Y,0)) :- prop(sched8_ncl, startTime, Y).
prop(a1_sched8_ncl, location, stop1_ncl).
prop(a1_sched8_ncl, time, add(Y,2)) :- prop(sched8_ncl, startTime, Y).
prop(a2_sched8_ncl, location, stop2_ncl).
prop(a2_sched8_ncl, time, add(Y,4)) :- prop(sched8_ncl, startTime, Y).
prop(a3_sched8_ncl, location, stop3_ncl).
prop(a3_sched8_ncl, time, add(Y,13)) :- prop(sched8_ncl, startTime, Y).
prop(a4_sched8_ncl, location, stop4_ncl).
prop(a4_sched8_ncl, time, add(Y,11)) :- prop(sched8_ncl, startTime, Y).
prop(a5_sched8_ncl, location, stop5_ncl).
prop(a5_sched8_ncl, time, add(Y,9)) :- prop(sched8_ncl, startTime, Y).
prop(a6_sched8_ncl, location, stop6_ncl).
prop(a6_sched8_ncl, time, add(Y,7)) :- prop(sched8_ncl, startTime, Y).
prop(a7_sched8_ncl, location, stop7_ncl).
prop(a7_sched8_ncl, time, add(Y,9)) :- prop(sched8_ncl, startTime, Y).
prop(a8_sched8_ncl, location, stop8_ncl).
prop(a8_sched8_ncl, time, add(Y,12)) :- prop(sched8_ncl, startTime, Y).
prop(a9_sched8_ncl, location, stop9_ncl).
prop(a9_sched8_ncl, time, add(Y,15)) :- prop(sched8_ncl, startTime, Y).
prop(a10_sched8_ncl, location, stop10_ncl).
prop(a10_sched8_ncl, time, add(Y,17)) :- prop(sched8_ncl, startTime, Y).
prop(a11_sched8_ncl, location, stop11_ncl).
prop(a11_sched8_ncl, time, add(Y,19)) :- prop(sched8_ncl, startTime, Y).
prop(a12_sched8_ncl, location, stop12_ncl).
prop(a12_sched8_ncl, time, add(Y,20)) :- prop(sched8_ncl, startTime, Y).
prop(a13_sched8_ncl, location, stop13_ncl).
prop(a13_sched8_ncl, time, add(Y,22)) :- prop(sched8_ncl, startTime, Y).
prop(a14_sched8_ncl, location, stop14_ncl).
prop(a14_sched8_ncl, time, add(Y,24)) :- prop(sched8_ncl, startTime, Y).
prop(a15_sched8_ncl, location, stop15_ncl).
prop(a15_sched8_ncl, time, add(Y,26)) :- prop(sched8_ncl, startTime, Y).

prop(a0_sched10_ncl, location, stop0_ncl).
prop(a0_sched10_ncl, time, add(Y,0)) :- prop(sched10_ncl, startTime, Y).
prop(a1_sched10_ncl, location, stop1_ncl).
prop(a1_sched10_ncl, time, add(Y,2)) :- prop(sched10_ncl, startTime, Y).
prop(a2_sched10_ncl, location, stop2_ncl).
prop(a2_sched10_ncl, time, add(Y,4)) :- prop(sched10_ncl, startTime, Y).
prop(a3_sched10_ncl, location, stop3_ncl).
prop(a3_sched10_ncl, time, add(Y,13)) :- prop(sched10_ncl, startTime, Y).
prop(a4_sched10_ncl, location, stop4_ncl).
prop(a4_sched10_ncl, time, add(Y,11)) :- prop(sched10_ncl, startTime, Y).
prop(a5_sched10_ncl, location, stop5_ncl).
prop(a5_sched10_ncl, time, add(Y,9)) :- prop(sched10_ncl, startTime, Y).
prop(a6_sched10_ncl, location, stop6_ncl).
prop(a6_sched10_ncl, time, add(Y,7)) :- prop(sched10_ncl, startTime, Y).
prop(a7_sched10_ncl, location, stop7_ncl).
prop(a7_sched10_ncl, time, add(Y,9)) :- prop(sched10_ncl, startTime, Y).
prop(a8_sched10_ncl, location, stop8_ncl).
prop(a8_sched10_ncl, time, add(Y,12)) :- prop(sched10_ncl, startTime, Y).
prop(a9_sched10_ncl, location, stop9_ncl).
prop(a9_sched10_ncl, time, add(Y,15)) :- prop(sched10_ncl, startTime, Y).
prop(a10_sched10_ncl, location, stop10_ncl).
prop(a10_sched10_ncl, time, add(Y,17)) :- prop(sched10_ncl, startTime, Y).
prop(a11_sched10_ncl, location, stop11_ncl).
prop(a11_sched10_ncl, time, add(Y,19)) :- prop(sched10_ncl, startTime, Y).
prop(a12_sched10_ncl, location, stop12_ncl).
prop(a12_sched10_ncl, time, add(Y,20)) :- prop(sched10_ncl, startTime, Y).
prop(a13_sched10_ncl, location, stop13_ncl).
prop(a13_sched10_ncl, time, add(Y,22)) :- prop(sched10_ncl, startTime, Y).
prop(a14_sched10_ncl, location, stop14_ncl).
prop(a14_sched10_ncl, time, add(Y,24)) :- prop(sched10_ncl, startTime, Y).
prop(a15_sched10_ncl, location, stop15_ncl).
prop(a15_sched10_ncl, time, add(Y,26)) :- prop(sched10_ncl, startTime, Y).

prop(a0_sched11_ncl, location, stop0_ncl).
prop(a0_sched11_ncl, time, add(Y,0)) :- prop(sched11_ncl, startTime, Y).
prop(a1_sched11_ncl, location, stop1_ncl).
prop(a1_sched11_ncl, time, add(Y,2)) :- prop(sched11_ncl, startTime, Y).
prop(a2_sched11_ncl, location, stop2_ncl).
prop(a2_sched11_ncl, time, add(Y,4)) :- prop(sched11_ncl, startTime, Y).
prop(a3_sched11_ncl, location, stop3_ncl).
prop(a3_sched11_ncl, time, add(Y,13)) :- prop(sched11_ncl, startTime, Y).
prop(a4_sched11_ncl, location, stop4_ncl).
prop(a4_sched11_ncl, time, add(Y,11)) :- prop(sched11_ncl, startTime, Y).
prop(a5_sched11_ncl, location, stop5_ncl).
prop(a5_sched11_ncl, time, add(Y,9)) :- prop(sched11_ncl, startTime, Y).
prop(a6_sched11_ncl, location, stop6_ncl).
prop(a6_sched11_ncl, time, add(Y,7)) :- prop(sched11_ncl, startTime, Y).
prop(a7_sched11_ncl, location, stop7_ncl).
prop(a7_sched11_ncl, time, add(Y,9)) :- prop(sched11_ncl, startTime, Y).
prop(a8_sched11_ncl, location, stop8_ncl).
prop(a8_sched11_ncl, time, add(Y,12)) :- prop(sched11_ncl, startTime, Y).
prop(a9_sched11_ncl, location, stop9_ncl).
prop(a9_sched11_ncl, time, add(Y,15)) :- prop(sched11_ncl, startTime, Y).
prop(a10_sched11_ncl, location, stop10_ncl).
prop(a10_sched11_ncl, time, add(Y,17)) :- prop(sched11_ncl, startTime, Y).
prop(a11_sched11_ncl, location, stop11_ncl).
prop(a11_sched11_ncl, time, add(Y,19)) :- prop(sched11_ncl, startTime, Y).
prop(a12_sched11_ncl, location, stop12_ncl).
prop(a12_sched11_ncl, time, add(Y,20)) :- prop(sched11_ncl, startTime, Y).
prop(a13_sched11_ncl, location, stop13_ncl).
prop(a13_sched11_ncl, time, add(Y,22)) :- prop(sched11_ncl, startTime, Y).
prop(a14_sched11_ncl, location, stop14_ncl).
prop(a14_sched11_ncl, time, add(Y,24)) :- prop(sched11_ncl, startTime, Y).
prop(a15_sched11_ncl, location, stop15_ncl).
prop(a15_sched11_ncl, time, add(Y,26)) :- prop(sched11_ncl, startTime, Y).

prop(a0_sched12_ncl, location, stop0_ncl).
prop(a0_sched12_ncl, time, add(Y,0)) :- prop(sched12_ncl, startTime, Y).
prop(a1_sched12_ncl, location, stop1_ncl).
prop(a1_sched12_ncl, time, add(Y,2)) :- prop(sched12_ncl, startTime, Y).
prop(a2_sched12_ncl, location, stop2_ncl).
prop(a2_sched12_ncl, time, add(Y,4)) :- prop(sched12_ncl, startTime, Y).
prop(a3_sched12_ncl, location, stop3_ncl).
prop(a3_sched12_ncl, time, add(Y,13)) :- prop(sched12_ncl, startTime, Y).
prop(a4_sched12_ncl, location, stop4_ncl).
prop(a4_sched12_ncl, time, add(Y,11)) :- prop(sched12_ncl, startTime, Y).
prop(a5_sched12_ncl, location, stop5_ncl).
prop(a5_sched12_ncl, time, add(Y,9)) :- prop(sched12_ncl, startTime, Y).
prop(a6_sched12_ncl, location, stop6_ncl).
prop(a6_sched12_ncl, time, add(Y,7)) :- prop(sched12_ncl, startTime, Y).
prop(a7_sched12_ncl, location, stop7_ncl).
prop(a7_sched12_ncl, time, add(Y,9)) :- prop(sched12_ncl, startTime, Y).
prop(a8_sched12_ncl, location, stop8_ncl).
prop(a8_sched12_ncl, time, add(Y,12)) :- prop(sched12_ncl, startTime, Y).
prop(a9_sched12_ncl, location, stop9_ncl).
prop(a9_sched12_ncl, time, add(Y,15)) :- prop(sched12_ncl, startTime, Y).
prop(a10_sched12_ncl, location, stop10_ncl).
prop(a10_sched12_ncl, time, add(Y,17)) :- prop(sched12_ncl, startTime, Y).
prop(a11_sched12_ncl, location, stop11_ncl).
prop(a11_sched12_ncl, time, add(Y,19)) :- prop(sched12_ncl, startTime, Y).
prop(a12_sched12_ncl, location, stop12_ncl).
prop(a12_sched12_ncl, time, add(Y,20)) :- prop(sched12_ncl, startTime, Y).
prop(a13_sched12_ncl, location, stop13_ncl).
prop(a13_sched12_ncl, time, add(Y,22)) :- prop(sched12_ncl, startTime, Y).
prop(a14_sched12_ncl, location, stop14_ncl).
prop(a14_sched12_ncl, time, add(Y,24)) :- prop(sched12_ncl, startTime, Y).
prop(a15_sched12_ncl, location, stop15_ncl).
prop(a15_sched12_ncl, time, add(Y,26)) :- prop(sched12_ncl, startTime, Y).

%an_sched0_scl is at stopm_scl...
prop(a0_sched0_scl, location, stop0_scl).
prop(a0_sched0_scl, time, add(Y,0)) :- prop(sched0_scl, startTime, Y).
prop(a1_sched0_scl, location, stop1_scl).
prop(a1_sched0_scl, time, add(Y,2)) :- prop(sched0_scl, startTime, Y).
prop(a2_sched0_scl, location, stop2_scl).
prop(a2_sched0_scl, time, add(Y,4)) :- prop(sched0_scl, startTime, Y).
prop(a3_sched0_scl, location, stop3_scl).
prop(a3_sched0_scl, time, add(Y,6)) :- prop(sched0_scl, startTime, Y).
prop(a4_sched0_scl, location, stop4_scl).
prop(a4_sched0_scl, time, add(Y,7)) :- prop(sched0_scl, startTime, Y).
prop(a5_sched0_scl, location, stop5_scl).
prop(a5_sched0_scl, time, add(Y,9)) :- prop(sched0_scl, startTime, Y).
prop(a6_sched0_scl, location, stop6_scl).
prop(a6_sched0_scl, time, add(Y,12)) :- prop(sched0_scl, startTime, Y).
prop(a7_sched0_scl, location, stop7_scl).
prop(a7_sched0_scl, time, add(Y,14)) :- prop(sched0_scl, startTime, Y).
prop(a8_sched0_scl, location, stop8_scl).
prop(a8_sched0_scl, time, add(Y,17)) :- prop(sched0_scl, startTime, Y).
prop(a9_sched0_scl, location, stop9_scl).
prop(a9_sched0_scl, time, add(Y,19)) :- prop(sched0_scl, startTime, Y).
prop(a10_sched0_scl, location, stop10_scl).
prop(a10_sched0_scl, time, add(Y,21)) :- prop(sched0_scl, startTime, Y).
prop(a11_sched0_scl, location, stop11_scl).
prop(a11_sched0_scl, time, add(Y,23)) :- prop(sched0_scl, startTime, Y).
prop(a12_sched0_scl, location, stop12_scl).
prop(a12_sched0_scl, time, add(Y,25)) :- prop(sched0_scl, startTime, Y).
prop(a13_sched0_scl, location, stop13_scl).
prop(a13_sched0_scl, time, add(Y,22)) :- prop(sched0_scl, startTime, Y).
prop(a14_sched0_scl, location, stop14_scl).
prop(a14_sched0_scl, time, add(Y,24)) :- prop(sched0_scl, startTime, Y).
prop(a15_sched0_scl, location, stop15_scl).
prop(a15_sched0_scl, time, add(Y,26)) :- prop(sched0_scl, startTime, Y).

prop(a0_sched1_scl, location, stop0_scl).
prop(a0_sched1_scl, time, add(Y,0)) :- prop(sched1_scl, startTime, Y).
prop(a1_sched1_scl, location, stop1_scl).
prop(a1_sched1_scl, time, add(Y,2)) :- prop(sched1_scl, startTime, Y).
prop(a2_sched1_scl, location, stop2_scl).
prop(a2_sched1_scl, time, add(Y,4)) :- prop(sched1_scl, startTime, Y).
prop(a3_sched1_scl, location, stop3_scl).
prop(a3_sched1_scl, time, add(Y,6)) :- prop(sched1_scl, startTime, Y).
prop(a4_sched1_scl, location, stop4_scl).
prop(a4_sched1_scl, time, add(Y,7)) :- prop(sched1_scl, startTime, Y).
prop(a5_sched1_scl, location, stop5_scl).
prop(a5_sched1_scl, time, add(Y,9)) :- prop(sched1_scl, startTime, Y).
prop(a6_sched1_scl, location, stop6_scl).
prop(a6_sched1_scl, time, add(Y,12)) :- prop(sched1_scl, startTime, Y).
prop(a7_sched1_scl, location, stop7_scl).
prop(a7_sched1_scl, time, add(Y,14)) :- prop(sched1_scl, startTime, Y).
prop(a8_sched1_scl, location, stop8_scl).
prop(a8_sched1_scl, time, add(Y,17)) :- prop(sched1_scl, startTime, Y).
prop(a9_sched1_scl, location, stop9_scl).
prop(a9_sched1_scl, time, add(Y,19)) :- prop(sched1_scl, startTime, Y).
prop(a10_sched1_scl, location, stop10_scl).
prop(a10_sched1_scl, time, add(Y,21)) :- prop(sched1_scl, startTime, Y).
prop(a11_sched1_scl, location, stop11_scl).
prop(a11_sched1_scl, time, add(Y,23)) :- prop(sched1_scl, startTime, Y).
prop(a12_sched1_scl, location, stop12_scl).
prop(a12_sched1_scl, time, add(Y,25)) :- prop(sched1_scl, startTime, Y).
prop(a13_sched1_scl, location, stop13_scl).
prop(a13_sched1_scl, time, add(Y,22)) :- prop(sched1_scl, startTime, Y).
prop(a14_sched1_scl, location, stop14_scl).
prop(a14_sched1_scl, time, add(Y,24)) :- prop(sched1_scl, startTime, Y).
prop(a15_sched1_scl, location, stop15_scl).
prop(a15_sched1_scl, time, add(Y,26)) :- prop(sched1_scl, startTime, Y).

prop(a0_sched2_scl, location, stop0_scl).
prop(a0_sched2_scl, time, add(Y,0)) :- prop(sched2_scl, startTime, Y).
prop(a1_sched2_scl, location, stop1_scl).
prop(a1_sched2_scl, time, add(Y,2)) :- prop(sched2_scl, startTime, Y).
prop(a2_sched2_scl, location, stop2_scl).
prop(a2_sched2_scl, time, add(Y,4)) :- prop(sched2_scl, startTime, Y).
prop(a3_sched2_scl, location, stop3_scl).
prop(a3_sched2_scl, time, add(Y,6)) :- prop(sched2_scl, startTime, Y).
prop(a4_sched2_scl, location, stop4_scl).
prop(a4_sched2_scl, time, add(Y,7)) :- prop(sched2_scl, startTime, Y).
prop(a5_sched2_scl, location, stop5_scl).
prop(a5_sched2_scl, time, add(Y,9)) :- prop(sched2_scl, startTime, Y).
prop(a6_sched2_scl, location, stop6_scl).
prop(a6_sched2_scl, time, add(Y,12)) :- prop(sched2_scl, startTime, Y).
prop(a7_sched2_scl, location, stop7_scl).
prop(a7_sched2_scl, time, add(Y,14)) :- prop(sched2_scl, startTime, Y).
prop(a8_sched2_scl, location, stop8_scl).
prop(a8_sched2_scl, time, add(Y,17)) :- prop(sched2_scl, startTime, Y).
prop(a9_sched2_scl, location, stop9_scl).
prop(a9_sched2_scl, time, add(Y,19)) :- prop(sched2_scl, startTime, Y).
prop(a10_sched2_scl, location, stop10_scl).
prop(a10_sched2_scl, time, add(Y,21)) :- prop(sched2_scl, startTime, Y).
prop(a11_sched2_scl, location, stop11_scl).
prop(a11_sched2_scl, time, add(Y,23)) :- prop(sched2_scl, startTime, Y).
prop(a12_sched2_scl, location, stop12_scl).
prop(a12_sched2_scl, time, add(Y,25)) :- prop(sched2_scl, startTime, Y).
prop(a13_sched2_scl, location, stop13_scl).
prop(a13_sched2_scl, time, add(Y,22)) :- prop(sched2_scl, startTime, Y).
prop(a14_sched2_scl, location, stop14_scl).
prop(a14_sched2_scl, time, add(Y,24)) :- prop(sched2_scl, startTime, Y).
prop(a15_sched2_scl, location, stop15_scl).
prop(a15_sched2_scl, time, add(Y,26)) :- prop(sched2_scl, startTime, Y).

prop(a0_sched3_scl, location, stop0_scl).
prop(a0_sched3_scl, time, add(Y,0)) :- prop(sched3_scl, startTime, Y).
prop(a1_sched3_scl, location, stop1_scl).
prop(a1_sched3_scl, time, add(Y,2)) :- prop(sched3_scl, startTime, Y).
prop(a2_sched3_scl, location, stop2_scl).
prop(a2_sched3_scl, time, add(Y,4)) :- prop(sched3_scl, startTime, Y).
prop(a3_sched3_scl, location, stop3_scl).
prop(a3_sched3_scl, time, add(Y,6)) :- prop(sched3_scl, startTime, Y).
prop(a4_sched3_scl, location, stop4_scl).
prop(a4_sched3_scl, time, add(Y,7)) :- prop(sched3_scl, startTime, Y).
prop(a5_sched3_scl, location, stop5_scl).
prop(a5_sched3_scl, time, add(Y,9)) :- prop(sched3_scl, startTime, Y).
prop(a6_sched3_scl, location, stop6_scl).
prop(a6_sched3_scl, time, add(Y,12)) :- prop(sched3_scl, startTime, Y).
prop(a7_sched3_scl, location, stop7_scl).
prop(a7_sched3_scl, time, add(Y,14)) :- prop(sched3_scl, startTime, Y).
prop(a8_sched3_scl, location, stop8_scl).
prop(a8_sched3_scl, time, add(Y,17)) :- prop(sched3_scl, startTime, Y).
prop(a9_sched3_scl, location, stop9_scl).
prop(a9_sched3_scl, time, add(Y,19)) :- prop(sched3_scl, startTime, Y).
prop(a10_sched3_scl, location, stop10_scl).
prop(a10_sched3_scl, time, add(Y,21)) :- prop(sched3_scl, startTime, Y).
prop(a11_sched3_scl, location, stop11_scl).
prop(a11_sched3_scl, time, add(Y,23)) :- prop(sched3_scl, startTime, Y).
prop(a12_sched3_scl, location, stop12_scl).
prop(a12_sched3_scl, time, add(Y,25)) :- prop(sched3_scl, startTime, Y).
prop(a13_sched3_scl, location, stop13_scl).
prop(a13_sched3_scl, time, add(Y,22)) :- prop(sched3_scl, startTime, Y).
prop(a14_sched3_scl, location, stop14_scl).
prop(a14_sched3_scl, time, add(Y,24)) :- prop(sched3_scl, startTime, Y).
prop(a15_sched3_scl, location, stop15_scl).
prop(a15_sched3_scl, time, add(Y,26)) :- prop(sched3_scl, startTime, Y).

prop(a0_sched4_scl, location, stop0_scl).
prop(a0_sched4_scl, time, add(Y,0)) :- prop(sched4_scl, startTime, Y).
prop(a1_sched4_scl, location, stop1_scl).
prop(a1_sched4_scl, time, add(Y,2)) :- prop(sched4_scl, startTime, Y).
prop(a2_sched4_scl, location, stop2_scl).
prop(a2_sched4_scl, time, add(Y,4)) :- prop(sched4_scl, startTime, Y).
prop(a3_sched4_scl, location, stop3_scl).
prop(a3_sched4_scl, time, add(Y,6)) :- prop(sched4_scl, startTime, Y).
prop(a4_sched4_scl, location, stop4_scl).
prop(a4_sched4_scl, time, add(Y,7)) :- prop(sched4_scl, startTime, Y).
prop(a5_sched4_scl, location, stop5_scl).
prop(a5_sched4_scl, time, add(Y,9)) :- prop(sched4_scl, startTime, Y).
prop(a6_sched4_scl, location, stop6_scl).
prop(a6_sched4_scl, time, add(Y,12)) :- prop(sched4_scl, startTime, Y).
prop(a7_sched4_scl, location, stop7_scl).
prop(a7_sched4_scl, time, add(Y,14)) :- prop(sched4_scl, startTime, Y).
prop(a8_sched4_scl, location, stop8_scl).
prop(a8_sched4_scl, time, add(Y,17)) :- prop(sched4_scl, startTime, Y).
prop(a9_sched4_scl, location, stop9_scl).
prop(a9_sched4_scl, time, add(Y,19)) :- prop(sched4_scl, startTime, Y).
prop(a10_sched4_scl, location, stop10_scl).
prop(a10_sched4_scl, time, add(Y,21)) :- prop(sched4_scl, startTime, Y).
prop(a11_sched4_scl, location, stop11_scl).
prop(a11_sched4_scl, time, add(Y,23)) :- prop(sched4_scl, startTime, Y).
prop(a12_sched4_scl, location, stop12_scl).
prop(a12_sched4_scl, time, add(Y,25)) :- prop(sched4_scl, startTime, Y).
prop(a13_sched4_scl, location, stop13_scl).
prop(a13_sched4_scl, time, add(Y,22)) :- prop(sched4_scl, startTime, Y).
prop(a14_sched4_scl, location, stop14_scl).
prop(a14_sched4_scl, time, add(Y,24)) :- prop(sched4_scl, startTime, Y).
prop(a15_sched4_scl, location, stop15_scl).
prop(a15_sched4_scl, time, add(Y,26)) :- prop(sched4_scl, startTime, Y).

prop(a0_sched5_scl, location, stop0_scl).
prop(a0_sched5_scl, time, add(Y,0)) :- prop(sched5_scl, startTime, Y).
prop(a1_sched5_scl, location, stop1_scl).
prop(a1_sched5_scl, time, add(Y,2)) :- prop(sched5_scl, startTime, Y).
prop(a2_sched5_scl, location, stop2_scl).
prop(a2_sched5_scl, time, add(Y,4)) :- prop(sched5_scl, startTime, Y).
prop(a3_sched5_scl, location, stop3_scl).
prop(a3_sched5_scl, time, add(Y,6)) :- prop(sched5_scl, startTime, Y).
prop(a4_sched5_scl, location, stop4_scl).
prop(a4_sched5_scl, time, add(Y,7)) :- prop(sched5_scl, startTime, Y).
prop(a5_sched5_scl, location, stop5_scl).
prop(a5_sched5_scl, time, add(Y,9)) :- prop(sched5_scl, startTime, Y).
prop(a6_sched5_scl, location, stop6_scl).
prop(a6_sched5_scl, time, add(Y,12)) :- prop(sched5_scl, startTime, Y).
prop(a7_sched5_scl, location, stop7_scl).
prop(a7_sched5_scl, time, add(Y,14)) :- prop(sched5_scl, startTime, Y).
prop(a8_sched5_scl, location, stop8_scl).
prop(a8_sched5_scl, time, add(Y,17)) :- prop(sched5_scl, startTime, Y).
prop(a9_sched5_scl, location, stop9_scl).
prop(a9_sched5_scl, time, add(Y,19)) :- prop(sched5_scl, startTime, Y).
prop(a10_sched5_scl, location, stop10_scl).
prop(a10_sched5_scl, time, add(Y,21)) :- prop(sched5_scl, startTime, Y).
prop(a11_sched5_scl, location, stop11_scl).
prop(a11_sched5_scl, time, add(Y,23)) :- prop(sched5_scl, startTime, Y).
prop(a12_sched5_scl, location, stop12_scl).
prop(a12_sched5_scl, time, add(Y,25)) :- prop(sched5_scl, startTime, Y).
prop(a13_sched5_scl, location, stop13_scl).
prop(a13_sched5_scl, time, add(Y,22)) :- prop(sched5_scl, startTime, Y).
prop(a14_sched5_scl, location, stop14_scl).
prop(a14_sched5_scl, time, add(Y,24)) :- prop(sched5_scl, startTime, Y).
prop(a15_sched5_scl, location, stop15_scl).
prop(a15_sched5_scl, time, add(Y,26)) :- prop(sched5_scl, startTime, Y).

prop(a0_sched6_scl, location, stop0_scl).
prop(a0_sched6_scl, time, add(Y,0)) :- prop(sched6_scl, startTime, Y).
prop(a1_sched6_scl, location, stop1_scl).
prop(a1_sched6_scl, time, add(Y,2)) :- prop(sched6_scl, startTime, Y).
prop(a2_sched6_scl, location, stop2_scl).
prop(a2_sched6_scl, time, add(Y,4)) :- prop(sched6_scl, startTime, Y).
prop(a3_sched6_scl, location, stop3_scl).
prop(a3_sched6_scl, time, add(Y,6)) :- prop(sched6_scl, startTime, Y).
prop(a4_sched6_scl, location, stop4_scl).
prop(a4_sched6_scl, time, add(Y,7)) :- prop(sched6_scl, startTime, Y).
prop(a5_sched6_scl, location, stop5_scl).
prop(a5_sched6_scl, time, add(Y,9)) :- prop(sched6_scl, startTime, Y).
prop(a6_sched6_scl, location, stop6_scl).
prop(a6_sched6_scl, time, add(Y,12)) :- prop(sched6_scl, startTime, Y).
prop(a7_sched6_scl, location, stop7_scl).
prop(a7_sched6_scl, time, add(Y,14)) :- prop(sched6_scl, startTime, Y).
prop(a8_sched6_scl, location, stop8_scl).
prop(a8_sched6_scl, time, add(Y,17)) :- prop(sched6_scl, startTime, Y).
prop(a9_sched6_scl, location, stop9_scl).
prop(a9_sched6_scl, time, add(Y,19)) :- prop(sched6_scl, startTime, Y).
prop(a10_sched6_scl, location, stop10_scl).
prop(a10_sched6_scl, time, add(Y,21)) :- prop(sched6_scl, startTime, Y).
prop(a11_sched6_scl, location, stop11_scl).
prop(a11_sched6_scl, time, add(Y,23)) :- prop(sched6_scl, startTime, Y).
prop(a12_sched6_scl, location, stop12_scl).
prop(a12_sched6_scl, time, add(Y,25)) :- prop(sched6_scl, startTime, Y).
prop(a13_sched6_scl, location, stop13_scl).
prop(a13_sched6_scl, time, add(Y,22)) :- prop(sched6_scl, startTime, Y).
prop(a14_sched6_scl, location, stop14_scl).
prop(a14_sched6_scl, time, add(Y,24)) :- prop(sched6_scl, startTime, Y).
prop(a15_sched6_scl, location, stop15_scl).
prop(a15_sched6_scl, time, add(Y,26)) :- prop(sched6_scl, startTime, Y).

prop(a0_sched7_scl, location, stop0_scl).
prop(a0_sched7_scl, time, add(Y,0)) :- prop(sched7_scl, startTime, Y).
prop(a1_sched7_scl, location, stop1_scl).
prop(a1_sched7_scl, time, add(Y,2)) :- prop(sched7_scl, startTime, Y).
prop(a2_sched7_scl, location, stop2_scl).
prop(a2_sched7_scl, time, add(Y,4)) :- prop(sched7_scl, startTime, Y).
prop(a3_sched7_scl, location, stop3_scl).
prop(a3_sched7_scl, time, add(Y,6)) :- prop(sched7_scl, startTime, Y).
prop(a4_sched7_scl, location, stop4_scl).
prop(a4_sched7_scl, time, add(Y,7)) :- prop(sched7_scl, startTime, Y).
prop(a5_sched7_scl, location, stop5_scl).
prop(a5_sched7_scl, time, add(Y,9)) :- prop(sched7_scl, startTime, Y).
prop(a6_sched7_scl, location, stop6_scl).
prop(a6_sched7_scl, time, add(Y,12)) :- prop(sched7_scl, startTime, Y).
prop(a7_sched7_scl, location, stop7_scl).
prop(a7_sched7_scl, time, add(Y,14)) :- prop(sched7_scl, startTime, Y).
prop(a8_sched7_scl, location, stop8_scl).
prop(a8_sched7_scl, time, add(Y,17)) :- prop(sched7_scl, startTime, Y).
prop(a9_sched7_scl, location, stop9_scl).
prop(a9_sched7_scl, time, add(Y,19)) :- prop(sched7_scl, startTime, Y).
prop(a10_sched7_scl, location, stop10_scl).
prop(a10_sched7_scl, time, add(Y,21)) :- prop(sched7_scl, startTime, Y).
prop(a11_sched7_scl, location, stop11_scl).
prop(a11_sched7_scl, time, add(Y,23)) :- prop(sched7_scl, startTime, Y).
prop(a12_sched7_scl, location, stop12_scl).
prop(a12_sched7_scl, time, add(Y,25)) :- prop(sched7_scl, startTime, Y).
prop(a13_sched7_scl, location, stop13_scl).
prop(a13_sched7_scl, time, add(Y,22)) :- prop(sched7_scl, startTime, Y).
prop(a14_sched7_scl, location, stop14_scl).
prop(a14_sched7_scl, time, add(Y,24)) :- prop(sched7_scl, startTime, Y).
prop(a15_sched7_scl, location, stop15_scl).
prop(a15_sched7_scl, time, add(Y,26)) :- prop(sched7_scl, startTime, Y).

prop(a0_sched8_scl, location, stop0_scl).
prop(a0_sched8_scl, time, add(Y,0)) :- prop(sched8_scl, startTime, Y).
prop(a1_sched8_scl, location, stop1_scl).
prop(a1_sched8_scl, time, add(Y,2)) :- prop(sched8_scl, startTime, Y).
prop(a2_sched8_scl, location, stop2_scl).
prop(a2_sched8_scl, time, add(Y,4)) :- prop(sched8_scl, startTime, Y).
prop(a3_sched8_scl, location, stop3_scl).
prop(a3_sched8_scl, time, add(Y,6)) :- prop(sched8_scl, startTime, Y).
prop(a4_sched8_scl, location, stop4_scl).
prop(a4_sched8_scl, time, add(Y,7)) :- prop(sched8_scl, startTime, Y).
prop(a5_sched8_scl, location, stop5_scl).
prop(a5_sched8_scl, time, add(Y,9)) :- prop(sched8_scl, startTime, Y).
prop(a6_sched8_scl, location, stop6_scl).
prop(a6_sched8_scl, time, add(Y,12)) :- prop(sched8_scl, startTime, Y).
prop(a7_sched8_scl, location, stop7_scl).
prop(a7_sched8_scl, time, add(Y,14)) :- prop(sched8_scl, startTime, Y).
prop(a8_sched8_scl, location, stop8_scl).
prop(a8_sched8_scl, time, add(Y,17)) :- prop(sched8_scl, startTime, Y).
prop(a9_sched8_scl, location, stop9_scl).
prop(a9_sched8_scl, time, add(Y,19)) :- prop(sched8_scl, startTime, Y).
prop(a10_sched8_scl, location, stop10_scl).
prop(a10_sched8_scl, time, add(Y,21)) :- prop(sched8_scl, startTime, Y).
prop(a11_sched8_scl, location, stop11_scl).
prop(a11_sched8_scl, time, add(Y,23)) :- prop(sched8_scl, startTime, Y).
prop(a12_sched8_scl, location, stop12_scl).
prop(a12_sched8_scl, time, add(Y,25)) :- prop(sched8_scl, startTime, Y).
prop(a13_sched8_scl, location, stop13_scl).
prop(a13_sched8_scl, time, add(Y,22)) :- prop(sched8_scl, startTime, Y).
prop(a14_sched8_scl, location, stop14_scl).
prop(a14_sched8_scl, time, add(Y,24)) :- prop(sched8_scl, startTime, Y).
prop(a15_sched8_scl, location, stop15_scl).
prop(a15_sched8_scl, time, add(Y,26)) :- prop(sched8_scl, startTime, Y).

prop(a0_sched9_scl, location, stop0_scl).
prop(a0_sched9_scl, time, add(Y,0)) :- prop(sched9_scl, startTime, Y).
prop(a1_sched9_scl, location, stop1_scl).
prop(a1_sched9_scl, time, add(Y,2)) :- prop(sched9_scl, startTime, Y).
prop(a2_sched9_scl, location, stop2_scl).
prop(a2_sched9_scl, time, add(Y,4)) :- prop(sched9_scl, startTime, Y).
prop(a3_sched9_scl, location, stop3_scl).
prop(a3_sched9_scl, time, add(Y,6)) :- prop(sched9_scl, startTime, Y).
prop(a4_sched9_scl, location, stop4_scl).
prop(a4_sched9_scl, time, add(Y,7)) :- prop(sched9_scl, startTime, Y).
prop(a5_sched9_scl, location, stop5_scl).
prop(a5_sched9_scl, time, add(Y,9)) :- prop(sched9_scl, startTime, Y).
prop(a6_sched9_scl, location, stop6_scl).
prop(a6_sched9_scl, time, add(Y,12)) :- prop(sched9_scl, startTime, Y).
prop(a7_sched9_scl, location, stop7_scl).
prop(a7_sched9_scl, time, add(Y,14)) :- prop(sched9_scl, startTime, Y).
prop(a8_sched9_scl, location, stop8_scl).
prop(a8_sched9_scl, time, add(Y,17)) :- prop(sched9_scl, startTime, Y).
prop(a9_sched9_scl, location, stop9_scl).
prop(a9_sched9_scl, time, add(Y,19)) :- prop(sched9_scl, startTime, Y).
prop(a10_sched9_scl, location, stop10_scl).
prop(a10_sched9_scl, time, add(Y,21)) :- prop(sched9_scl, startTime, Y).
prop(a11_sched9_scl, location, stop11_scl).
prop(a11_sched9_scl, time, add(Y,23)) :- prop(sched9_scl, startTime, Y).
prop(a12_sched9_scl, location, stop12_scl).
prop(a12_sched9_scl, time, add(Y,25)) :- prop(sched9_scl, startTime, Y).
prop(a13_sched9_scl, location, stop13_scl).
prop(a13_sched9_scl, time, add(Y,22)) :- prop(sched9_scl, startTime, Y).
prop(a14_sched9_scl, location, stop14_scl).
prop(a14_sched9_scl, time, add(Y,24)) :- prop(sched9_scl, startTime, Y).
prop(a15_sched9_scl, location, stop15_scl).
prop(a15_sched9_scl, time, add(Y,26)) :- prop(sched9_scl, startTime, Y).

prop(a0_sched10_scl, location, stop0_scl).
prop(a0_sched10_scl, time, add(Y,0)) :- prop(sched10_scl, startTime, Y).
prop(a1_sched10_scl, location, stop1_scl).
prop(a1_sched10_scl, time, add(Y,2)) :- prop(sched10_scl, startTime, Y).
prop(a2_sched10_scl, location, stop2_scl).
prop(a2_sched10_scl, time, add(Y,4)) :- prop(sched10_scl, startTime, Y).
prop(a3_sched10_scl, location, stop3_scl).
prop(a3_sched10_scl, time, add(Y,6)) :- prop(sched10_scl, startTime, Y).
prop(a4_sched10_scl, location, stop4_scl).
prop(a4_sched10_scl, time, add(Y,7)) :- prop(sched10_scl, startTime, Y).
prop(a5_sched10_scl, location, stop5_scl).
prop(a5_sched10_scl, time, add(Y,9)) :- prop(sched10_scl, startTime, Y).
prop(a6_sched10_scl, location, stop6_scl).
prop(a6_sched10_scl, time, add(Y,12)) :- prop(sched10_scl, startTime, Y).
prop(a7_sched10_scl, location, stop7_scl).
prop(a7_sched10_scl, time, add(Y,14)) :- prop(sched10_scl, startTime, Y).
prop(a8_sched10_scl, location, stop8_scl).
prop(a8_sched10_scl, time, add(Y,17)) :- prop(sched10_scl, startTime, Y).
prop(a9_sched10_scl, location, stop9_scl).
prop(a9_sched10_scl, time, add(Y,19)) :- prop(sched10_scl, startTime, Y).
prop(a10_sched10_scl, location, stop10_scl).
prop(a10_sched10_scl, time, add(Y,21)) :- prop(sched10_scl, startTime, Y).
prop(a11_sched10_scl, location, stop11_scl).
prop(a11_sched10_scl, time, add(Y,23)) :- prop(sched10_scl, startTime, Y).
prop(a12_sched10_scl, location, stop12_scl).
prop(a12_sched10_scl, time, add(Y,25)) :- prop(sched10_scl, startTime, Y).
prop(a13_sched10_scl, location, stop13_scl).
prop(a13_sched10_scl, time, add(Y,22)) :- prop(sched10_scl, startTime, Y).
prop(a14_sched10_scl, location, stop14_scl).
prop(a14_sched10_scl, time, add(Y,24)) :- prop(sched10_scl, startTime, Y).
prop(a15_sched10_scl, location, stop15_scl).
prop(a15_sched10_scl, time, add(Y,26)) :- prop(sched10_scl, startTime, Y).

prop(a0_sched11_scl, location, stop0_scl).
prop(a0_sched11_scl, time, add(Y,0)) :- prop(sched11_scl, startTime, Y).
prop(a1_sched11_scl, location, stop1_scl).
prop(a1_sched11_scl, time, add(Y,2)) :- prop(sched11_scl, startTime, Y).
prop(a2_sched11_scl, location, stop2_scl).
prop(a2_sched11_scl, time, add(Y,4)) :- prop(sched11_scl, startTime, Y).
prop(a3_sched11_scl, location, stop3_scl).
prop(a3_sched11_scl, time, add(Y,6)) :- prop(sched11_scl, startTime, Y).
prop(a4_sched11_scl, location, stop4_scl).
prop(a4_sched11_scl, time, add(Y,7)) :- prop(sched11_scl, startTime, Y).
prop(a5_sched11_scl, location, stop5_scl).
prop(a5_sched11_scl, time, add(Y,9)) :- prop(sched11_scl, startTime, Y).
prop(a6_sched11_scl, location, stop6_scl).
prop(a6_sched11_scl, time, add(Y,12)) :- prop(sched11_scl, startTime, Y).
prop(a7_sched11_scl, location, stop7_scl).
prop(a7_sched11_scl, time, add(Y,14)) :- prop(sched11_scl, startTime, Y).
prop(a8_sched11_scl, location, stop8_scl).
prop(a8_sched11_scl, time, add(Y,17)) :- prop(sched11_scl, startTime, Y).
prop(a9_sched11_scl, location, stop9_scl).
prop(a9_sched11_scl, time, add(Y,19)) :- prop(sched11_scl, startTime, Y).
prop(a10_sched11_scl, location, stop10_scl).
prop(a10_sched11_scl, time, add(Y,21)) :- prop(sched11_scl, startTime, Y).
prop(a11_sched11_scl, location, stop11_scl).
prop(a11_sched11_scl, time, add(Y,23)) :- prop(sched11_scl, startTime, Y).
prop(a12_sched11_scl, location, stop12_scl).
prop(a12_sched11_scl, time, add(Y,25)) :- prop(sched11_scl, startTime, Y).
prop(a13_sched11_scl, location, stop13_scl).
prop(a13_sched11_scl, time, add(Y,22)) :- prop(sched11_scl, startTime, Y).
prop(a14_sched11_scl, location, stop14_scl).
prop(a14_sched11_scl, time, add(Y,24)) :- prop(sched11_scl, startTime, Y).
prop(a15_sched11_scl, location, stop15_scl).
prop(a15_sched11_scl, time, add(Y,26)) :- prop(sched11_scl, startTime, Y).

prop(a0_sched12_scl, location, stop0_scl).
prop(a0_sched12_scl, time, add(Y,0)) :- prop(sched12_scl, startTime, Y).
prop(a1_sched12_scl, location, stop1_scl).
prop(a1_sched12_scl, time, add(Y,2)) :- prop(sched12_scl, startTime, Y).
prop(a2_sched12_scl, location, stop2_scl).
prop(a2_sched12_scl, time, add(Y,4)) :- prop(sched12_scl, startTime, Y).
prop(a3_sched12_scl, location, stop3_scl).
prop(a3_sched12_scl, time, add(Y,6)) :- prop(sched12_scl, startTime, Y).
prop(a4_sched12_scl, location, stop4_scl).
prop(a4_sched12_scl, time, add(Y,7)) :- prop(sched12_scl, startTime, Y).
prop(a5_sched12_scl, location, stop5_scl).
prop(a5_sched12_scl, time, add(Y,9)) :- prop(sched12_scl, startTime, Y).
prop(a6_sched12_scl, location, stop6_scl).
prop(a6_sched12_scl, time, add(Y,12)) :- prop(sched12_scl, startTime, Y).
prop(a7_sched12_scl, location, stop7_scl).
prop(a7_sched12_scl, time, add(Y,14)) :- prop(sched12_scl, startTime, Y).
prop(a8_sched12_scl, location, stop8_scl).
prop(a8_sched12_scl, time, add(Y,17)) :- prop(sched12_scl, startTime, Y).
prop(a9_sched12_scl, location, stop9_scl).
prop(a9_sched12_scl, time, add(Y,19)) :- prop(sched12_scl, startTime, Y).
prop(a10_sched12_scl, location, stop10_scl).
prop(a10_sched12_scl, time, add(Y,21)) :- prop(sched12_scl, startTime, Y).
prop(a11_sched12_scl, location, stop11_scl).
prop(a11_sched12_scl, time, add(Y,23)) :- prop(sched12_scl, startTime, Y).
prop(a12_sched12_scl, location, stop12_scl).
prop(a12_sched12_scl, time, add(Y,25)) :- prop(sched12_scl, startTime, Y).
prop(a13_sched12_scl, location, stop13_scl).
prop(a13_sched12_scl, time, add(Y,22)) :- prop(sched12_scl, startTime, Y).
prop(a14_sched12_scl, location, stop14_scl).
prop(a14_sched12_scl, time, add(Y,24)) :- prop(sched12_scl, startTime, Y).
prop(a15_sched12_scl, location, stop15_scl).
prop(a15_sched12_scl, time, add(Y,26)) :- prop(sched12_scl, startTime, Y).

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
prop(stop0_w16, location, loc(29_ave_station,29_ave_station)).
prop(stop1_w16, location, loc(renfrew,broadway)).
prop(stop2_w16, location, loc(hastings,commercial_dr)).
prop(stop3_w16, location, loc(hastings,homer_st)).
prop(stop4_w16, location, loc(granville_st,broadway)).
prop(stop5_w16, location, loc(west_boulevard,41st_ave)).
prop(stop6_w16, location, loc(63_ave_loop,63_ave_loop)).

%stopn_e16 is at x...
prop(stop0_e16, location, loc(63_ave_loop,63_ave_loop)).
prop(stop1_e16, location, loc(west_boulevard,41st_ave)).
prop(stop2_e16, location, loc(granville_st,broadway)).
prop(stop3_e16, location, loc(hastings,homer_st)).
prop(stop4_e16, location, loc(hastings,commercial_dr)).
prop(stop5_e16, location, loc(renfrew,broadway)).
prop(stop6_e16, location, loc(29_ave_station,29_ave_station)).

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
prop(a0_sched0_w16, time, add(Y,0)) :- prop(sched0_w16, startTime, Y).
prop(a1_sched0_w16, location, stop1_w16).
prop(a1_sched0_w16, time, add(Y,10)) :- prop(sched0_w16, startTime, Y).
prop(a2_sched0_w16, location, stop2_w16).
prop(a2_sched0_w16, time, add(Y,28)) :- prop(sched0_w16, startTime, Y).
prop(a3_sched0_w16, location, stop3_w16).
prop(a3_sched0_w16, time, add(Y,43)) :- prop(sched0_w16, startTime, Y).
prop(a4_sched0_w16, location, stop4_w16).
prop(a4_sched0_w16, time, add(Y,59)) :- prop(sched0_w16, startTime, Y).
prop(a5_sched0_w16, location, stop5_w16).
prop(a5_sched0_w16, time, add(Y,77)) :- prop(sched0_w16, startTime, Y).
prop(a6_sched0_w16, location, stop6_w16).
prop(a6_sched0_w16, time, add(Y,86)) :- prop(sched0_w16, startTime, Y).

%an_sched1_w16 is at stopm_w16...
prop(a0_sched1_w16, location, stop0_w16).
prop(a0_sched1_w16, time, add(Y,0)) :- prop(sched1_w16, startTime, Y).
prop(a1_sched1_w16, location, stop1_w16).
prop(a1_sched1_w16, time, add(Y,10)) :- prop(sched1_w16, startTime, Y).
prop(a2_sched1_w16, location, stop2_w16).
prop(a2_sched1_w16, time, add(Y,28)) :- prop(sched1_w16, startTime, Y).
prop(a3_sched1_w16, location, stop3_w16).
prop(a3_sched1_w16, time, add(Y,43)) :- prop(sched1_w16, startTime, Y).
prop(a4_sched1_w16, location, stop4_w16).
prop(a4_sched1_w16, time, add(Y,59)) :- prop(sched1_w16, startTime, Y).
prop(a5_sched1_w16, location, stop5_w16).
prop(a5_sched1_w16, time, add(Y,77)) :- prop(sched1_w16, startTime, Y).
prop(a6_sched1_w16, location, stop6_w16).
prop(a6_sched1_w16, time, add(Y,86)) :- prop(sched1_w16, startTime, Y).

%an_sched2_w16 is at stopm_w16...
prop(a0_sched2_w16, location, stop0_w16).
prop(a0_sched2_w16, time, add(Y,0)) :- prop(sched2_w16, startTime, Y).
prop(a1_sched2_w16, location, stop1_w16).
prop(a1_sched2_w16, time, add(Y,10)) :- prop(sched2_w16, startTime, Y).
prop(a2_sched2_w16, location, stop2_w16).
prop(a2_sched2_w16, time, add(Y,28)) :- prop(sched2_w16, startTime, Y).
prop(a3_sched2_w16, location, stop3_w16).
prop(a3_sched2_w16, time, add(Y,43)) :- prop(sched2_w16, startTime, Y).
prop(a4_sched2_w16, location, stop4_w16).
prop(a4_sched2_w16, time, add(Y,59)) :- prop(sched2_w16, startTime, Y).
prop(a5_sched2_w16, location, stop5_w16).
prop(a5_sched2_w16, time, add(Y,77)) :- prop(sched2_w16, startTime, Y).
prop(a6_sched2_w16, location, stop6_w16).
prop(a6_sched2_w16, time, add(Y,86)) :- prop(sched2_w16, startTime, Y).

%an_sched3_w16 is at stopm_w16...
prop(a0_sched3_w16, location, stop0_w16).
prop(a0_sched3_w16, time, add(Y,0)) :- prop(sched3_w16, startTime, Y).
prop(a1_sched3_w16, location, stop1_w16).
prop(a1_sched3_w16, time, add(Y,10)) :- prop(sched3_w16, startTime, Y).
prop(a2_sched3_w16, location, stop2_w16).
prop(a2_sched3_w16, time, add(Y,28)) :- prop(sched3_w16, startTime, Y).
prop(a3_sched3_w16, location, stop3_w16).
prop(a3_sched3_w16, time, add(Y,43)) :- prop(sched3_w16, startTime, Y).
prop(a4_sched3_w16, location, stop4_w16).
prop(a4_sched3_w16, time, add(Y,59)) :- prop(sched3_w16, startTime, Y).
prop(a5_sched3_w16, location, stop5_w16).
prop(a5_sched3_w16, time, add(Y,77)) :- prop(sched3_w16, startTime, Y).
prop(a6_sched3_w16, location, stop6_w16).
prop(a6_sched3_w16, time, add(Y,86)) :- prop(sched3_w16, startTime, Y).

%an_sched4_w16 is at stopm_w16...
prop(a0_sched4_w16, location, stop0_w16).
prop(a0_sched4_w16, time, add(Y,0)) :- prop(sched4_w16, startTime, Y).
prop(a1_sched4_w16, location, stop1_w16).
prop(a1_sched4_w16, time, add(Y,10)) :- prop(sched4_w16, startTime, Y).
prop(a2_sched4_w16, location, stop2_w16).
prop(a2_sched4_w16, time, add(Y,28)) :- prop(sched4_w16, startTime, Y).
prop(a3_sched4_w16, location, stop3_w16).
prop(a3_sched4_w16, time, add(Y,43)) :- prop(sched4_w16, startTime, Y).
prop(a4_sched4_w16, location, stop4_w16).
prop(a4_sched4_w16, time, add(Y,59)) :- prop(sched4_w16, startTime, Y).
prop(a5_sched4_w16, location, stop5_w16).
prop(a5_sched4_w16, time, add(Y,77)) :- prop(sched4_w16, startTime, Y).
prop(a6_sched4_w16, location, stop6_w16).
prop(a6_sched4_w16, time, add(Y,86)) :- prop(sched4_w16, startTime, Y).

%an_sched5_w16 is at stopm_w16...
prop(a0_sched5_w16, location, stop0_w16).
prop(a0_sched5_w16, time, add(Y,0)) :- prop(sched5_w16, startTime, Y).
prop(a1_sched5_w16, location, stop1_w16).
prop(a1_sched5_w16, time, add(Y,10)) :- prop(sched5_w16, startTime, Y).
prop(a2_sched5_w16, location, stop2_w16).
prop(a2_sched5_w16, time, add(Y,28)) :- prop(sched5_w16, startTime, Y).
prop(a3_sched5_w16, location, stop3_w16).
prop(a3_sched5_w16, time, add(Y,43)) :- prop(sched5_w16, startTime, Y).
prop(a4_sched5_w16, location, stop4_w16).
prop(a4_sched5_w16, time, add(Y,59)) :- prop(sched5_w16, startTime, Y).
prop(a5_sched5_w16, location, stop5_w16).
prop(a5_sched5_w16, time, add(Y,77)) :- prop(sched5_w16, startTime, Y).
prop(a6_sched5_w16, location, stop6_w16).
prop(a6_sched5_w16, time, add(Y,86)) :- prop(sched5_w16, startTime, Y).

%an_sched6_w16 is at stopm_w16...
prop(a0_sched6_w16, location, stop0_w16).
prop(a0_sched6_w16, time, add(Y,0)) :- prop(sched6_w16, startTime, Y).
prop(a1_sched6_w16, location, stop1_w16).
prop(a1_sched6_w16, time, add(Y,10)) :- prop(sched6_w16, startTime, Y).
prop(a2_sched6_w16, location, stop2_w16).
prop(a2_sched6_w16, time, add(Y,28)) :- prop(sched6_w16, startTime, Y).
prop(a3_sched6_w16, location, stop3_w16).
prop(a3_sched6_w16, time, add(Y,43)) :- prop(sched6_w16, startTime, Y).
prop(a4_sched6_w16, location, stop4_w16).
prop(a4_sched6_w16, time, add(Y,59)) :- prop(sched6_w16, startTime, Y).
prop(a5_sched6_w16, location, stop5_w16).
prop(a5_sched6_w16, time, add(Y,77)) :- prop(sched6_w16, startTime, Y).
prop(a6_sched6_w16, location, stop6_w16).
prop(a6_sched6_w16, time, add(Y,86)) :- prop(sched6_w16, startTime, Y).

%an_sched7_w16 is at stopm_w16...
prop(a0_sched7_w16, location, stop0_w16).
prop(a0_sched7_w16, time, add(Y,0)) :- prop(sched7_w16, startTime, Y).
prop(a1_sched7_w16, location, stop1_w16).
prop(a1_sched7_w16, time, add(Y,10)) :- prop(sched7_w16, startTime, Y).
prop(a2_sched7_w16, location, stop2_w16).
prop(a2_sched7_w16, time, add(Y,28)) :- prop(sched7_w16, startTime, Y).
prop(a3_sched7_w16, location, stop3_w16).
prop(a3_sched7_w16, time, add(Y,43)) :- prop(sched7_w16, startTime, Y).
prop(a4_sched7_w16, location, stop4_w16).
prop(a4_sched7_w16, time, add(Y,59)) :- prop(sched7_w16, startTime, Y).
prop(a5_sched7_w16, location, stop5_w16).
prop(a5_sched7_w16, time, add(Y,77)) :- prop(sched7_w16, startTime, Y).
prop(a6_sched7_w16, location, stop6_w16).
prop(a6_sched7_w16, time, add(Y,86)) :- prop(sched7_w16, startTime, Y).

%an_sched8_w16 is at stopm_w16...
prop(a0_sched8_w16, location, stop0_w16).
prop(a0_sched8_w16, time, add(Y,0)) :- prop(sched8_w16, startTime, Y).
prop(a1_sched8_w16, location, stop1_w16).
prop(a1_sched8_w16, time, add(Y,10)) :- prop(sched8_w16, startTime, Y).
prop(a2_sched8_w16, location, stop2_w16).
prop(a2_sched8_w16, time, add(Y,28)) :- prop(sched8_w16, startTime, Y).
prop(a3_sched8_w16, location, stop3_w16).
prop(a3_sched8_w16, time, add(Y,43)) :- prop(sched8_w16, startTime, Y).
prop(a4_sched8_w16, location, stop4_w16).
prop(a4_sched8_w16, time, add(Y,59)) :- prop(sched8_w16, startTime, Y).
prop(a5_sched8_w16, location, stop5_w16).
prop(a5_sched8_w16, time, add(Y,77)) :- prop(sched8_w16, startTime, Y).
prop(a6_sched8_w16, location, stop6_w16).
prop(a6_sched8_w16, time, add(Y,86)) :- prop(sched8_w16, startTime, Y).

%an_sched9_w16 is at stopm_w16...
prop(a0_sched9_w16, location, stop0_w16).
prop(a0_sched9_w16, time, add(Y,0)) :- prop(sched9_w16, startTime, Y).
prop(a1_sched9_w16, location, stop1_w16).
prop(a1_sched9_w16, time, add(Y,10)) :- prop(sched9_w16, startTime, Y).
prop(a2_sched9_w16, location, stop2_w16).
prop(a2_sched9_w16, time, add(Y,28)) :- prop(sched9_w16, startTime, Y).
prop(a3_sched9_w16, location, stop3_w16).
prop(a3_sched9_w16, time, add(Y,43)) :- prop(sched9_w16, startTime, Y).
prop(a4_sched9_w16, location, stop4_w16).
prop(a4_sched9_w16, time, add(Y,59)) :- prop(sched9_w16, startTime, Y).
prop(a5_sched9_w16, location, stop5_w16).
prop(a5_sched9_w16, time, add(Y,77)) :- prop(sched9_w16, startTime, Y).
prop(a6_sched9_w16, location, stop6_w16).
prop(a6_sched9_w16, time, add(Y,86)) :- prop(sched9_w16, startTime, Y).

%an_sched10_w16 is at stopm_w16...
prop(a0_sched10_w16, location, stop0_w16).
prop(a0_sched10_w16, time, add(Y,0)) :- prop(sched10_w16, startTime, Y).
prop(a1_sched10_w16, location, stop1_w16).
prop(a1_sched10_w16, time, add(Y,10)) :- prop(sched10_w16, startTime, Y).
prop(a2_sched10_w16, location, stop2_w16).
prop(a2_sched10_w16, time, add(Y,28)) :- prop(sched10_w16, startTime, Y).
prop(a3_sched10_w16, location, stop3_w16).
prop(a3_sched10_w16, time, add(Y,43)) :- prop(sched10_w16, startTime, Y).
prop(a4_sched10_w16, location, stop4_w16).
prop(a4_sched10_w16, time, add(Y,59)) :- prop(sched10_w16, startTime, Y).
prop(a5_sched10_w16, location, stop5_w16).
prop(a5_sched10_w16, time, add(Y,77)) :- prop(sched10_w16, startTime, Y).
prop(a6_sched10_w16, location, stop6_w16).
prop(a6_sched10_w16, time, add(Y,86)) :- prop(sched10_w16, startTime, Y).

%an_sched11_w16 is at stopm_w16...
prop(a0_sched11_w16, location, stop0_w16).
prop(a0_sched11_w16, time, add(Y,0)) :- prop(sched11_w16, startTime, Y).
prop(a1_sched11_w16, location, stop1_w16).
prop(a1_sched11_w16, time, add(Y,10)) :- prop(sched11_w16, startTime, Y).
prop(a2_sched11_w16, location, stop2_w16).
prop(a2_sched11_w16, time, add(Y,28)) :- prop(sched11_w16, startTime, Y).
prop(a3_sched11_w16, location, stop3_w16).
prop(a3_sched11_w16, time, add(Y,43)) :- prop(sched11_w16, startTime, Y).
prop(a4_sched11_w16, location, stop4_w16).
prop(a4_sched11_w16, time, add(Y,59)) :- prop(sched11_w16, startTime, Y).
prop(a5_sched11_w16, location, stop5_w16).
prop(a5_sched11_w16, time, add(Y,77)) :- prop(sched11_w16, startTime, Y).
prop(a6_sched11_w16, location, stop6_w16).
prop(a6_sched11_w16, time, add(Y,86)) :- prop(sched11_w16, startTime, Y).

%an_sched12_w16 is at stopm_w16...
prop(a0_sched12_w16, location, stop0_w16).
prop(a0_sched12_w16, time, add(Y,0)) :- prop(sched12_w16, startTime, Y).
prop(a1_sched12_w16, location, stop1_w16).
prop(a1_sched12_w16, time, add(Y,10)) :- prop(sched12_w16, startTime, Y).
prop(a2_sched12_w16, location, stop2_w16).
prop(a2_sched12_w16, time, add(Y,28)) :- prop(sched12_w16, startTime, Y).
prop(a3_sched12_w16, location, stop3_w16).
prop(a3_sched12_w16, time, add(Y,43)) :- prop(sched12_w16, startTime, Y).
prop(a4_sched12_w16, location, stop4_w16).
prop(a4_sched12_w16, time, add(Y,59)) :- prop(sched12_w16, startTime, Y).
prop(a5_sched12_w16, location, stop5_w16).
prop(a5_sched12_w16, time, add(Y,77)) :- prop(sched12_w16, startTime, Y).
prop(a6_sched12_w16, location, stop6_w16).
prop(a6_sched12_w16, time, add(Y,86)) :- prop(sched12_w16, startTime, Y).

% Now for eastbound...
%an_sched0_e16 is at stopm_e16...
prop(a0_sched0_e16, location, stop0_e16).
prop(a0_sched0_e16, time, add(Y,0)) :- prop(sched0_e16, startTime, Y).
prop(a1_sched0_e16, location, stop1_e16).
prop(a1_sched0_e16, time, add(Y,9)) :- prop(sched0_e16, startTime, Y).
prop(a2_sched0_e16, location, stop2_e16).
prop(a2_sched0_e16, time, add(Y,25)) :- prop(sched0_e16, startTime, Y).
prop(a3_sched0_e16, location, stop3_e16).
prop(a3_sched0_e16, time, add(Y,40)) :- prop(sched0_e16, startTime, Y).
prop(a4_sched0_e16, location, stop4_e16).
prop(a4_sched0_e16, time, add(Y,58)) :- prop(sched0_e16, startTime, Y).
prop(a5_sched0_e16, location, stop5_e16).
prop(a5_sched0_e16, time, add(Y,74)) :- prop(sched0_e16, startTime, Y).
prop(a6_sched0_e16, location, stop6_e16).
prop(a6_sched0_e16, time, add(Y,85)) :- prop(sched0_e16, startTime, Y).

%an_sched1_e16 is at stopm_e16...
prop(a0_sched1_e16, location, stop0_e16).
prop(a0_sched1_e16, time, add(Y,0)) :- prop(sched1_e16, startTime, Y).
prop(a1_sched1_e16, location, stop1_e16).
prop(a1_sched1_e16, time, add(Y,9)) :- prop(sched1_e16, startTime, Y).
prop(a2_sched1_e16, location, stop2_e16).
prop(a2_sched1_e16, time, add(Y,25)) :- prop(sched1_e16, startTime, Y).
prop(a3_sched1_e16, location, stop3_e16).
prop(a3_sched1_e16, time, add(Y,40)) :- prop(sched1_e16, startTime, Y).
prop(a4_sched1_e16, location, stop4_e16).
prop(a4_sched1_e16, time, add(Y,58)) :- prop(sched1_e16, startTime, Y).
prop(a5_sched1_e16, location, stop5_e16).
prop(a5_sched1_e16, time, add(Y,74)) :- prop(sched1_e16, startTime, Y).
prop(a6_sched1_e16, location, stop6_e16).
prop(a6_sched1_e16, time, add(Y,85)) :- prop(sched1_e16, startTime, Y).

%an_sched2_e16 is at stopm_e16...
prop(a0_sched2_e16, location, stop0_e16).
prop(a0_sched2_e16, time, add(Y,0)) :- prop(sched2_e16, startTime, Y).
prop(a1_sched2_e16, location, stop1_e16).
prop(a1_sched2_e16, time, add(Y,9)) :- prop(sched2_e16, startTime, Y).
prop(a2_sched2_e16, location, stop2_e16).
prop(a2_sched2_e16, time, add(Y,25)) :- prop(sched2_e16, startTime, Y).
prop(a3_sched2_e16, location, stop3_e16).
prop(a3_sched2_e16, time, add(Y,40)) :- prop(sched2_e16, startTime, Y).
prop(a4_sched2_e16, location, stop4_e16).
prop(a4_sched2_e16, time, add(Y,58)) :- prop(sched2_e16, startTime, Y).
prop(a5_sched2_e16, location, stop5_e16).
prop(a5_sched2_e16, time, add(Y,74)) :- prop(sched2_e16, startTime, Y).
prop(a6_sched2_e16, location, stop6_e16).
prop(a6_sched2_e16, time, add(Y,85)) :- prop(sched2_e16, startTime, Y).

%an_sched3_e16 is at stopm_e16...
prop(a0_sched3_e16, location, stop0_e16).
prop(a0_sched3_e16, time, add(Y,0)) :- prop(sched3_e16, startTime, Y).
prop(a1_sched3_e16, location, stop1_e16).
prop(a1_sched3_e16, time, add(Y,9)) :- prop(sched3_e16, startTime, Y).
prop(a2_sched3_e16, location, stop2_e16).
prop(a2_sched3_e16, time, add(Y,25)) :- prop(sched3_e16, startTime, Y).
prop(a3_sched3_e16, location, stop3_e16).
prop(a3_sched3_e16, time, add(Y,40)) :- prop(sched3_e16, startTime, Y).
prop(a4_sched3_e16, location, stop4_e16).
prop(a4_sched3_e16, time, add(Y,58)) :- prop(sched3_e16, startTime, Y).
prop(a5_sched3_e16, location, stop5_e16).
prop(a5_sched3_e16, time, add(Y,74)) :- prop(sched3_e16, startTime, Y).
prop(a6_sched3_e16, location, stop6_e16).
prop(a6_sched3_e16, time, add(Y,85)) :- prop(sched3_e16, startTime, Y).

%an_sched4_e16 is at stopm_e16...
prop(a0_sched4_e16, location, stop0_e16).
prop(a0_sched4_e16, time, add(Y,0)) :- prop(sched4_e16, startTime, Y).
prop(a1_sched4_e16, location, stop1_e16).
prop(a1_sched4_e16, time, add(Y,9)) :- prop(sched4_e16, startTime, Y).
prop(a2_sched4_e16, location, stop2_e16).
prop(a2_sched4_e16, time, add(Y,25)) :- prop(sched4_e16, startTime, Y).
prop(a3_sched4_e16, location, stop3_e16).
prop(a3_sched4_e16, time, add(Y,40)) :- prop(sched4_e16, startTime, Y).
prop(a4_sched4_e16, location, stop4_e16).
prop(a4_sched4_e16, time, add(Y,58)) :- prop(sched4_e16, startTime, Y).
prop(a5_sched4_e16, location, stop5_e16).
prop(a5_sched4_e16, time, add(Y,74)) :- prop(sched4_e16, startTime, Y).
prop(a6_sched4_e16, location, stop6_e16).
prop(a6_sched4_e16, time, add(Y,85)) :- prop(sched4_e16, startTime, Y).

%an_sched5_e16 is at stopm_e16...
prop(a0_sched5_e16, location, stop0_e16).
prop(a0_sched5_e16, time, add(Y,0)) :- prop(sched5_e16, startTime, Y).
prop(a1_sched5_e16, location, stop1_e16).
prop(a1_sched5_e16, time, add(Y,9)) :- prop(sched5_e16, startTime, Y).
prop(a2_sched5_e16, location, stop2_e16).
prop(a2_sched5_e16, time, add(Y,25)) :- prop(sched5_e16, startTime, Y).
prop(a3_sched5_e16, location, stop3_e16).
prop(a3_sched5_e16, time, add(Y,40)) :- prop(sched5_e16, startTime, Y).
prop(a4_sched5_e16, location, stop4_e16).
prop(a4_sched5_e16, time, add(Y,58)) :- prop(sched5_e16, startTime, Y).
prop(a5_sched5_e16, location, stop5_e16).
prop(a5_sched5_e16, time, add(Y,74)) :- prop(sched5_e16, startTime, Y).
prop(a6_sched5_e16, location, stop6_e16).
prop(a6_sched5_e16, time, add(Y,85)) :- prop(sched5_e16, startTime, Y).

%an_sched6_e16 is at stopm_e16...
prop(a0_sched6_e16, location, stop0_e16).
prop(a0_sched6_e16, time, add(Y,0)) :- prop(sched6_e16, startTime, Y).
prop(a1_sched6_e16, location, stop1_e16).
prop(a1_sched6_e16, time, add(Y,9)) :- prop(sched6_e16, startTime, Y).
prop(a2_sched6_e16, location, stop2_e16).
prop(a2_sched6_e16, time, add(Y,25)) :- prop(sched6_e16, startTime, Y).
prop(a3_sched6_e16, location, stop3_e16).
prop(a3_sched6_e16, time, add(Y,40)) :- prop(sched6_e16, startTime, Y).
prop(a4_sched6_e16, location, stop4_e16).
prop(a4_sched6_e16, time, add(Y,58)) :- prop(sched6_e16, startTime, Y).
prop(a5_sched6_e16, location, stop5_e16).
prop(a5_sched6_e16, time, add(Y,74)) :- prop(sched6_e16, startTime, Y).
prop(a6_sched6_e16, location, stop6_e16).
prop(a6_sched6_e16, time, add(Y,85)) :- prop(sched6_e16, startTime, Y).

%an_sched7_e16 is at stopm_e16...
prop(a0_sched7_e16, location, stop0_e16).
prop(a0_sched7_e16, time, add(Y,0)) :- prop(sched7_e16, startTime, Y).
prop(a1_sched7_e16, location, stop1_e16).
prop(a1_sched7_e16, time, add(Y,9)) :- prop(sched7_e16, startTime, Y).
prop(a2_sched7_e16, location, stop2_e16).
prop(a2_sched7_e16, time, add(Y,25)) :- prop(sched7_e16, startTime, Y).
prop(a3_sched7_e16, location, stop3_e16).
prop(a3_sched7_e16, time, add(Y,40)) :- prop(sched7_e16, startTime, Y).
prop(a4_sched7_e16, location, stop4_e16).
prop(a4_sched7_e16, time, add(Y,58)) :- prop(sched7_e16, startTime, Y).
prop(a5_sched7_e16, location, stop5_e16).
prop(a5_sched7_e16, time, add(Y,74)) :- prop(sched7_e16, startTime, Y).
prop(a6_sched7_e16, location, stop6_e16).
prop(a6_sched7_e16, time, add(Y,85)) :- prop(sched7_e16, startTime, Y).

%an_sched8_e16 is at stopm_e16...
prop(a0_sched8_e16, location, stop0_e16).
prop(a0_sched8_e16, time, add(Y,0)) :- prop(sched8_e16, startTime, Y).
prop(a1_sched8_e16, location, stop1_e16).
prop(a1_sched8_e16, time, add(Y,9)) :- prop(sched8_e16, startTime, Y).
prop(a2_sched8_e16, location, stop2_e16).
prop(a2_sched8_e16, time, add(Y,25)) :- prop(sched8_e16, startTime, Y).
prop(a3_sched8_e16, location, stop3_e16).
prop(a3_sched8_e16, time, add(Y,40)) :- prop(sched8_e16, startTime, Y).
prop(a4_sched8_e16, location, stop4_e16).
prop(a4_sched8_e16, time, add(Y,58)) :- prop(sched8_e16, startTime, Y).
prop(a5_sched8_e16, location, stop5_e16).
prop(a5_sched8_e16, time, add(Y,74)) :- prop(sched8_e16, startTime, Y).
prop(a6_sched8_e16, location, stop6_e16).
prop(a6_sched8_e16, time, add(Y,85)) :- prop(sched8_e16, startTime, Y).

%an_sched9_e16 is at stopm_e16...
prop(a0_sched9_e16, location, stop0_e16).
prop(a0_sched9_e16, time, add(Y,0)) :- prop(sched9_e16, startTime, Y).
prop(a1_sched9_e16, location, stop1_e16).
prop(a1_sched9_e16, time, add(Y,9)) :- prop(sched9_e16, startTime, Y).
prop(a2_sched9_e16, location, stop2_e16).
prop(a2_sched9_e16, time, add(Y,25)) :- prop(sched9_e16, startTime, Y).
prop(a3_sched9_e16, location, stop3_e16).
prop(a3_sched9_e16, time, add(Y,40)) :- prop(sched9_e16, startTime, Y).
prop(a4_sched9_e16, location, stop4_e16).
prop(a4_sched9_e16, time, add(Y,58)) :- prop(sched9_e16, startTime, Y).
prop(a5_sched9_e16, location, stop5_e16).
prop(a5_sched9_e16, time, add(Y,74)) :- prop(sched9_e16, startTime, Y).
prop(a6_sched9_e16, location, stop6_e16).
prop(a6_sched9_e16, time, add(Y,85)) :- prop(sched9_e16, startTime, Y).

%an_sched10_e16 is at stopm_e16...
prop(a0_sched10_e16, location, stop0_e16).
prop(a0_sched10_e16, time, add(Y,0)) :- prop(sched10_e16, startTime, Y).
prop(a1_sched10_e16, location, stop1_e16).
prop(a1_sched10_e16, time, add(Y,9)) :- prop(sched10_e16, startTime, Y).
prop(a2_sched10_e16, location, stop2_e16).
prop(a2_sched10_e16, time, add(Y,25)) :- prop(sched10_e16, startTime, Y).
prop(a3_sched10_e16, location, stop3_e16).
prop(a3_sched10_e16, time, add(Y,40)) :- prop(sched10_e16, startTime, Y).
prop(a4_sched10_e16, location, stop4_e16).
prop(a4_sched10_e16, time, add(Y,58)) :- prop(sched10_e16, startTime, Y).
prop(a5_sched10_e16, location, stop5_e16).
prop(a5_sched10_e16, time, add(Y,74)) :- prop(sched10_e16, startTime, Y).
prop(a6_sched10_e16, location, stop6_e16).
prop(a6_sched10_e16, time, add(Y,85)) :- prop(sched10_e16, startTime, Y).

%an_sched11_e16 is at stopm_e16...
prop(a0_sched11_e16, location, stop0_e16).
prop(a0_sched11_e16, time, add(Y,0)) :- prop(sched11_e16, startTime, Y).
prop(a1_sched11_e16, location, stop1_e16).
prop(a1_sched11_e16, time, add(Y,9)) :- prop(sched11_e16, startTime, Y).
prop(a2_sched11_e16, location, stop2_e16).
prop(a2_sched11_e16, time, add(Y,25)) :- prop(sched11_e16, startTime, Y).
prop(a3_sched11_e16, location, stop3_e16).
prop(a3_sched11_e16, time, add(Y,40)) :- prop(sched11_e16, startTime, Y).
prop(a4_sched11_e16, location, stop4_e16).
prop(a4_sched11_e16, time, add(Y,58)) :- prop(sched11_e16, startTime, Y).
prop(a5_sched11_e16, location, stop5_e16).
prop(a5_sched11_e16, time, add(Y,74)) :- prop(sched11_e16, startTime, Y).
prop(a6_sched11_e16, location, stop6_e16).
prop(a6_sched11_e16, time, add(Y,85)) :- prop(sched11_e16, startTime, Y).

%an_sched12_e16 is at stopm_e16...
prop(a0_sched12_e16, location, stop0_e16).
prop(a0_sched12_e16, time, add(Y,0)) :- prop(sched12_e16, startTime, Y).
prop(a1_sched12_e16, location, stop1_e16).
prop(a1_sched12_e16, time, add(Y,9)) :- prop(sched12_e16, startTime, Y).
prop(a2_sched12_e16, location, stop2_e16).
prop(a2_sched12_e16, time, add(Y,25)) :- prop(sched12_e16, startTime, Y).
prop(a3_sched12_e16, location, stop3_e16).
prop(a3_sched12_e16, time, add(Y,40)) :- prop(sched12_e16, startTime, Y).
prop(a4_sched12_e16, location, stop4_e16).
prop(a4_sched12_e16, time, add(Y,58)) :- prop(sched12_e16, startTime, Y).
prop(a5_sched12_e16, location, stop5_e16).
prop(a5_sched12_e16, time, add(Y,74)) :- prop(sched12_e16, startTime, Y).
prop(a6_sched12_e16, location, stop6_e16).
prop(a6_sched12_e16, time, add(Y,85)) :- prop(sched12_e16, startTime, Y).
