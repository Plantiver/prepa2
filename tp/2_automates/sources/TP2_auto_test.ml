let creer_char_automate (nb : int) (i : int list) (f : int list)
                        (trans : (int * char * int) list) : char Automate.t =
		let sigma_liste = ref [] in
		let collecter_lettre (_, a, _') =
			if not (List.mem a !sigma_liste) then sigma_liste := a :: !sigma_liste
		in
		List.iter collecter_lettre trans;
		let sigma_array = Array.make (List.length !sigma_liste) ' ' in
		List.iteri (fun i a -> sigma_array.(i) <- a) !sigma_liste;
		let auto : char Automate.t = {
			nb = nb;
			sigma = sigma_array;
			i = i;
			f = f;
			delta = Hashtbl.create 1
		} in
		let ajouter_transition (q, a, q') =
			Automate.ajouter_transition auto q a q'
		in
		List.iter ajouter_transition trans;
		auto

let creer_mot (s : string) : char list =
	List.init (String.length s) (fun i -> s.[i])


let test_automate (a : char Automate.t) (nom : string)
                  (mots_acceptes : string list)
									(mots_refuses : string list) =
		Printf.printf "Début d'un test sur automate %s\n" nom;
		List.iter
				(fun mot -> assert(Automate.accepte_mot a (creer_mot mot));
									  Printf.printf "\tMot \"%s\" bien accepté\n" mot)
				mots_acceptes;
		List.iter
				(fun mot -> assert(not (Automate.accepte_mot a (creer_mot mot)));
									  Printf.printf "\tMot \"%s\" bien refusé\n" mot)
				mots_refuses;
		Printf.printf "Fin du test sur automate %s\n" nom


let _ =
	let a = creer_char_automate 0 [] [] [] in
	test_automate a "Vide" [] [""; "a"];
	let a = creer_char_automate 1 [0] [] [] in
	test_automate a "Sans accept" [] [""; "a"];
	let a = creer_char_automate 1 [0] [0] [] in
	test_automate a "Epsilon" [""] ["a"];
	let a = creer_char_automate 2 [0] [1] [(0,'a',1)] in
	test_automate a "a" ["a"] [""; "aa"; "b"];
	let a = creer_char_automate 2 [0] [0; 1] [(0,'a',0); (0,'a',1)] in
	test_automate a "a*" [""; "a"; "aa"; "aaa"] ["ab";"b"];
	let a = creer_char_automate 2 [0] [1] [(0,'a',0); (0,'a',1); (1, 'b', 1)] in
	test_automate a "a*ab*" ["a"; "aa"; "aaa"; "ab"; "aabb"] [""; "ba";"b"];
	let a = creer_char_automate 2 [0; 1] [1] [(0,'a',0); (0,'a',1); (1, 'b', 1)] in
	test_automate a "a*b*" [""; "a"; "aa"; "aaa"; "ab"; "aabb"; "b"; "bb"] ["ba"];
	let a = creer_char_automate 3 [0; 1] [2] [(0,'a',0); (0,'a',1); (1, 'b', 1); (1, 'c', 2)] in
	test_automate a "a*b*c" ["c"; "abc"; "aabbc"] [""; "a"; "aa"; "aaa"; "ba"; "ab"; "aabb"; "b"; "bb"; "cc"; "abcc"];
	let a = creer_char_automate 3 [0; 1] [] [(0,'a',0); (0,'a',1); (1, 'b', 1); (1, 'c', 2)] in
	test_automate a "Vide 2" [] ["c"; "abc"; "aabbc"; ""; "a"; "aa"; "aaa"; "ba"; "ab"; "aabb"; "b"; "bb"; "cc"; "abcc"];
	let a = creer_char_automate 3 [] [2] [(0,'a',0); (0,'a',1); (1, 'b', 1); (1, 'c', 2)] in
	test_automate a "Vide 3" [] ["c"; "abc"; "aabbc"; ""; "a"; "aa"; "aaa"; "ba"; "ab"; "aabb"; "b"; "bb"; "cc"; "abcc"];
	Printf.printf "Tous les tests: OK\n"
