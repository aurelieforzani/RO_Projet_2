function[indice] = getIndSucc(pointeur,sommets,sommet)
% retourne les indices de début et de fin des arcs sortant de Sommet dans
% Successeurs
%% ENTREE
% pointeur : tableaux du nombre d'arcs sortant pour chaque sommet
% sommets : tableau des sommets du graphe
% sommet : sommet dont on cherche les arcs sortant*

%% SORTIE
% indice : tableau 1*2 contenant l'indice du premier arc sortant et du
% dernier arc sortant

indSommet = getIndSommet(sommets,sommet);

indice(1)=1; % indice du premier arc partant de sommet
for i = 1:indSommet-1
   indice(1) = indice(1) + pointeur(i);
end
%indice du dernier arc partant de sommet
indice(2) = indice(1) + pointeur(indSommet) - 1;
return;
