# PNT-s-Not-Translink

#### Here is the link to the wiki for our project:

http://wiki.ubc.ca/Course:CPSC312-2016-Project1-PNT

Load pnt_smaller.pl into SWI-Prolog and try the following queries:

findRoutes(loc(w_st,street1),loc(e_st,street3),clock(12,0),50,R,S,D,J).
findRoutes(loc(w_st,street1),loc(n_st,street2),clock(12,0),50,R,S,D,J).
findRoutes(loc(w_st,street1),loc(w_st,n_st),clock(12,0),50,R,S,D,J).
findroutes(loc(w_st,street1),loc(w_st,n_st),clock(12,0),5,R,S,D,J).

## What it does:

Our program takes in the start and end location, time limit, and start time from the user and outputs a list of buses routes to take and a corresponding bus stop to take that bus. Currently, it can account for up to two bus transfers at maximum.
