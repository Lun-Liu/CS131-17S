/*list_length(L, N)*/
list_length([], 0).
list_length([_|T], N):- list_length(T, N1), N is N1 + 1.

/*-Number is +Expr*/
/*True when Number is the value to which Expr evaluates*/
/*is predicate does not provide reverse arithmatic operations*/
/* Expr must be able to be evaluated when unify*/
/* 2 is 1 + N --> error*/

/*sumList(L, S). S is the sum of all elements in L*/
sumList([], 0).
sumList([H|T], S):-sumList(T, S1), S is S1 + H.

/*append(L1,L2,L3) when L3 is L1@L2*/
/*   append([],L,L). */
/*   append([H|T],L2,[H|L3])  :-  append(T,L2,L3).*/

/*list_prefix(P, L) when P is a prefix of L*/
list_prefix(P, L):-append(P, _, L).

/*list_suffix(S, L) when S is a suffix of L*/
list_suffix(S, L):-append(_, S, L).

/*shift_left(L, L1). L1 is the result of "shiftling left" the list of L by 1*/
/*shift_left([3,2,1], [2,1]).*/
shift_left([_|T], T).

/*shift_right(L,L1)*/
/*shift_right([3,2,1], [3,2])*/
/*L: L1@[_]*/
shift_right(L, L1):-append(L1, [_], L).

/*rotate_left(L, L1). L1 is the result of "rotating left" the list of L by 1*/
/*rotate_left([3,2,1], [2,1,3])*/
/*L : [H | T]*/
/*L1: T@[H]*/
rotate_left([], []).
rotate_left([H|T], L1):-append(T, H, L1).

/*rotate_right(L, L1)*/
/*rotate_right([3,2,1], [1,3,2])*/
/*rotate_right(L, L1):-rotate_left(L1, L).*/
/*L1: [H| T]*/
/*L: T@[H] */
/*test([_|T]):-T.*/
rotate_right([], []).
rotate_right(L, [H|T]):-append(T, [H], L).

/*unzip(A, B, C). A is a list of pairs, B and C hold corresponding elements in A*/
/*pairs in A are in the format of (x,y)*/
/*unzip([(1,a), (2,b), (3,c)], [1,2,3], [a,b,c])*/
/*let rec unzip A = match A with
  | [] -> ([],[])
  | (X,Y)::T -> match (unzip T) with (L1, L2) -> (X::L1, Y::L2)*/

unzip([], [], []).
unzip([(X, Y)|T1], [X|T2], [Y|T3]):-unzip(T1, T2, T3).



