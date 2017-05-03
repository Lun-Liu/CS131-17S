let rec (fold_left : ('a -> 'b ->'a) -> 'a -> 'b list -> 'a ) =
    fun f acc l ->
    match l with
    | [] -> acc
    | h::t -> fold_left f (f acc h) t

(*=================fold_right===============================*)

let length l = List.fold_right (fun e acc -> acc + 1) l 0

let rev l = List.fold_right (fun e acc -> acc@[e] ) l []

let map f l = List.fold_right (fun e acc -> (f e) :: acc) l []

let filter f l =
      List.fold_right (fun e acc -> if f e then e :: acc else acc) l []


(*=================fold_left===============================*)

let length2 l = List.fold_left (fun acc _ -> acc + 1) 0 l

let rev2 l = List.fold_left (fun acc e -> e :: acc) [] l

let map2 f l = List.fold_left (fun acc e  -> acc@[f e]) [] l

let filter2 f l =
    List.fold_left (fun acc e -> if f e then acc@[e] else acc) [] l


(*=================insertion_sort===============================*)
let insertion_sort l =
    let rec insert l e  = match l with
    | [] -> [e]
    | h::t -> if e > h then h::(insert t e) else e::l
    in List.fold_left insert [] l;;
