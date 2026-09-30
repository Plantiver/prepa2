


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
  uf.(j) <- i;;





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

let composantes mat =
  let n = Array.length mat.(0) in
  let m = Array.length mat in
  let r = init (n*n) in
  for i=1 to n-1 do begin
    for j=1 to m-1 do 
      
    done;
  end done;
  r
;;



















