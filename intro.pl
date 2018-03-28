
father(tantalus, pelops).
father(tantalus, niobe).
father(pelops, pittheus).
father(pelops, thyestes).
father(pelops, atreus).
father(thyestes, aegisthus).
father(atreus, agamemnon).
father(atreus, menelaus).
father(pittheus, aethra).
father(aegeus, theseus).
father(theseus, hippolytus).
father(menelaus, hermione).
father(agamemnon, electra).
father(agamemnon, iphigenia).
father(agamemnon, orestes).

father(cadmus, semele).
father(cadmus, agave).
father(pentheus, menoeceus).
father(menoeceus, jocasta).
father(menoeceus, creon).
father(creon, haemon).
father(laius, oedipus).
father(oedipus, eteocles).
father(oedipus, polyneices).
father(oedipus, antigone).
father(oedipus, ismene).

father(cronus, hestia).
father(cronus, zeus).
father(cronus, hades).
father(cronus, hera).
father(cronus, demeter).
father(cronus, poseidon).

father(zeus, athena).
father(zeus, persephone).
father(zeus, muses).
father(zeus, ares).
father(zeus, hebe).
father(zeus, hephaestus).
father(zeus, aphrodite).
father(zeus, apollo).
father(zeus, artemis).
father(zeus, hermes).
father(zeus, dionysus).
father(zeus, tantalus).
father(zeus, heracles).
father(zeus, epaphus).
father(zeus, minos).
father(zeus, rhadamanthus).



father(epaphus, lybia).
father(poseidon, agenor).
father(agenor, europa).
father(agenor, cadmus).


father(minos, androgeus).
father(minos, ariadne).
father(minos, phaedra).
father(minos, catreus).

father(catreus, aerope).



mother(leto, apollo).
mother(leto, artemis).

mother(dione, aphrodite).
mother(demeter, persephone).
mother(mnemosyne, muses).
mother(hera, hephaestus).
mother(hera, hebe).
mother(hera, ares).
mother(alcmene, heracles).


mother(europa, rhadamanthus).
mother(europa, minos).
mother(harmonia, semele).
mother(harmonia, agave).
mother(lybia, agenor).
mother(io, epaphus).



mother(hippodamia, thyestes).
mother(hippodamia, pittheus).
mother(hippodamia, atreus).
mother(aerope, menelaus).
mother(aerope, agamemnon).
mother(helen, hermione).
mother(aethra, theseus).
mother(clytemnestra, orestes).
mother(clytemnestra, electra).
mother(clytemnestra, iphigenia).

mother(jocasta, oedipus).
mother(agave, pentheus).
mother(semele, dionysus).
mother(jocasta, polyneices).
mother(jocasta, antigone).
mother(jocasta, ismene).
mother(jocasta, eteocles).

mother(rhea, hestia).
mother(rhea, zeus).
mother(rhea, hades).
mother(rhea, hera).
mother(rhea, demeter).
mother(rhea, poseidon).


get_grandchild :-
  father(zeus, X),
  father(X, Y),
  write('The grandchild of Zeus is '),
  write(Y). nl.

get_grandchild2 :-
  father(zeus, X),
  father(X, Y),
  format('~w ~s ~n', [Y, "is the grandchild of Zeus."]).

grandparent(X, Y) :-
  mother(Z, X),
  father(Y, Z).
