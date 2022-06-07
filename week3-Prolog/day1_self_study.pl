%% Day 1, self study
:- initialization main.

% Seismic relations
% network_manages(network,station)
network_manages(ak,atka).
network_manages(at,smy).
network_manages(iu,adk).
network_manages(iu,midw).

% station_manages(station,channel)
station_manages(atka,"00").
station_manages(smy,"00").
station_manages(adk,"00").
station_manages(midw,"00").

% channel_manages(station,channel)
channel_manages("00","BHE").
channel_manages("00","BHN").
channel_manages("00","BHZ").

match(Nework,Instrument):-network_manages(Nework,Station),
station_manages(Station,Channel),
channel_manages(Channel,Instrument).


main :- write('--Matching Result--'), nl,
    match(Nework,Instrument),
    write(Nework), write(' match with '), write(Instrument), nl,
    fail.
