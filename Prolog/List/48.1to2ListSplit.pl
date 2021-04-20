% Split a list into two parts.

div([],[],[]).
div([A],[A],[]).
div([A,B|T],[A|X],[B|Y]) :- div(T,X,Y).