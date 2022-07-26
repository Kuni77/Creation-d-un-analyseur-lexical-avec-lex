main(){
    age = 17;
    value = 1;
    somme = (2 + 2 * 3) / 2;
    tableau = [10,20,30];

    SI age > 18 
        ALORS 
            lire(souhait);
    SINON
            ecrire("Va dormir tu es encore mimeur");

    TANTQUE (value != 0 & age < 20 FAIRE) {
        ecrire("Tu tends vers la mort");
        age++;
    }

    retour $ 1;
}



