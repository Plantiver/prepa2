





let use f (x,y) = f x y;;


type 'a regex =
| E
| Sy of 'a
| O of 'a regex * 'a regex
| P of 'a regex * 'a regex
| K of 'a regex;;

type reg_sys = char regex list;;

type parsed =
| Op | Cl
| S of char
| E
| O | K
| Par of parsed list
| Tag of char
| Assign
| Then
;;

let str_to_mot s = List.init (String.length s) (String.get s);;

let rec lexer = function
| [] -> []
| h::t -> begin match h with
  | '(' -> Op
  | ')' -> Cl
  | '|' -> O
  | '*' -> K
  | '=' -> Assign
  | ';' -> Then
  | 'e' -> E
  | c -> if Char.code 'A' <= Char.code c && Char.code c <= Char.code 'Z' then Tag c else S c
end ::(lexer t);;

let split v l = 
let rec aux v acc = function
| [] -> (List.rev acc, [])
| h::t -> if h=v then (List.rev acc, h::t) else aux v (h::acc) t
in aux v [] l;;

exception ParenthesageError;;

let parenthesage l =
let rec aux l acc res = match l with
| [] -> if acc<>0 then raise ParenthesageError else (let h::t=res in List.rev h)
| h::t -> begin match h with
  | Op -> aux t (acc+1) ([]::res)
  | Cl -> if acc=0 then raise ParenthesageError else
    aux t (acc-1) (let h1::t'=res in let h2::t'=t' in
    ((Par (List.rev h1))::h2)::t')
  | c -> aux t acc (let h::t=res in (c::h)::t)
end
in aux l 0 [[]];;

exception BuildingException;;

let rec build_from_nothing = function
| [] -> raise BuildingException
| h::t -> begin match h with
  | Op | Cl | O | K -> raise BuildingException
  | S(a) -> (Sy a, t)
  | E -> (E, t)
  | Par(l) -> (use parse (build_from_nothing l), t)
end
and parse e = function
| [] -> e
| h1::t -> begin match h1 with
  | Op | Cl -> raise BuildingException
  | S(c) -> parse (P(e,Sy c)) t
  | E -> parse (P(e,E)) t
  | Par(p)  -> parse  (P (e, use parse (build_from_nothing p))) t
  | O -> let (t1, t2) = split O t in parse (O (e,use parse (build_from_nothing t1))) t2
  | K -> begin match e with 
    | P(e1,e2) -> parse (P(e1,K e2)) t
    | _ -> parse (K e) t
  end
end
;;

let tr s = use parse (s |> str_to_mot |> lexer |> parenthesage |> build_from_nothing);;





type 'a set = 'a list;;
let add c s = if List.mem c s then s else c::s;;
let rec sum s = function
| [] -> s
| h::t -> sum (add h s) t;;

type automate = int * char set * int list * int list * (int*char*int) list;;


let rec reg2alpha (e:char regex)= match e with
| E -> ['e']
| Sy(a) -> [a]
| O(e,e') | P(e,e') -> sum (reg2alpha e) (reg2alpha e')
| K(e) -> reg2alpha e;;


type expr =
  | Vide
  | Char of char
  | Concat of expr * expr
  | Union of expr * expr
  | Etoile of expr;;

let rec conversion = function
| Sy(c)->Char(c)
| E->Vide
| O(e,e')->Union(conversion e, conversion e')
| P(e,e')->Concat(conversion e, conversion e')
| K(e) ->Etoile(conversion e);;

let total s = conversion (tr s);;










let epsilon = Etoile(Vide) (* TODO *);;

(* Affiche une expression régulière avec une syntaxe concise *)
let rec afficher (e : expr) =
  match e with
  | Vide -> Printf.printf "Ø"
  | Char c -> Printf.printf "%c" c
  | Concat (e1, e2) -> afficher e1 ; afficher e2
  | Union (e1, e2) ->
    Printf.printf "(";
    afficher e1;
    Printf.printf "|" ;
    afficher e2;
    Printf.printf ")"
  | Etoile e1 -> 
    Printf.printf "(";
    afficher e1;
    Printf.printf ")*";;

type indexed_char = char * int;;

(* Expression régulière linéarisée *)
type lin_expr =
  | LVide
  | LChar of indexed_char
  | LConcat of lin_expr * lin_expr
  | LUnion of lin_expr * lin_expr
  | LEtoile of lin_expr;;

(* Affiche une expression rationnelle linéarisé avec une syntaxe concise *)
let rec lin_afficher (e : lin_expr) =
  match e with
  | LVide -> Printf.printf "Ø"
  | LChar (c,i) -> Printf.printf "%c%d" c i
  | LConcat (e1, e2) ->
    lin_afficher e1;
    lin_afficher e2
  | LUnion (e1, e2) ->
    Printf.printf "(";
    lin_afficher e1;
    Printf.printf "|" ;
    lin_afficher e2;
    Printf.printf ")"
  | LEtoile e1 ->
    Printf.printf "(";
    lin_afficher e1;
    Printf.printf ")*";;

let rec compte_char (e : expr) : int =
match e with
| Vide -> 0
| Char(_) -> 1
| Union (e,e') | Concat(e,e') -> compte_char e + (compte_char e')
| Etoile(e) -> compte_char e;;

let linearise (e : expr) : lin_expr =
let cpt = ref 1 in
let rec aux = function
| Vide -> LVide
| Char(c) -> cpt:=!cpt+1;LChar(c,!cpt-1)
| Concat(e,e') -> let e = aux e in LConcat (e, aux e')
| Union(e,e') -> let e = aux e in LUnion (e, aux e')
| Etoile(e) -> LEtoile(aux e)
in aux e;;
let tlin s = linearise (total s);;

let rec reconnait_epsilon (e : lin_expr) : bool =
match e with
| LVide | LChar(_) -> false
| LUnion(e,e') -> reconnait_epsilon e || (reconnait_epsilon e')
| LConcat(e,e') -> reconnait_epsilon e && (reconnait_epsilon e')
| LEtoile(_) -> true;;

let rec premiers (e : lin_expr) : indexed_char list =
match e with
| LVide -> []
| LChar(c) -> [c]
| LConcat(e,e') -> premiers e @ if reconnait_epsilon e then premiers e' else []
| LUnion(e,e') -> premiers e @ (premiers e')
| LEtoile(e) -> premiers e;;

let rec derniers (e : lin_expr) : indexed_char list =
match e with
| LVide -> []
| LChar(c) -> [c]
| LConcat(e,e') -> derniers e' @ if reconnait_epsilon e' then derniers e else []
| LUnion(e,e') -> derniers e @ (derniers e')
| LEtoile(e) -> derniers e;;

let prod l1 l2 =
List.flatten (
	List.map (fun i->
		List.map (fun j->(i,j)) l2
	) l1
);;

let rec facteurs (e : lin_expr) : (indexed_char*indexed_char) list =
match e with
| LVide | LChar(_) -> []
| LConcat(e,e') -> facteurs e @ (facteurs e') @ (prod (derniers e) (premiers e'))
| LUnion(e,e') -> facteurs e @ (facteurs e')
| LEtoile(e) -> prod (derniers e) (premiers e) @ (facteurs e);;
let tfact s = facteurs (tlin s);;


(* Implémentation d'un automate non-déterministe dont les états sont numerotés de 0 
   à n et l'alphabet est l'ensemble des nombres de 0 à 255 (inclus).
   Si la case transition.(i).(j), qui est une liste, contient un nombre k >= 0
   cela signifie qu'il existe une transition de i à k d'étiquette j,
   sinon qu'il n'y a pas de transition depuis i avec une étiquette j.
   Le champ acceptant indique pour chaque état s'il est acceptant.
   L'état initial est unique et toujours 0. *)
type automate = {
  transition : int list array array;
  acceptant : bool array
};;

let nb_char_entier (n : int) : int =
  1 + int_of_float (log10 (float_of_int n));;

let largeurs_colonnes (a : automate) =
  let n = Array.length a.transition in (* Nombre d'états *)
  let largeur : int array = Array.make 256 0 in
  let rec largeur_case (l : int list) (acc : int) : int =
    match l with
    | [] -> acc
    | t :: q -> largeur_case q (1 + (nb_char_entier t) + acc)
  in
  for c = 0 to 255 do
    for e = 0 to (n - 1) do
      largeur.(c) <- max largeur.(c) (largeur_case a.transition.(e).(c) 0)
    done
  done;
  largeur;;

let rec string_of_list (l : int list) : string =
  match l with
  | [] -> ""
  | [k] -> (string_of_int k)
  | t :: q -> (string_of_int t) ^ "," ^ (string_of_list q);;

(* Affiche la matrice des transitions de l'automate *)
let afficher_matrice_automate (a : automate) =
  let n = Array.length a.transition in (* Nombre d'états *)
  (* Taille de chaque colonne *)
  let largeurs = largeurs_colonnes a in
  (* En-tête *)
  let cmax = nb_char_entier n in
  Printf.printf "  %*s " cmax "";
  for i = 0 to 255 do
    if largeurs.(i) <> 0
    then Printf.printf "| %*s%c " largeurs.(i) "" (char_of_int i)
  done;
  Printf.printf "|\n";
  (* Pour chaque état de départ d'une transition *)
  for s = 0 to n - 1 do
    (* Une astérisque indique que l'état est acceptant *)
    if a.acceptant.(s)
    then Printf.printf "*"
    else Printf.printf " ";
    Printf.printf " %*d " cmax s;
    (* Pour chaque lettre de l'alphabet *)
    for i = 0 to 255 do
      if largeurs.(i) <> 0
      then begin
        if a.transition.(s).(i) = []
        then Printf.printf "| %*s " largeurs.(i) ""
        else Printf.printf "| %*s " largeurs.(i) (string_of_list a.transition.(s).(i))
      end
    done;
    Printf.printf "|\n"
  done;;

exception No_transition;;

let string2list s =
List.init (String.length s) (fun i->s.[i]);;

let voisins2 i a =
List.flatten (
  List.init 256 (fun c ->a.transition.(i).(c))
);;

let accepte (a : automate) (m : string) : bool =
let rec accepte_depuis a i = function
| [] -> a.acceptant.(i)
| h::t -> List.exists (fun i->accepte_depuis a i t) (voisins2 i a)
in accepte_depuis a 0 (string2list m);;


let construire (e : expr) =
  let n = compte_char e+1 in (* À modifier*)
  let le = linearise e in
  let transition = Array.make_matrix n 256 [] in
  let acceptant = Array.make n false in
  List.iter (fun (c,i)->transition.(0).(Char.code c)<-i::transition.(0).(Char.code c)) (premiers le);
  List.iter (fun (_,i)->acceptant.(i)<-true) (derniers le);
  List.iter (fun ((_,i),(c,j))->transition.(i).(Char.code c)<-
  j::transition.(i).(Char.code c))
  (facteurs le);
  {
    transition = transition;
    acceptant = acceptant
  };;

