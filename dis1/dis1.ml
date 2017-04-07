
(*List*)

(* delete all elements 'e' from list 'l' *)
let rec delete l e =
    match l with
    | [] -> []
    | h::t -> if h = e then delete t e else h::(delete t e);;

(* find the last two elements of a list *)
let rec last_two l =
    match l with
    | [] -> []
    | [a] -> [a]
    | [a;b] -> [a;b]
    | _::t -> last_two t;;

(*
 * Return every third element in a list
 *)
let rec every_third l =
    match l with
    | [] -> []
    | [_] -> []
    | [_;_] -> []
    | _::_::third::rest -> third::(every_third rest);;

(*
 * Get second element of each tuple
 *)
let rec get_second l =
  match l with
  | []          -> []
  | (_,y)::t -> y::(get_second t) ;;

(* Check if l1 is a prefix of l2*)
let rec prefix l1 l2 =
    match l1 with
    | [] -> true
    | h::t -> match l2 with
              | [] -> false
              | h2::t2 when h2 = h -> prefix t t2
              | _ -> false;;

(* Eliminate consecutive duplicate elements in a list*)
let rec elim_dup l =
    match l with
    | a::b::t -> if a = b then elim_dup (b::t) else a::(elim_dup (b::t))
    | l -> l;;

(*
 * Convert a list to indexed tuples
 *)
let index l =
  let rec idx_helper idx = function
    |  []    -> []
    | h::t -> (idx,h) :: (idx_helper (idx+1) t)
  in (idx_helper 1) l ;;


let rec map f l =
  match l with
    [] -> []
  | h::t -> (f h)::(map f t);;

(* convert int to boolean *)
let convert l = map (fun x -> if x > 0 then true else false) l;;




(*Fibonacci naive solution*)
let rec fib n = match n with
  | n when n > 1 -> fib (n-1) + fib (n-2)
  | n2 -> n2;;

(* Tail Recursive *)
let fib2 n =
  let rec fib2_helper k fk_1 fk : int =
    if n = k then fk
    else fib2_helper (k + 1) fk (fk_1 + fk)
  in if n < 2 then n else fib2_helper 1 0 1
;;
