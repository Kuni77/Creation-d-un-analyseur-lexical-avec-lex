%{
    /**
    * description : Analyseur Lexical du Langage M
    * author: Cheikh Oumar Ba & Amadou Diao | cheikhououmarba@esp.sn - amadoudiao@esp.sn
    */

    // Dans cette partie on a les inclusions des bibliothèques destinées au preprocesseur du compilateur C
    
    #include <stdio.h>
    #include <stdlib.h>
    #include "langageM.h"

    int numLineForDebug     =   18; 
    int nbError             =   0;
    Boolean errorTracker    =   FALSE;

%}

separateur [\t \n]
blanc {separateur}+
chiffre	[0-9]
chiffres {chiffre}+
entier	([+-]?{chiffres})
lettre  [A-Za-z]
lettres {lettre}+
identificateur {lettre}({lettre}|{chiffre})*
tableau "["[0-9","0-9]*"]"
chaine (\"{lettres}|{identificateur}\") 

%%
 /* Dans cette partie on a la definition des règles de production */
"&"      {displayLexemeValue(AND);}
"et"     {displayLexemeValue(AND);}
"|"      {displayLexemeValue(OR);}
"ou"     {displayLexemeValue(OR);}
"!"      {displayLexemeValue(NOT);}
"not"    {displayLexemeValue(NOT);}
";"      {displayLexemeValue(POINT_VIRGULE);}
","      {displayLexemeValue(VIRGULE);}
"<="     {displayLexemeValue(OPERATOR_INF_EQUAL);}
">="     {displayLexemeValue(OPERATOR_SUP_EQUAL);}
"<"      {displayLexemeValue(OPERATOR_INF);}
">"      {displayLexemeValue(OPERATOR_SUP);}
"=="     {displayLexemeValue(EQUAL);}
"!="     {displayLexemeValue(NOT_EQUAL);}
"+"      {displayLexemeValue(ADD);}
"-"      {displayLexemeValue(MINUS);}
"*"      {displayLexemeValue(MULTIPLY);}
"/"      {displayLexemeValue(DIVIDE);}
"="      {displayLexemeValue(AFFECTATION);}
"{"      {displayLexemeValue(ACCOLADE_O);}
"}"      {displayLexemeValue(ACCOLADE_F);}
"("      {displayLexemeValue(PARANTHESE_O);}
")"      {displayLexemeValue(PARANTHESE_F);}   
"retour" {displayLexemeValue(RETOUR);}
"vide"   {displayLexemeValue(VIDE);}
"TANTQUE" {displayLexemeValue(TANTQUE);}
"FAIRE"   {displayLexemeValue(FAIRE);} 
"POUR"    {displayLexemeValue(POUR);}
"SI"      {displayLexemeValue(SI);}
"ALORS"   {displayLexemeValue(ALORS);}
"SINON"   {displayLexemeValue(SINON);}
"ecrire"  {displayLexemeValue(ECRIRE);}
"lire"    {displayLexemeValue(LIRE);}
"main"    {displayLexemeValue(MAIN);}  
"\n"     {numLineForDebug++;}
{blanc}             {printf(" ");}
{entier}            {displayLexemeValue(NUMBER);}
{identificateur}    {displayLexemeValue(ID);}
{tableau}           {displayLexemeValue(TAB);}
{chaine}            {displayLexemeValue(CHAINE);}

.                   {errorTracker = TRUE; displayError(); nbError++;} //Tout autre caratére n'appartenant pas au langage M
%%

/**
* Cette fonction est utlisée pour afficher la valeur du lexème reconnu
*/
void displayLexemeValue(String lexeme){
    printf("\nyytext === %s  --------------->>> TYPE:: %s\n", yytext, lexeme);
}

/**
* Cette fonction est utlisée pour afficher les erreurs lorsqu’un caractère n’est pas reconnu par l’analyseur lexical.
*/
void displayError(){
    printf("\nError! ::: line : %d ------------>>> Caractère %s non reconnu\n", numLineForDebug, yytext);
}

int main(){
    printf("\n\n****************************************** ANALYSEUR LEXICAL | VERSION 1.0 **************************************\n");
    printf("\t\t\t\t\t\tDémarrage...\n");
    yylex();
}

int yywrap(){
    if(errorTracker == TRUE)
        printf("\n❌Analyse terminée avec detection de %d erreurs \n\n", nbError);
    else
        printf("\n****************************************** ✅Analyse terminée avec succés ******************************************  \n\n");
    return 1;
}
