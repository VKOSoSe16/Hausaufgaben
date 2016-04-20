# Hausaufgaben
Unsere Hausaufgaben im Modul `Lösungsstrategien für NP-schwere Probleme der
Kombinatorischen Optimierung` an der Uni Hamburg.

# Rulez
Bitte führt jedes mal, wenn ihr irgendwie `git pull` macht auch eben die `getpackages.sh` aus. Wenn ihr windows benutzt meckert nicht, wenn LaTeX fehler ausspuckt, weil irgendwas in den packages `dadp` oder `gail` kaputt ist ;)

# Code-Konvention
## Formatting
* Kein `fontenc`, nur `inputenc` gesetzt
 * Wird nicht verwendet, da es zwar erlaubt mathamtische Formeln im Text-Modus zu schreiben, besser ist aber der Mathe-Modus, da somit konsequent die Mathe-fonts verwendet werden
* Absätze nicht mit doppelter Leerzeile, sondern mit `\n` (= neue Zeile mit 5pt extra Platz)
* Alles mathamtische als Code, auch `|H|` oder so (wegen `fontenc`)

## Makros
Es sind zwei Makros hier enthalten: `dadp` (Das AD Package) und `gail` (Grundgerüst für Abgaben in LaTeX).

### dadp
* Viele Probleme als Makro definiert, z.B. `\sat`, `ţhreesat`, `\hitset`
* Komplexitätsklassen definiert per `\p`, `\np`, `\npc`
* Landaunotation (nur "groß O") durch `Ovon{x}` gegeben

### gail
Dieses package definiert das Layout des Blattes mit Header und Footer, sowie dem Titelblatt.

Im Headerbereich kann man die Autoren, Daten, etc. für das `\maketitle` definieren. Durch die Nummer des Blattes wird auch z.B. das Abgabedatum berechnet (das Intervall der Abgaben muss dafür natürlich passend gesetzt werden).

An sich ist hier alles soweit definiert, man muss nur drauf achten, dass die Blattnummer stimmt.
