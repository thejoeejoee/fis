# Koordinace IoT na bázi MicroPythonu pomocí Node-RED

### Abstrakt
Cílem této práce je vytvoření prostředků pro použití nástroje Node-RED ke koordinaci fyzických
uzlů v podobě čipů ESP32 ve světě Internetu věcí.
To je zajištěno pomocí vlastního rozšíření tohoto nástroje umožňující nasazování různorodých aplikací na uzly
simultánně vedle sebe, navrženého protokolu ve formě kanálů MQTT a vlastního firmwaru pro tyto uzly.
Navržený a realizovaný firmware v jazyce MicroPython je schopen asynchronní obsluhy jednotlivých aplikací, pro
které poskytuje rozhraní pro komunikaci s nástrojem Node-RED.
Funkce tohoto systému je úspěšně ověřena na základě dvou praktických scénářů užití, které prokazují možnost přímého
nasazení systému do praxe v oblasti automatizace -- a to i díky přiloženému instalátoru firmwaru.

### Obsah média
* `xkolar71-koordinace-iot.pdf` - technická zpráva k bakalářské práci
* `doc/` - zdrojového kódy k technické zprávě bakalářké práce, obsahuje soubor `Makefile` s výchozím cílem pro vysázení výsledného PDF dokumentu
* `esp-firmware/` - zdrojové kódy firmwaru na uzly ESP32 - obsahuje instalátor popsaný v příloze technické zprávy
* `node-red-contrib-fis/` - zdrojové kódy rozšíření nástroje Node-RED - instalace pomocí balíčkovacího nástroje jazyka Javascript
* `fis-node-red/` - příklad konfigurace běhového prostředí pro nástroj Node-RED s použitým rozšířením
* `scenario-1-flow.json` - serializovaná síť z prvního testovacího scénáře ve formátu JSON - obsahuje pro nástroj Node-RED veškerou konfiguraci bloků a konfiguračních bloků, kterou lze přímo importovat
* `scenario-2-flow.json` - serializovaná síť pro druhý scénář

Licencováno pod MIT.
Josef Kolář 2019