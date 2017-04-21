exception ImplementMe

(*===============Peano Arithmetic====================*)
(* The theory of natural numbers defined by Peano Axioms
 * Peano Axioms: http://mathworld.wolfram.com/PeanosAxioms.html
 * In Peano Arithmetic, we use Zero and Succ to represent all natural numbers
 * Zero is the Peano equivalant of decimal 0
 * Succ represents the successor relation. Succ(Zero) is equivalant to 1,
 * Succ(Succ(Succ(Zero))) is equivalant to 3.
 * *)
type peano = Zero | Succ of peano

(* Convert a Peano number to integer*)
(*
 * # toInt Zero;;
 * - : int = 0
 * # toInt (Succ(Succ(Succ Zero)));;
 * - : int = 3
 * *)
let (toInt : peano -> int) = raise ImplementMe

(* Convert an intever to a Peano number*)
(*
 * # toPeano 3;;
 * - : peano = Succ (Succ (Succ Zero))
 * # toPeano 0;;
 * - : peano = Zero
 * *)
let (toPeano : int -> peano) = raise ImplementMe

(* Add two Peano numbers*)
(*
 * # add (Succ Zero) (Succ (Succ Zero));;
 * - : peano = Succ (Succ (Succ Zero))
 * *)
let (add : peano -> peano -> peano) = raise ImplementMe

(* Multiply two Peano nunbers*)
(*
 * # mul (Succ (Succ Zero)) (Succ (Succ Zero)) ;;
 * - : peano = Succ (Succ (Succ (Succ Zero)))
 * *)
let (mul : peano -> peano -> peano) = raise ImplementMe



(*List.fold_right f [a1; ...; an] b is f a1 (f a2 (... (f an b) ...)). *)
(*fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)

(*List.fold_left f a [b1; ...; bn] is f (... (f (f a b1) b2) ...) bn.*)
(*fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a *)

(*===============Trees====================*)
type 'a tree = Node of ('a * 'a tree list)

(*       1 
 *      / \
 *     2   3
 *       / | \
 *      4  6  7
 *      |     | \ 
 *      5     8  9 
 *               |
 *               10*)
let mytree = Node(1, [Node(2, []);
                      Node(3, [Node(4, [Node(5, [])]);
                               Node(6, []);
                               Node(7, [Node(8, []);
                                        Node(9, [Node(10, [])])])])])

let mirrored_tree =   Node(1, [Node(3, [Node(7, [Node(9, [Node(10,[])]);
                                                 Node(8, [])]);
                                        Node(6, []);
                                        Node(4, [Node(5, [])])]);
                               Node(2, [])])
(* Mirror a tree *)
(* 
 * # mirror_tree mytree = mirrored_tree;;
 * - : bool = true
 * *)
let (mirror_tree : 'a tree -> 'a tree) = raise ImplementMe

(*
 * Pick the value of the nodes which are left-most child of some other node.
 * # getLeftMostOnes mytree;;
 * - : int list = [2; 4; 5; 8; 10]
 * *)
let (getLeftMostOnes : 'a tree -> 'a list) = raise ImplementMe

