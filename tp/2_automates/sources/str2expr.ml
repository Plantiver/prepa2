type regex =
| E
| Ch of char
| O of regex * regex
| P of regex * regex
| K of regex
| Prio of regex

type parsed =
| Op | Cl
| C of char
| E
| O | K
| Par of parsed list

let str2mot s = List.init (String.length s) (String.get s)

let rec lexer = function
| [] -> []
| h::t -> begin match h with
  | '(' -> [Op]
  | ')' -> [Cl]
  | '|' -> [O]
  | '*' -> [K]
  | 'e' -> [E]
  | ' ' -> []
  | c -> [C c]
end @(lexer t)

exception ParenthesageError

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
in aux l 0 [[]]

let split v l = 
let rec aux v acc = function
| [] -> (List.rev acc, [])
| h::t -> if h=v then (List.rev acc, h::t) else aux v (h::acc) t
in aux v [] l

let use f (x,y) = f x y

exception BuildingException


type expr =
  | Vide
  | Char of char
  | Concat of expr * expr
  | Union of expr * expr
  | Etoile of expr

let rec conversion = function
| Ch c->Char(c)
| E->Vide
| O(e,e')->Union(conversion e, conversion e')
| P(e,e')->Concat(conversion e, conversion e')
| K(e) ->Etoile(conversion e)
| Prio(e) -> conversion e


let str2expr s =
let rec build (l:parsed list) =
match l with
| [] -> raise BuildingException
| h::t -> begin match h with
  | Op | Cl | O | K -> raise BuildingException
  | C(a) -> (Ch a, t)
  | E -> (E, t)
  | Par(l) -> (Prio(use parse (build l)), t)
end
and parse (e:regex) (l:parsed list) =
match l with
| [] -> e
| h::t -> begin match h with
  | Op | Cl -> raise BuildingException
  | C(c) -> parse (P(e,Ch c)) t
  | E -> parse (P(e,E)) t
  | Par(p)  -> parse (P (e, Prio(use parse (build p)))) t
  | O -> let (t1, t2) = split O t in parse (O (e,use parse (build t1))) t2
  | K -> begin match e with 
    | P(e1,e2) -> parse (P(e1,K e2)) t
    | _ -> parse (K e) t
  end
end in use parse (s |> str2mot |> lexer |> parenthesage |> build) |> conversion
