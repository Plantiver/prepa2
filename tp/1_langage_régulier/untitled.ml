
type 'a mot= 'a list;;

let longueur m = List.length m;;
let est_vide m = m = [];;

let mirroir m = List.rev m;;

let concat u v = u@v;;

let vers_mot s =
List.init (String.length s) (fun i->s.[i]);;


let rec est_prefixe u v =
match u with
| [] -> true
| h1::t1 -> begin
  match v with
  | h::t when h=h1 -> est_prefixe t1 t
  | _ -> false
end;;

let est_suffixe u v = est_prefixe (mirroir u) (mirroir v);;

let rec est_facteur u v = est_prefixe u v || est_facteur u (List.tl v);;

let rec est_sous_mot u v=
match u with
| [] -> true
| h1::t1 -> begin
match v with
| [] -> false
| h2::t2 -> est_sous_mot (if h1=h2 then t1 else u) t2
end;;

exception Coupe_out_of_word;;

let rec coupe m i =
if i=0 then ([],m) else
match m with
| [] -> raise Coupe_out_of_word
| h::t -> let (l,r) = coupe t (i-1) in (h::l,r);;

let prefixe u i = coupe u i |> fst;;
let suffixe u i = coupe u i |> snd;;

(*Le reste est fait dans le prochain tp*)

