# Hornet Tutorial 

The community driven iota node

Text Paul Schumacher (PIOTA) 

## Die Pre-Coordicide Lösung - Hornet-Node 
Am 11. Dezember 2019 wurde die leistungsfähige IOTA Hornet Node in der Version 0.1.0 veröffentlicht. Das tolle an Hornet ist, das die Node keine hohen Hardwareanforderungen benötigt und bereits auf einem handelsüblichen Raspberry Pi läuft. Was Ihr dazu alles braucht und wie jeder Interessierte selbst eine Hornet Node aufsetzen kann, erfahrt Ihr im nachfolgenden Beitrag. Für die Umsetzung sind nur 4 grundlegende Schritte nötig. 

## 1. Voraussetzungen
Um direkt loslegen zu können, benötigt Ihr zunächst ein paar  Komponenten, wobei ich Euch die Folgenden empfehlen würde: 

- Raspberry Pi 4 mit 4 GB RAM
- Bruphny Gehäuse mit Lüfter und 4 Kühlkörpern + 5V 3 A USB-C Netzteil (ist alles dabei)
- MicroSD Karte mit mind. 64 GB. Für den Langzeitbetrieb empfehle ich Euch eine externe 2,5 Zoll SSD Festplatte (ab 256 GB) mit einem HighSpeed USB 3.0 -            Anschluss
- USB-Kartenlesegerät für microSD Karten
- Adapterkabel von Micro HDMI auf HDMI
- Kabelgebundene USB-Tastatur
- Einen Monitor mit einem HDMI-Eingang (für die Ersteinrichtung)

## 2. Grundlegende Einrichtung des Raspberry Pi’s
Als Erstes wird die microSD Karte mit dem Betriebssystem Ubuntu Server 20.04 geflasht. Dazu ladet Ihr Euch das Betriebssystem einmal von der Homepage https://ubuntu.com/download/raspberry-pi herunter und installiert dieses auf Eure microSD-Karte mithilfe des Flashing-Tools BalenaEtcher oder Rufus. Diese beiden Tools werden kostenfrei von den Herstellern zum Download angeboten. 

<img: Raspberry Pi 4 mit dem Scheibengehäuse >
Raspberry Pi 4 mit dem Scheibengehäuse 
Nach dem Zusammenbau und der ersten Inbetriebnahme Eures Raspberry Pi’s müsst Ihr Euch mit dem Standardbenutzernamen “ubuntu” und dem Standardpasswort “ubuntu” einloggen. Danach müsst Ihr das Standardpasswort ändern indem Ihr einmal das aktuelle PW eintippt und anschließend ein neues PW erstellt.

## 3. Einrichtung des DynDNS-Dienstes  bei NOIP
Da Euch standardmäßig von Eurem Internet-Service-Provider eine dynamische IP-Adresse zugewiesen wird, welche sich in regelmäßigen Zeitabständen ändert, benötigt Ihr für die Verwendung mit Trinity oder für das Eintragen Eurer Node in den einfachIOTA Nodepool einen festen Domain-Namen, welche Ihr bspw. von dem DynDns Anbieter NOIP erhalten könnt. Erstellt dazu einfach einen Account bei noip.com und wählt einen frei verfügbaren Hostnamen für Eure Node aus. Danach müsst Ihr nur noch den NOIP-Client auf Eurem Raspberry Pi installieren und Euer Raspberry Pi ist ab sofort unter Eurem selbst gewählten Hostnamen aus dem Internet erreichbar. 

## 4. Installation der Hornet-Node
Danach können wir uns auch schon der  Einrichtung der Hornet-Node widmen, welche dank des HLM-Skripts von No8ody sehr benutzerfreundlich geworden und auch wirklich für jeden Anfänger bestens geeignet ist.  

Um die Hornet-Node über das Bash-Skript zu installieren, müsst Ihr lediglich die drei nachfolgenden Befehle in das Terminal Eures Raspberry Pi’s eingegeben: 

```
1: cd /var/lib && sudo git clone https://github.com/TangleBay/hornet-light-manager.git && sudo chmod +x /var/lib/hornet-light-manager/hlm.sh
2: echo "alias hlm='sudo /var/lib/hornet-light-manager/hlm.sh'" >> ~/.bashrc && . ~/.bashrc
3: hlm

```
Beim ersten Aufruf des Skripts könnt Ihr dann noch ein paar grundlegende Eintragungen, wie den Release Channel sowie einen Benutzernamen und Passwort für das Dashboard sowie auch alternative Ports für die Nodekommunikation und das Autopeering festlegen. Die Einstellungen werden durch die Tastenkombination Strg+o und Enter übernommen und die Datei wieder mit Strg+x verlassen werden.  

<img: Hornet Installer Config File>
Hornet Installer Config File

Anschließend könnt Ihr die Installation der Hornet-Node anstoßen. Wählt hierzu unter den HLM-Tools die “1” aus und bestätigt die Eingabe mit der Enter Taste.

<img Willkommen beim Hornet Lightwight Installer>
Willkommen beim Hornet Lightwight Manager

Nach Abschluss des Installationsvorgangs könnt Ihr das neue Dashboard über die Adresse: EuerDomainname.tld erreichen. That’s it! Ich wünsche Euch viel Spaß mit Eurer eigenen Hornet-Node.   
