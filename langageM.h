/**
* description : fichier header du langage M contenant la definition de constantes pour la description de certaines unités lexicales
* author : Cheikh Oumar Ba & Amadou Diao | cheikhououmarba@esp.sn - amadoudiao@esp.sn
*/

#ifndef __LANGAGEM_H
#define __LANGAGEM_H

typedef char* String;

typedef enum Boolean{
   TRUE,
   FALSE
} Boolean;

/**
* Fonction permettant de faire la correspondance entre un lexème et le nom de son unité lexicale
*/
void displayLexemeValue(String lexeme);

/**
* Fonction permettant d'afficher les éventuelles erreurs comme les caractères n'appartenant pas au langage M
*/
void displayError();

#define SI "STRUCTURE_CONTROLE__SI"
#define SINON "STRUCTURE_CONTROLE__SINON"
#define ALORS "STRUCTURE_CONTROLE__ALORS"

#define TANTQUE "STRUCTURE_CONTROLE_BOUCLE__TANTQUE"
#define POUR "STRUCTURE_CONTROLE_BOUCLE__ POUR"
#define FAIRE "STRUCTURE_CONTROLE_BOUCLE__FAIRE"

#define ACCOLADE_O "ACCOLADE_OUVRANTE"
#define ACCOLADE_F "ACCOLATE_FERMANTE"
#define PARANTHESE_O "PARENTHESE_OUVRANTE"
#define PARANTHESE_F "PARENTHESE_FERMANTE"

#define POINT_VIRGULE "POINT_VIRGULE"
#define VIRGULE "VIRGULE"
#define NUMBER  "ENTIER"
#define CHAINE "CHAINE_CARACTERE"
#define ID  "IDENTIFICATEUR"
#define TAB "TABLEAU_ENTIER"
#define RETOUR "RETOUR"

#define AND "OPERATEUR_LOGIQUE__ET"
#define OR  "OPERATEUR_LOGIQUE__OU"
#define NOT "OPERATEUR_LOGIQUE__NON"
#define ADD "OPERATEUR_NUMERIQUE__ADDITION"
#define MINUS "OPERATEUR_NUMERIQUE__SOUSTRACTION"
#define MULTIPLY "OPERATEUR_NUMERIQUE__MULTIPLICATION"
#define DIVIDE "OPERATEUR_NUMERIQUE__DIVISION"

#define OPERATOR_SUP "OPERATEUR_COMPARAISON__SUPERIEUR_STRICT"
#define OPERATOR_INF "OPERATEUR_COMPARAISON__INFERIEUR_STRICT"
#define OPERATOR_SUP_EQUAL "OPERATEUR_COMPARAISON__SUPERIEUR_OU_EGAL"
#define OPERATOR_INF_EQUAL "OPERATEUR_COMPARAISON__INFERIREUR_OU_EGAL"
#define EQUAL "OPERATEUR_COMPARAISON__EGAL"
#define NOT_EQUAL "OPERATEUR_COMPARAISON__DIFFERENT"
#define AFFECTATION "OPERATEUR_AFFECTATION"

#define FONCTION "FONCTION"
#define VIDE "INSTRUCTION_VIDE"
#define ECRIRE "FONCTION__ECRIRE"
#define LIRE "FONCTION__LIRE"
#define MAIN "FONCTION_PRINCIPALE"

#endif