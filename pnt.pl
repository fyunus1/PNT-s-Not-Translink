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

