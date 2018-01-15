{ALGORITHME Jeux_De_Nim_V2_algo;
//But : crée un algo permettant de jouer au jeu de l’allumette à 2. Le but pour gagner est de faire tirer la dernière allumette à l’autre joueur.
//Entrée : Nombre d’allumette que le joueur pioche 
//Sortie : Nombre dallumette(s) restantes et a la fin le vainqueur.


CONST :
	
	FIN=0;
	ENSEMBLE=21

VAR :

choixjoueur, cpt, cpti, nb, random : INTEGER; 
	Joueur1, IA : STRING;

DEBUT

	ECRIRE('Joueur1 veuillez saisir votre nom');
	LIRE (Joueur1);

	random(3)//le random, alias randomize, est ici utile pour définir l'IA pour lui permettre de choisir des nombres de façon aléatoire
	nb←ensemble
	cpt←2

		REPETER

				ECRIRE"veuillez entrez le nombre d'allumette que vous retirez" 
				LIRE nb

				SI nb>=1 ET nb <=3 ALORS
					cpt←cpt+1
					cpti←cpti-nb
				

				SINON 
					ECRIRE " veuillez entrez un nombre, entre 1 et 3"

					

				FINSI


			SI cpt MOD 2=1 ALORS 
			ECRIRE "l'ordinateur joue"

				SI random>=1 ET aleatoire <=3 ALORS //Nous allons ici délimiter les nombres par la machine, elle ne pourra par conséquent ni aller en dessous de 1 ni au dessus de 3
					cpt←cpt+1
					cpti←cpti-random
					ECRIRE cpti 
						
					SINON 
						ECRIRE "Erreur de l'IA, il va retenter sa chance "


				
				FINSI 

				
			 
			FINSI


		JUSQUA cpti<=1
					
						SI cpt MOD2=0  ALORS


						ECRIRE "L'IA gagne la partie"

						SINON 
						ECRIRE "Bien joué, vous remportez la partie"


						FINSI

					

FIN
}






PROGRAM  Jeux_De_Nim_V2_pas;
USES crt;

//But : crée un algo permettant de jouer au jeu de l’allumette à 2. Le but pour gagner est de faire tirer la dernière allumette à l’autre joueur.
//Entrée : Nombre d’allumette que le joueur pioche 
//Sortie : Nombre d’allumette restante et à la fin le vainqueur.

CONST
	
	FIN=0;
	ENSEMBLE=21;

VAR

choixjoueur, cpt, cpti, nb, random : INTEGER; 
	Joueur1, IA : STRING;

BEGIN

	randomize(2)+1;
	cpt:=ensemble;
	cpt:=2;

	writeln ('Joueur1 veuillez saisir votre nom');
	readln (Joueur1);

	random(3)//le random, alias randomize, est ici utile pour définir l'IA pour lui permettre de choisir des nombres de façon aléatoire
	nb←ensemble;
	cpt←2

		REPEAT

				writeln"veuillez entrez le nombre d'allumette que vous retirez" 
				readln nb

				IF nb>=1 ET nb <=3 THEN
					cpt←cpt+1
					cpti←cpti-nb
				

				ELSE 
					ECRIRE " veuillez entrez un nombre, entre 1 et 3"

					

				END


			IF cpt MOD 2=1 THEN
			writeln "l'ordinateur joue"

				IF randomize>=1 ET randomize <=3 THEN //Nous allons ici délimiter les nombres par la machine, elle ne pourra par conséquent ni aller en dessous de 1 ni au dessus de 3
					cpt←cpt+1
					cpti←cpti-randomize 
					writeln cpti 
						
					ELSE 
						writeln "Erreur de l'IA, il va retenter sa chance"


				
				END

				
			 
			END


		UNTIL cpti<=1
					
						IF cpt MOD2=0  THEN


						writeln "L'IA gagne la partie"

						ELSE
						writeln "Bien joué, vous remportez la partie"


						END

					

END.

USES crt;

VAR 
restant,retrait,FIN:INTEGER;
J1,J2:STRING;

BEGIN
	randomize;
	clrscr;	
	restant := 21;
	J1 := '';
	J2 := '';
	FIN := 0 ;
	Writeln('Bienvenue dans le jeu de nime, aussi appele jeu des allumettes le principe est simple');
	Writeln(' Il y a donc 21 allumettes , le but du jeu est de retirer ');
	Writeln('1,2 ou 3 allumettes chaque tours mais attention , si vous retirez la derniere allumette aie , C''est perdu.');
	Writeln('J''espere que vous etes bien accroche.');
	readln();
	
		REPEAT// boucle de saisie des noms des joueurs afin de les nommés pour éviter toute confusion. 
			Writeln(' Quel est votre nom ?');
			readln (J1);

		UNTIL (LENGTH (J1)>=1);
	While FIN <> 1 DO
		BEGIN
			IF FIN = 0 THEN
				BEGIN
					REPEAT// boucle de retrait du joueur 1 
						Writeln(J1,' c''est a vous de jouer , vous souhaitez retirer 1,2 ou 3 allumettes.');
						readln (retrait);
					UNTIL ((retrait<=3) AND (retrait>=1));
					restant := restant - retrait ;
					IF (restant<1) THEN//test de la condition de victoire du joueur 1 
						BEGIN
							Writeln('Desole ',J1,' mais cet fois-ci vous perdez ');
							FIN:=1;
						END
					ELSE
						BEGIN
							Writeln('Il reste: ',restant,' allumettes.');
					END;
				END;
			IF FIN =0 THEN
				BEGIN	
					Writeln('C''est au tour du robot');
					retrait:= random(3)+1;
					Writeln('Il retire ',retrait);
					restant := restant - retrait ;

					IF (restant<1) THEN//test de la condition de victoire du joueur 2
						BEGIN
							Writeln('Vous avez vaincu le robot , vous avez gagne.');
							FIN:= 1;
						END
					ELSE
						BEGIN
							Writeln('Il reste: ',restant,' allumettes.');
					END;
				END;
		END;





	readln();
END.