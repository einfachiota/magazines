# Hornet Tutorial 

The community driven iota node

Text Paul Schumacher (PIOTA) 

## Die Pre-Coordicide Lösung - Hornet-Node 
Am 11. Dezember 2019 wurde die leistungsfähige IOTA Hornet Node in der Version 0.1.0 veröffentlicht. Das tolle an Hornet ist, das die Node keine hohen Hardwareanforderungen benötigt und bereits auf einem handelsüblichen Raspberry Pi läuft. Was Ihr dazu alles braucht und wie jeder Interessierte selbst eine Hornet Node aufsetzen kann, erfahrt Ihr im nachfolgenden Beitrag. Für die Umsetzung sind nur 4 grundlegende Schritte nötig. 

## 1. Voraussetzungen
Um direkt loslegen zu können, benötigt Ihr zunächst ein paar  Komponenten, wobei ich Euch die Folgenden empfehlen würde: 

- Raspberry Pi 4 mit 4 GB RAM
- Bruphny Gehäuse mit Lüfter und 4 Kühlkörpern + 5V 3 A USB-C Netzteil (ist alles dabei)
- MicroSD Karte mit mind. 64 GB. Für den Langzeitbetrieb empfehle ich Euch eine externe 2,5 Zoll SSD Festplatte (ab 256 GB) mit einem HighSpeed USB 3.0 - Anschluss
- Kartenlesegerät für microSD Karten (entfällt bei einer externen SSD-Festplatte) 
- Adapterkabel von Micro HDMI auf HDMI
- Kabelgebundene USB-Tastatur

## 2. Grundlegende Einrichtung des Raspberry Pi’s
Als Erstes wird die microSD Karte mit dem Betriebssystem Raspbian Buster Light geflasht. Dazu ladet Ihr Euch das Betriebssystem einmal von der Homepage  raspberrypi.org/downloads herunter und installiert dieses auf Eure microSD mithilfe der Flashing-Tools Balena Etcher oder Rufus. Diese beiden Tools werden kostenfrei von den Herstellern zum Download angeboten. 

<img: Raspberry Pi 4 mit dem Scheibengehäuse >
Raspberry Pi 4 mit dem Scheibengehäuse 

Nach dem Zusammenbau und der ersten Inbetriebnahme Eures Raspberry Pi’s müsst Ihr Euch mit dem Standardbenutzernamen “pi” und dem Standardpasswort “raspberry” einloggen. Danach solltet Ihr unbedingt das Standardpasswort über die vorinstallierte konsolenbasierte raspi-config Anwendung ändern. Diese erreicht Ihr durch die simple Eingabe des Befehls: sudo raspi-config. Hier könnt Ihr auch, sofern Ihr kein LAN-Kabel zur Herstellung einer Internetverbindung verwendet, auch die WLAN Verbindung einrichten. 

## 3. Einrichtung des DynDNS-Dienstes  bei NOIP
Da Euch standardmäßig von Eurem Internet-Service-Provider eine dynamische IP-Adresse zugewiesen wird, welche sich in regelmäßigen Zeitabständen ändert, benötigt Ihr für die dauerhafte Erreichbarkeit Eurer Node zu Euren Nachbarn eine statische IP-Adresse, welche Ihr bspw. von dem DynDns Anbieter NOIP erhalten könnt. Erstellt dazu einfach einen Account bei noip.com und wählt einen frei verfügbaren Hostnamen für Eure Node aus. Danach müsst Ihr nur noch den NOIP-Client auf Eurem Raspberry Pi installieren und Euer Raspberry Pi ist ab sofort unter Eurem selbst gewählten Hostnamen aus dem Internet erreichbar. 
## 4. Installation der Hornet-Node
Danach können wir uns auch schon der  Einrichtung der Hornet-Node widmen, welche dank des HLI-Skripts von dem Iotaner  No8ody sehr benutzerfreundlich geworden und auch wirklich für jeden Anfänger bestens geeignet ist.  

Um die Hornet-Node über das Bash-Skript zu installieren, müsst Ihr lediglich die vier nachfolgenden Befehle in das Terminal Eures Raspberry Pi’s eingegeben: 

```
1: sudo mkdir hornet-installer && cd hornet-installer
2: sudo wget -O hornet-installer.sh https://raw.githubusercontent.com/TangleBay/hornet-light-installer/master/hornet-installer.sh
3: sudo chmod +x hornet-installer.sh
Anschließend starten wir den Installer mit dem Befehl:
4: sudo ./hornet-installer.sh 
```

Beim ersten Aufruf des Skripts müsst Ihr dann noch ein paar grundlegende Eintragungen,, wie Euer OS sowie des vergebenen Hostnamens und einen Nodenamen für das Tangle Bay Dock vergeben sowie ein paar weitere selbsterklärende Einstellungen vornehmen.  


<img: Hornet Installer Config File>
Hornet Installer Config File

Anschließend könnt Ihr die Installation der Hornet-Node anstoßen. Wählt hierzu die “11” aus und bestätigt die Eingabe mit der Enter Taste.

<img Willkommen beim Hornet Lightwight Installer>
Willkommen beim Hornet Lightwight Installer

Nach Abschluss des Installationsvorgangs könnt Ihr das Dashboard über die Adresse: 127.0.0.1:8081 erreichen. That’s it! Ich wünsche Euch viel Spaß mit Eurer eigenen Hornet-Node.    