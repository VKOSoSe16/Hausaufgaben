# Hausaufgaben
Unsere Hausaufgaben im Modul `Lösungsstrategien für NP-schwere Probleme der
Kombinatorischen Optimierung` an der Uni Hamburg.

# Rulez
Bitte führt jedes mal, wenn ihr irgendwie `git pull` macht auch eben die `getpackages.sh` aus. Wenn ihr windows benutzt manuell unter https://github.com/hauke96/LaTeX runterladen/pullen (nicht in das VKO-Repo pullen).

# Code-Konvention
## Formatting
* Kein extra `fontenc` aber `ngerman` wird verwendet, nur `inputenc` auf `utf8` gesetzt
 * Ein `inputenc` Wird nicht verwendet, da es zwar erlaubt mathamtische Formeln im Text-Modus zu schreiben, besser ist aber der Mathe-Modus, da somit konsequent die Mathe-fonts verwendet werden
 * Einen Vorteil beim kopieren aus PDFs war bisher auch nicht erkennbar
* Zeilenumbrüche ganz normal über `\\` (eigentlich standard) oder `\newline` (manchmal nicht vermeidbar)
* Absätze nicht mit doppelter Leerzeile, sondern mit `\n` (= neue Zeile mit 5pt extra Platz)
* Alles was mit Mathe zu tun hat gehört in den Mathemodus (auch `|H|` muss zu `$|H|$` werden, da kein `fontenc`)
* Einrückung eigentlich egal, aber bei allem außer `subsubsubsection` wird eingerückt (um 1 Tab)
* Neue Zeile nach jedem Satzende

## Packages/Makros
Es sind zwei Packages hier enthalten: `dadp` (Das AD Package) und `gail` (Grundgerüst für Abgaben in LaTeX).

Die beiden Packages stammen aus https://github.com/hauke96/LaTeX (nicht ins VKO-Repo pullen).

### dadp
Ist eher eine Makro-Sammlung
* Viele Probleme als Makro definiert, z.B. `\sat`, `ţhreesat`, `\hitset`
* Komplexitätsklassen definiert per `\p`, `\np`, `\npc`
* Landaunotation (nur "groß O") durch `\Ovon{x}` gegeben

### gail
Dieses package definiert das Layout des Blattes mit Header und Footer, sowie dem Titelblatt.

Im Headerbereich kann man die Autoren, Daten, etc. für das `\maketitle` definieren. Durch die Nummer des Blattes wird auch z.B. das Abgabedatum berechnet (das Intervall der Abgaben muss dafür natürlich passend gesetzt werden).

Stimmt etwas mit den Daten nicht (z.B. den Namen eines Autors vergessen), wird das direkt rot im Dokument vermerkt (es wird keinen Compiler Error geben!).

An sich ist hier alles soweit definiert, man muss nur drauf achten, dass die Blattnummer stimmt.

### makrocol
Das Paket makrocol enthält allgemeine nützliche Makros für LaTeX/TeX. Es enthält auch `\n` (dies ist nicht mehr in `dadp` enthalten).

Unter anderem enthält es auch die `note` Umgebung für hervorgehobene Bemerkungen/Hinweise/Notizen für den Leser.

#HOWTO:Drucken
Zunächst in den Ordner mit dem Repo cd-en, dann einfach `sh drucken.sh blattxx druckername` eingeben. Das `xx` natürlich durch die Blattnummer (also z.B. `04`) ersetzen und `druckername` durch den Linux bekannten Druckernamen (s.u.).

## Drucker finden
Einfach mit `lpstat -v` die verfügbaren Drucker auflisten.
