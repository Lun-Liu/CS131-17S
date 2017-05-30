/* list_member(X,L) if X is a member of L */
list_member(X,[X|_]).
list_member(X,[_|T]):-list_member(X,T).

/* merge(L1, L2, L) L is a merged sorted list of 2 sorted list L1 L2*/
/* assume ascending*/
/* less equal: =< */
/* [H1|T1], [H2|T2], if H1<=H2 ... else ...*/
merge(L, [], L).
merge([], L, L).
/* */
merge([H1|T1], [H2|T2], [H1|T]):-H1=<H2,merge(T1, [H2|T2], T).
merge([H1|T1], [H2|T2], [H2|T]):-H1>H2,merge([H1|T1], T2, T).

/* split(L, L1, L2) Splits L into L1 and L2, 1st,3rd,5th... elements go to L1, */
/* 2nd,4th,6th... elements go to L2*/
/* [X,Y|H] -> [X|T1], [Y|T2] */
split([], [], []).
split([X], [X], []).
/*split([H|T], [H|R1], R2):-split(T, R2, R1).*/
split([X,Y|L], [X|T1], [Y|T2]):-split(L, T1, T2).

/* merge_sort(L1, L2) merge sorts L1 into L2 */
/* split L1 into 2 lists, sort each list, merge */
merge_sort([], []).
merge_sort([X], [X]).
merge_sort(L1, L2):-split(L1, A, B), merge_sort(A, ResA), merge_sort(B, ResB),
                    merge(ResA, ResB, L2).
