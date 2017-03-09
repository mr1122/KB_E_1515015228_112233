predicates
  nondeterm pria(symbol) 
  nondeterm wanita(symbol)
  nondeterm istri(symbol,symbol)
  nondeterm anak(symbol,symbol)
  nondeterm usia(symbol,integer)
  nondeterm ibu(symbol,symbol)
  nondeterm kakek(symbol,symbol)
  nondeterm cucu(symbol,symbol)
  nondeterm adik(symbol)
  
clauses
  pria(jhon).
  pria(james).
  pria(peter).

  wanita(sue).
  wanita(mary).
  wanita(ann).

  istri(mary,peter).
  istri(ann,james).
  
  anak(jhon,james).
  anak(james,peter).
  anak(sue,ann).
  
  usia(jhon,10).
  usia(sue,13).
  
  ibu(X,Y):-
  	anak(Y,X),
  	wanita(X).
  
  kakek(X,Z):-
  	anak(Z,Y),
  	anak(Y,X),
  	pria(Z).
  
  cucu(X,Z):-
  	anak(X,Y),
  	anak(Y,Z),
  	pria(X).
  
  adik(X):-
  	usia(X,10).

goal
ibu(Ibu,_);
kakek(Kakek,_);
cucu(Cucu,_);
adik(Adik).
