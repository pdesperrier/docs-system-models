@echo off
rem Change l'encodage vers UTF-8 pour supporter les accents
chcp 65001 > nul

rem Génère la liste des fichiers et dossiers (format simple)
dir /b > _liste_contenu.txt

echo La liste a été générée avec succès dans "_liste_contenu.txt".
pause