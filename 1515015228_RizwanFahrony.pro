predicates
  nondeterm can_eat(symbol,symbol)
  nondeterm person(symbol)
  nondeterm restaurant(symbol)
  nondeterm likes(symbol,symbol)
  nondeterm available(symbol)
  nondeterm is(symbol,symbol)

clauses
  can_eat(X,Y):-
	person(X),
	restaurant(Y),
	likes(X,Y),
   	available(Y),
   	is(X,honest).

  person(cloud).
  person(squall).
  person(vaan).
  person(loki).

  restaurant(hamburger).
  restaurant(fried_chicken).
  restaurant(pizza).

  likes(cloud, hamburger).
  likes(squall, pizza).
  likes(vaan, fried_chicken).
  likes(loki, lemon).

  available(pizza).
  available(lemon).
  available(hamburger).
  
  is(cloud,honest).
  is(vaan,liar).

goal
  can_eat(Who,What).