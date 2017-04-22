(*===============Peano Arithmetic====================*)
type peano = Zero | Succ of peano

let rec (toInt : peano -> int) =
    fun p -> match p with
    | Zero -> 0
    | Succ(p) -> toInt p + 1

let rec (toPeano : int -> peano) =
    fun i -> match i with
    | 0 -> Zero
    | n -> Succ(toPeano (n - 1))

let rec add p1 p2 = match p1 with
    | Zero -> p2
    | Succ(q) -> add q (Succ p2)

let rec mul p1 p2 = match p1 with
    | Zero -> Zero
    | Succ(q) -> add p2 (mul q p2)


(*===============Trees====================*)
type 'a tree = Node of ('a * 'a tree list)

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
(* recursive way *)
let rec mirror_tree = function Node (v, children) ->
    let rec mirror_children c = match c with
    | [] -> []
    | h::t -> (mirror_children t)@[(mirror_tree h) ]
    in Node (v, (mirror_children children));;

(* fold_right *)
let rec mirror_tree2 = function Node (v, children) ->
    let reverse_one_more tree reversed = reversed@[mirror_tree2 tree]
    in Node (v, (List.fold_right reverse_one_more children []))

(* fold_left *)
let rec mirror_tree3 = function Node (v, children) ->
    let reverse_one_more reversed tree = (mirror_tree3 tree)::reversed
    in Node (v, (List.fold_left reverse_one_more [] children))

(* more higher-order functions *)
let rec mirror_tree4 = function Node (v, children) ->
    Node (v, List.rev (List.map mirror_tree4 children))

(*getLeftMostOnes *)
let rec (getLeftMostOnes : 'a tree -> 'a list) =
    fun t -> match t with
    | Node (v, []) -> []
    | Node (v, (Node(hv, hc)::tc)) -> hv::(List.fold_left
            (fun a e -> a@(getLeftMostOnes e)) []  (Node(hv, hc)::tc))

