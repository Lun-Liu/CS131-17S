
(*==================List======================*)
(*delete certain element from list*)
(*
 * # delete [1; 3; 2] 2;;
 * - : int list = [1; 3]
 * # delete [1; 2; 5; 1] 3;;
 * - : int list = [1; 2; 5; 1]
 * # delete [] 0;;
 * - : int list = []
 *)
let (delete : 'a list -> 'a -> 'a list) = raise ImplementMe;;

(*get last two elements of a list*)
(*
 * # last_two [];;
 * - : 'a list = []
 * # last_two ['a'];;
 * - : char list = ['a']
 * # last_two [1; 3; 2; 2; 5];;
 * - : int list = [2; 5]
 *)
let (last_two : 'a list -> 'a list) = raise ImplementMe;;

(*get every third element in a list*)
(*
 * # every_third [4; 6; 1; 2];;
 * - : int list = [1]
 * # every_third [];;
 * - : 'a list = []
 * # every_third ['q'; 'x'];;
 * - : char list = []
 *)
let (every_third : 'a list -> 'a list) = raise ImplementMe;;

(*get second element of each tuple in list*)
(*
 * # get_second [("x", 1); ("bibi", 33); ("q", 8)];;
 * - : int list = [1; 33; 8]
 *)
let (get_second : ('a * 'b) list -> 'b list) = raise ImplementMe;;

(*check if list1 is a prefix of list2*)
(*
 * # prefix [1; 2] [1; 2; 3];;
 * - : bool = true
 * # prefix [1; 2] [1; 3];;
 * - : bool = false
 *)
let (prefix : 'a list -> 'a list -> bool) = raise ImplementMe;;

(*eliminate consecutive duplicate elements in a list*)
(*
 * # elim_dup [1;1;1;1;3;3;3;2;2;1;2;67;2;3;3;66;66;1];;
 * - : int list) = [1; 3; 2; 1; 2; 67; 2; 3; 66; 1]
 *)
let (elim_dup : 'a list -> 'a list) = raise ImplementMe;;

(*convert a list into a indexed list*)
(*
 * # index ['i'; 'a'; 'm'; 'a'; 'l'; 'i'; 's'; 't'];;
 * - : (int * char) list =
 * [(1, 'i'); (2, 'a'); (3, 'm'); (4, 'a'); (5, 'l'); (6, 'i'); (7, 's');
 *  (8, 't')]
 *)
let (index : 'a list -> (int * 'a) list) = raise ImplementMe;;


(*==========Higher Order Functions=============*)
let map f l =
    match l with
    | [] -> []
    | h::t -> (f h)::(map f t);;

(*convert int value to bool value*)
(*
 * # convert [0; 2; 4; 1; 2; 2; 0; 0; 22];;
 * - : bool list = [false; true; true; true; true; true; false; false; true]
 *)
let (convert : int list -> bool list) = raise ImplementMe;;


(*==============Tail Recursion================*)
(*get nth Fibonacci number *)
(*
 * # fib 1;;
 * - : int = 1
 * # fib 2;;
 * - : int = 1
 * # fib 4;;
 * - : int = 3
 *)
let (fib : int -> int) = raise ImplementMe;;

