# Jeu de la vie
Le  Jeu  de  la  Vie  (ou  Game  of  Life)  est,  en  réalité,  un  automate  cellulaire  défini  en  1970 par  le  mathématicien  anglais  John  Conway  afin  de  tenter  de  résoudre  un  problème  soulevé  par  un mathématicien, père de l’informatique, John Von Neumann. Ce n’est pas à proprement parler un jeu : il ne nécessite pas l’intervention d’un joueur humain, hormis pour fixer les conditions initiales du jeu. Il se compose d’un univers dans lequel ́evoluent des cellules vivantes suivant des règles d’évolution précises.

### v1.0
Dans le prmière version du **Jeu de la vie**, j'ai ajouté les fonctions suivantes:
* alloue_grille(int l, int c, grille \*g) qui prend en paramètre les entières l (les lignes de la grille) et c (le colonnes de la grille) et g - un pointeur sur la grille, qui va allouer dans la mémoire la grille et les cellules de la grille
*  libere_grille(grille \*g) qui prend en paramètre le pointeur sur la grille, qui va libérer l'espace allouée précédemment

### v2.0
Petites modifications sur **README.md** et l'ajout de **case 'n'** dans le fichier **io.h** qui nous permet, lorsqu'on touche le clavier n de entrer le chemin d'un nouveau fichier qui contient la grille choisie.

### v2.1
J'ai modifié la fonction debut_jeu(grille \*g, grille \*gc) pour qu'elle soit capable d'afficher le temps d'évolution d'une grille (avec une variable *temps*, initialisée à 0, incrémente pendant chaque évolution de la grille). Ensuite, j'ai ajouté un nouveau cas **case 'c'**, qui permet d'activer ou de déactiver le mode cyclique d'évolution de la grille (s'il s'agit d'une grille cyclique).

### v2.2
J'ai ajouté les fonctions suivantes :
* int compte_voisins_vivants_cyclique(int i, int j, grille g) - qui compte les voisins d'une cellule dans le mode cyclique (*i* - l'indice sur la ligne, *j* - l'indice sur la colonne, *g* - le pointeur sur la grille)
* int compte_voisins_vivants_noncyclique(int i, int j, grille g) - qui compte les voisins d'une cellules dans le mode non-cyclique (*i* - l'indice sur la ligne, *j* - l'indice sur la colonne, *g* - le pointeur sur la grille)
* int (\* compte_voisins_vivants) (int i, int j, grille g) - fonction qui fait référence soit vers l'adresse de **compte_voisins_vivants_cyclique** si on est dans le mode cyclique, soit vers **compte_voisins_vivants_noncyclique** si on est dans le mode non-cyclique<br />
Pour détérminer si on est dans le mode cyclique ou dans le mode non-cyclique, j'ai ajouté dans la fonction **debut_jeu** une variable *cyclique* (initialisée à 1, parce que on suppose qu'on est déjà dans le mode cyclique), en faisant l'appel des fonctions qui correspondent au mod cyclique, respectivement mod non-cyclique, en fonctions de la valeur de la variable (1 - pour le mode cyclique, 0 - pour le mode non-cyclique).

### v2.3
J'ai ajouté la fonction **static inline void vieillissement(int i, int j, grille g, int age)** qui est une fonction pour le vieillissement de la grille, qui incrémente la valeur d'une cellule si son âge est compris entre 1 et 8. Si son âge va dépasser l'age 8, la cellule va mourir. Pour l'instant, je n'ai ajouté que le prototype de la fonction.<br />
Ensuite j'ai ajouté, la documentation du code.

### v2.4
J'ai changé le contenu du programme, en ajoutant quelque fonctions:
* affiche_compteur() - fonction qui affiche le compteur pour chaque étape de l'évolution
* affiche_cyclique() - fonction qui affiche l'état du mode cyclique
* affiche_vieillissement() - fonction qui affiche l'âge de chaque cellule
* change_cycle() - qui fait l'échange de mode cyclique en mode non-cyclique ou de mode non-cyclique en mode non-cyclique<br />
En plus, j'ai fait des modifications sur la fonction **compte_voisins_vivants**, qui determine les voisins de chaque cellule

### v3.0
J'ai ajouté deux fonctions:
*  **static inline void set_non_viable(int i, int j, grille g)**, qui initialise les cellules en prenant les coordonnées trouvées
* **static inline int est_non_viable(int i, int j, grille g)**, qui vérifie si cellule est non_viable et en utilisant cette fonction, dans la fonction **affiche_ligne(int c, int* ligne)** si une cellule est non_viable, alors on va afficher *X*

### v4.0
J'ai implementé l'affichage et l'utilisation de l'interface graphique et changé le makefile, pour bien compiler le code après la nouveau repartition des fichiers et pour bien traiter les deux cas: si on l'execute en mode texte ou en utilisant l'interface graphique. (**make MODE=TEXTE** et puis **bin/main grilles/grille<numéro de la grille>.txt** en mode texte ou bien **make** et puis **bin/main grilles/grille<numéro de la grille>.txt** si on veut utiliser l'interface graphique).

### v5.0 
J'ai ajouté les fonctions pour la detection des oscillations:
*	**int tester_oscillations(grille *g, grille *gc, grille *gcc)**, qui determine si la grille est oscillante, en renvoyant le nombre d'oscillations si la grille est oscillante ou 0 sinon.
* 	**int grilles_sont_egales(grille g, grille gcd)**, une fonction si verifie si deux grilles sont égaux.
