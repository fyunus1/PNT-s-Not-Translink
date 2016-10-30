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
