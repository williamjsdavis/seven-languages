:- initialization main.

% Basic facts
likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).

% Inference
% friend(wallace,grommit)

% Querying

food_type(velveeta, cheese).
food_type(ritz, cracker).
food_type(spam, meat).
food_type(sausage, meat).
food_type(jolt, soda).
food_type(twinkie, dessert).

flavor(sweet, dessert).
flavor(savory, meat).
flavor(savory, cheese).
flavor(sweet, soda).

food_flavor(X, Y) :- food_type(X, Z), flavor(Y, Z).

% food_type(What, meat)

% Map coloring

different(red, green). different(red, blue). 
different(green, red). different(green, blue). 
different(blue, red). different(blue, green). 


coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee), 
  different(Mississippi, Alabama), 
  different(Alabama, Tennessee), 
  different(Alabama, Mississippi), 
  different(Alabama, Georgia), 
  different(Alabama, Florida), 
  different(Georgia, Florida), 
  different(Georgia, Tennessee). 

% Query: coloring(Alabama, Mississippi, Georgia, Tennessee, Florida)
% Can list all!

% Unification
cat(lion).
cat(tiger).

dorothy(X, Y, Z) :- X = lion, Y = tiger, Z = bear.
twin_cats(X, Y) :- cat(X), cat(Y).

main :-
    write("Hello, world!"), nl,
    write("Hello, world again!"), nl.

