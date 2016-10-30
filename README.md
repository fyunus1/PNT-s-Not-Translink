# PNT-s-Not-Translink

#### Here is the link to the wiki for our project:

http://wiki.ubc.ca/Course:CPSC312-2016-Project1-PNT

Load pnt_smaller.pl into SWI-Prolog and try the following queries:

findRoutes(loc(w_st,street1),loc(e_st,street3),clock(12,0),50,R,S,D,J).
findRoutes(loc(w_st,street1),loc(n_st,street2),clock(12,0),50,R,S,D,J).
findRoutes(loc(w_st,street1),loc(w_st,n_st),clock(12,0),50,R,S,D,J).
findroutes(loc(w_st,street1),loc(w_st,n_st),clock(12,0),5,R,S,D,J).

## Description

>What is the problem?
>
People want to know which buses to take to get from a given starting point to a given destination. Our project will return viable routes from a starting point to a destination, taking into account bus stops with intersections with other bus stops.
What is the something extra?
>
In addition to returning viable bus routes from a given starting point to a given destination, our program will optionally allow users to specify a maximum travel time, and return routes that take at most that amount of time.
What did we learn from doing this?
>
Logic programming is suitable for extracting and manipulating data. It shares many similarities with SQL in that it has predicates and facts in the former, which represents tables and data in the latter. The problem is, Prolog in particular does not scale well to large databases.
>
In the beginning, we worked on creating a database that was over 4000 lines of code. However, mid-project, we found out Prolog was not suitable for handling large datasets as it would run for an unreasonable amount of time when given a query (we did not wait for it to finish!). After we reduced our database to approximately 100 lines of code, our program was able to give us some answers in reasonable time.
