%% Day 2
:- initialization main.

% Recursion
father(zeb,         john_boy_sr).
father(john_boy_sr, john_boy_jr).

ancestor(X, Y) :- 
    father(X, Y).
ancestor(X, Y) :- 
    father(X, Z), ancestor(Z, Y).

% Lists and tuples
% (1,2,3)=(1,2,3). % true
% P = [X, Y, Z].
% (A, B, C) = (7, 8, "hello").
% [a, b, c] = [Head|Tail]
% [a, b, c, d, e] = [_, _|[Head|_]].

% More lists and math
count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.
% count(What, [1,1,7,"hello"]). % What = 4

sum(0, []).
sum(Total, [Head|Tail]) :- sum(Sum, Tail), Total is Head + Sum.
% sum(What, [1,2,3]). % What = 6

average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum/Count.
% average(What, [1,2]). % What = 1.5

% Rules in both directions

% append([oil], [water], [oil, water]). % true
% append([oil], [water], [oil, air]). % false
% append([first], [second], What). % What = [first, second]
% append([first], What, [first, second]). % What = [second]

concatenate([], List, List).
concatenate([Head|[]], List, [Head|List]).
concatenate([Head|Tail1], List, [Head|Tail2]) :- concatenate(Tail1, List, Tail2).
% concatenate([1,2,3],[4],What). % What = [1,2,3,4]


main :- 
    write("Hello, world!"), nl.
