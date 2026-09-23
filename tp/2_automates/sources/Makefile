all:
	ocamlc -g graphe.ml automate.ml automateAsynchrone.ml automateDeterministe.ml tests.ml -o a.out
	echo "run" | ocamldebug a.out

test:
	ocamlc graphe.ml automate.ml TP2_auto_test.ml -o test.out
	./test.out

clean:
	rm *.out *.cmi *.cmo
