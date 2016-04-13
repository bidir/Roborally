COMPILATION:
-> Compiler tout (sans gtk, editor et showboard):
    make

-> Compiler sans gtk:
    make sansgtk


LANCEMENT:
-> Lancer le programme de test:
    ./sansgtk [-b]
    ./sansgtk [-b] <fichier_plateau>

DETAILS:
    Sans paramètres, le programme traite pour une position initiale données et
différentes positions d'arrivées, le chemin le plus cours dans les deux cas
suivants: tous les mouvements sont permis, 9 mouvements uniquement sont
permis, et pour les deux fichiers qui se trouvent dans le répertoire "boards".

    Sinon, on peut préciser un fichier contenants un plateau.

    L'option "-b" permet simplement de faire ces même tests 10 fois.


FUITES MÉMOIRE:
Lorsque j'ai analyser mon programme avec valgrind, il m'a signalé une fuite
importante de mémoire, celà est de la ligne 377 dans le fichier RRGraph.cpp.

Sinon, je me suis rendu compte très tard, mais mon programme cherche le plus
court chemin en prenant toutes les cartes qu'on lui donne, pas seulement 5.
