# Project Name
Script BASH/SHELL Delete_space_and_choose_photo_size

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [How to use](#how-to-use)
* [Status](#status)
* [Test](#test)
* [Contact](#contact)

## General info
This is script, which copies from chose one catalog all files with photos in format JPEG/PNG, change these file extensions on write small lettering, instead space in files name add "_", change size photo to entered argument in script and created archive with this files.

## Technologies
SHELL/BASH

## How to use
Being in folder with script enought in terminal(BASH/SHELL) enter: ./Script.sh and follow instruction(in Polish version).

## Status
Only Polish version(I will upgrade this, in the closest future).
In working...

## Test
Script tests only in polish version(I will upgrade this, in the closest future)

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
Skrypt działa zgodnie z założeniami.

## Contact
Created by Marek Szulak
