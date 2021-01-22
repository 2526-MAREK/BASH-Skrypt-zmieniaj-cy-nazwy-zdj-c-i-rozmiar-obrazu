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

#TESTY SKRYPTÓW:
#Skrypt umieściłem w katalogu gdzie są obrazy do przerobienia, Testuje skrypt na obrazach z odpowiednimi rozszerzeniami(.jpeg i .png, pisane z dużych liter) i w nazwach zdjęć są #spacje
#1 Test
#Jeśli użytkownik poslucha się polecen,to wszystko działa jak należy, czyli skrypt tworzy archiwum i kopie przetworzonych zdjęć(Przetworzone zdjęcia czyli zamiana spacji na podkreślenia w nazwie zdjęcia, zmiana na źądany rozmiar i zmiana rozszerzeń pisanych z dużej litery na małe)
#Skrypt działa prawidłowo
#2 Test
#Jeśli użytkownik nie poslucha się polecen i nie wpisze kropki skrypt nie zadziała bo wtedy cofa użytkownika do katalogu domowego gdzie raczej nie bedzie tych zdjęc które chcemy #przetworzyć
#Skrypt działa prawidłowo
#3 Test
#Jeśli użytkownik skryptu wpisze cyfre lub znak, gdy program pyta o katalog w jakim się znajdujemy przetwarzanie obrazów wykona się prawidłowo
#Skrypt działa prawidłowo
#4 Test
#Jeśli użytkownik wpisze ciąg znaków lub cyfr albo zmiesza te formy danych wtedy gdy skrypt prosi o rozmiar zdjeć to program wykona się lecz rozmiar zdjęć się nie zmieni. Użytkow#nik może wpisać tylko odpowiednią forme jeśli chce uzyskac zmianę rozmiarów obrazów.
#Skrypt działa prawidłowo

#Teraz skrypt umieściłem w innym katalogu niż nasze zdjęcia
#5 Test
#Po wprowadzeniu odpowiedniego katalogu gdzie są nasze zdjęcia skrypt wykonuje się prawidłowo
#Program działa prawidłowo
#6 Test
#Po wprowadzeniu błędnego katalogu skrypt wyświetla długa liste błędów, że nie może znalezc żadnego pliku który pasuje do wzorca
#Skrypt działa prawidłowo

#WNIOSKI
#Skrypty w bashu umożliwiają nam bardzo dużo, możemy nimi łatwo i przyjemnie ułatwić nasza prace z systemem LINUX. Mega przydatna rzecz i w przyszłości napewno będę z niej z przyjemnościa korzystać ;) 


