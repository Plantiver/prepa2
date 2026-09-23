<!-- basicblock-start oid="ObsJhkcrA9uXBYkO2zeiW5FE" -->
Def. Alphabet::
Un ensemble finis.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsUCgA7yuTUC0NpLh4oCiMY" -->
Def. Un mot sur un alphabet $\Sigma$::
Une suite finis de lettre de $\Sigma$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsOiZrCWm1Q8A7RT1Y4dUJm" -->
Prop. L'ensemble des mots de $\Sigma$ et la concaténation::
$(\Sigma^{\star},\cdot)$ est un monoïde non commutatif de neutre $\varepsilon$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObswBpUcA0wY0qGEQRvdIShY" -->
Def. On appelle facteurs::
Les diviseur d'un mots centraux.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs5JRVCRLfVRQLeeg1WIY4Z" -->
Def. On appelle préfixe/suffixe::
Les diviseurs à gauche/droite.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsM59qwiRsiOage19s37onH" -->
Def. On appelle sous mot::
Les mots des suites extraite de la suite de notre mot.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsVvDxU97LEKWc06nItS3rm" -->
Prop. Les langages sur $\Sigma$::
- $(P(\Sigma^{\star}), \cup)$ est un monoïde de neutre $\emptyset$.
- $(P(\Sigma^{\star}),\cdot)$ est un monoïde de neutre $\mathrm{Set}( \varepsilon )$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsYO064Ip68fzS8hp1XEbuv" -->
Def. Etoile de Kleene::
$$
\cdot^{\star}:L\to \cup_{i=0}^{+\infty}L^{i}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsuBgi7dcDXGbCFB2RjkJ70" -->
Def. Etoile propre::
$$
\cdot^{+}:L\to \cup_{i=1}^{+\infty}L^{i}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs60eDozbyV1GSFxBGTqbf2" -->
Def. Langages réguliers::
- Sous ensemble de $P(\Sigma^{\star})$
- Contenant $\emptyset$
- Contenant tout les $l\in\Sigma$
- Stable par $\cup$, complémentaire, $\cdot$, et $\cdot^{\star}$.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs00elWqy24K4qMet60J3yS" -->
Def. Expressions régulières::
- $\emptyset$ et $a,\forall a\in\Sigma$ sont des expressions régulières
- $e_{1}|e_{2}$, $e_{1}e_{2}$, et $e_{1}^{\star}$ sont des expressions régulières si $e_{1}$ et $e_{2}$ sont des expressions régulières.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsdcdhWpfAj0rZJepYC1a7M" -->
Th. Equivalence langage régulier | expression régulière::
$L$ est un langage régulier ssi $\exists e$ une expression régulière tq $L=\mathscr{L}(e)$
<!-- basicblock-end -->






















