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
prop(stop11_ncl, location, loc(w_broadway,cambie_st)).
prop(stop12_ncl, location, loc(cambie_st, olympic_village)).
prop(stop13_ncl, location, loc(yaletown, roundhouse)).
prop(stop14_ncl, location, loc(downtown, vancouver_city_centre)).
prop(stop15_ncl, location, loc(downtown, waterfront)).

%stopn_scl is at x...
prop(stop0_scl, location, loc(downtown, waterfront)).
prop(stop1_scl, location, loc(downtown, vancouver_city_centre)).
prop(stop2_scl, location, loc(yaletown, roundhouse)).
prop(stop3_scl, location, loc(cambie_st, olympic_village)).
prop(stop4_scl, location, loc(w_broadway,cambie_st)).
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
