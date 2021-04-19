
sith(sidious).
sith(maul).
sith(exarkun).
sith(vader).
jedi(yoda).
jedi(kenobi).
jedi(macewindu).
jedi(ayalasecura).
spada(sidious).
spada(yoda).
spada(macewindu).
spada(kenobi).
spada(vader).
haduespade(ayalasecura).
haduespade(exarkun).

doppiaspada(X):- haduespade(X),!,(jedi(X);sith(X)),\+ spada(X).

doppialama(X):- \+ haduespade(X),!,(jedi(X);sith(X)),\+ spada(X).