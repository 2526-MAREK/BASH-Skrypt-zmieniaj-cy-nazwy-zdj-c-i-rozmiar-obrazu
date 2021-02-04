#!/bin/bash

#MAREK_SZULAK

#pytamy użytkownika
echo "Jeśli twoje zdjęcia są w innym katalogu proszę wprowadz ścieżkę do niego (np Pulpit/TEST(Jeśli chcesz zostać w tym katalogu co jesteś proszę wpisz kropke (.)):"
read katalog
echo "Proszę podaj do jakiego rozmiaru chcesz wyskalować wszystkie obrazy(np 100x200): "
read rozmiar

cd $katalog 

#tworzymy katalog tymczasowy
mkdir tymczasowy

#kopiujemy pliki w formacie jpg i jpeg do katalogu tymczasowy 
cp *jpeg tymczasowy
cp *png tymczasowy
cp *JPEG tymczasowy
cp *PNG tymczasowy

#przechodzimy do katalogu tymczasowy
cd tymczasowy

#zamiana spacji na podkreslnia w plikach z rozszerniem JPEG
for file in *.JPEG
do mv "$file"  "${file// /_}"
done

#zamiana spacji na podkreslenia w plikach z rozszerzeniem JPG
for file in *.PNG
do mv "$file"  "${file// /_}"
done

#zmiana duzych liter na male w rozszerzeniach plików
for file in *JPEG
do mv $file `basename $file .JPEG`.jpeg
done

for file in *PNG
do mv $file `basename $file .PNG`.png
done

#Zmiana rozmiaru wszystkich obrazkow do tego samego rozmiaru
for file in *jpeg
do convert "$file" -resize "$rozmiar!" "$file"
done

for file in *png
do convert "$file" -resize "$rozmiar!" "$file"
done

#tworzymy archiwum w danym katalogu ze wszystkich plików zakończonych png i jpeg
tar -cvf archiwum.tar *png *jpeg

mv archiwum.tar *jpeg *png cd ..

cd ..

rmdir tymczasowy


