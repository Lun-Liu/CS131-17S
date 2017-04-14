exception ImplementMe

(*List.fold_right f [a1; ...; an] b is f a1 (f a2 (... (f an b) ...)). *)
let rec (fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b) =
    fun f l acc ->
        match l with
        | [] -> acc
        | h::t -> f h (fold_right f t acc)

(*List.fold_left f a [b1; ...; bn] is f (... (f (f a b1) b2) ...) bn.*)
let rec (fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a) = 
    raise ImplementMe

(*=====================================================================*)

(*
 * # length [1;2;3;4];;
 * - : int = 4
 *)
let (length : 'a list -> int) = raise ImplementMe

(*
 * # rev [1;2;3;4];;
 * - : int list = [4; 3; 2; 1]
 *)
let (rev : 'a list -> 'a list) = raise ImplementMe

(*
 * # map (fun x -> x + 1) [1;2;3;4];;
 * - : int list = [2; 3; 4; 5]
 *)
let (map : ('a -> 'b) -> 'a list -> 'b list) = raise ImplemantMe

(*
 * # filter (fun x -> x > 0) [-1; 0; -11; 33; 2];;
 * - : int list = [33; 2]
 *)
let (filter : ('a -> bool) -> 'a list -> 'a list) = raise ImplementMe


(*=====================================================================*)
let (insertion_sort : 'a list -> 'a list) = raise ImplementMe
