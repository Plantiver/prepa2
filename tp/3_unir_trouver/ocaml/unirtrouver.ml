


type unirtrouver = int array;;

let init n = Array.init n (fun i->i);;

(*
let rec trouver uf i = 
  if uf.(i)=i
  then i
  else trouver uf uf.(i)
*)

let rec trouver uf i =
  if uf.(i)=i then i else
  let r = trouver uf uf.(i) in
  uf.(i)<-r;
  r;;



let unir uf i j =
  let i = trouver uf i in
  let j = trouver uf j in
  uf.(max i j) <- min i j;;


(*
On est sensé réutiliser le code fait dans l'autre fichier.
Par flemme, je l'ai copié collé au dessus.
*)



type image = int array array;;

let smiley = [|
  [|0;1;0;1;0|];
  [|0;1;0;1;0|];
  [|0;0;0;0;0|];
  [|1;0;0;0;1|];
  [|0;1;1;1;0|];
|];;

let afficher_image_nb m =
  Array.iter (fun i->
    Array.iter (fun i -> print_char begin if i=0 then '.' else '#'end )
    i; print_newline ()
  ) m;;


let identifiant n i j = n*i+j;;

let composantes img =
  let n = Array.length img.(0) in
  let m = Array.length img in
  let r = init (n*n) in
  for i=1 to m-1 do begin
    if img.(i).(0)=mat.(i-1).(0)
      then unir r (identifiant n i 0) (identifiant n (i-1) 0)
      else ();
    for j=1 to n-1 do 
      if img.(i).(j-1)=mat.(i).(j)
        then unir r (identifiant n i (j-1)) (identifiant n i j)
        else ();
      if img.(i-1).(j)=mat.(i).(j)
        then unir r (identifiant n (i-1) j) (identifiant n i j)
        else ();
    done;
  end done;
  r
;;

let deid id n = id/n, id mod n;;

let recolore img uf =
  let n = Array.length img.(0) in
  let m = Array.length img in
  let r = Array.make_matrix m n 0 in
  for id=0 to n*m-1 do
    let (i,j)=deid id n in
    r.(i).(j) <- trouver uf id;
  done;
  r
;;


let afficher_image m =
  Array.iter (fun i->
    Array.iter (fun i -> print_char @@ Char.chr (i + Char.code 'a'))
    i; print_newline ()
  ) m;;















