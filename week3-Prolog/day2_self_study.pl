%% Day 2: Self study

% Fibonacci 
fib(0,0) :- !.
fib(1,1) :- !.
fib(N,Res) :- N1 is N - 1,
    N2 is N - 2,
    fib(N1,Res1), 
    fib(N2,Res2), 
    Res is Res1 + Res2.
% fib(0,What)
% fib(1,What)
% fib(12,What) % 144

% Factorial
facto(1,1) :- !.
facto(N,Res) :- N1 is N - 1, facto(N1,Res1), Res is N*Res1.
% facto(2,What)
% facto(5,What) % 120
