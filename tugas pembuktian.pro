predicates

nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
suka(symbol, symbol)
dijual(symbol)
nondeterm is(symbol,symbol)
CLAUSES

dapat_membeli(X,Y):-
orang(X),
mobil(Y),
suka(X,Y),
dijual(Y),
is(X,honest).

orang(nur).
orang(yudi).
orang(dian).
orang(heni).

mobil(atoz).
mobil(kijang).

suka(dian, atoz).
suka(yudi, pecel).
suka(heri, buku).
suka(nur, komputer).

dijual(kijang).
dijual(atoz).
dijual(buku).

is(dian,honest).
GOAL
dapat_membeli(dian,atoz).
