# Jeu de la vie
Le  Jeu  de  la  Vie  (ou  Game  of  Life)  est,  en  réalité,  un  automate  cellulaire  défini  en  1970 par  le  mathématicien  anglais  John  Conway  afin  de  tenter  de  résoudre  un  problème  soulevé  par  un mathématicien, père de l’informatique, John Von Neumann. Ce n’est pas à proprement parler un jeu : il ne nécessite pas l’intervention d’un joueur humain, hormis pour fixer les conditions initiales du jeu. Il se compose d’un univers dans lequel ́evoluent des cellules vivantes suivant des règles d’évolution précises.

### v1.0
Dans le prmière version du **Jeu de la vie**, j'ai ajouté les fonctions suivantes:
* alloue_grille(int l, int c, grille \*g) qui prend en paramètre les entières l (les lignes de la grille) et c (le colonnes de la grille) et g - un pointeur sur la grille, qui va allouer dans la mémoire la grille et les cellules de la grille
*  libere_grille(grille \*g) qui prend en paramètre le pointeur sur la grille, qui va libérer l'espace allouée précédemment

### v2.0
Petites modifications sur **README.md** et l'ajout de **case 'n'** dans le fichier **io.h** qui nous permet, lorsqu'on touche le clavier n de entrer le chemin d'un nouveau fichier qui contient la grille choisie.

### v2.1
J'ai modifié la fonction **debut_jeu(grille *g, grille *gc)** pour qu'elle soit capable d'afficher le temps d'évolution d'une grille (avec une variable *temps*, initialisée à 0, incrémente pendant chaque évolution de la grille). Ensuite, j'ai ajouté un nouveau cas **case 'c'**, qui permet d'activer ou de déactiver le mode cyclique d'évolution de la grille (s'il s'agit d'une grille cyclique).
