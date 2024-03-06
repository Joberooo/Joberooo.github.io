# Wymagane oprogramowanie
- Visual Studio Code - https://code.visualstudio.com/download
- Node.js - https://nodejs.org/en/download
- DockerDesktop - https://www.docker.com/products/docker-desktop/
- Ubuntu WSL - Miscrosoft Store - Pierwsza wyświetlająca się opcja

# Aktualizacje komputera - Wymagane
1. Uruchamiamy *Windows Upadate*
2. Wyieramy *opcje zaawansowane*
3. Zaznaczamy pierwszę opcję *"Otrzymuj aktualizacje innych produktów fimy Microsoft"*

# Aktualizacja do WSL 2 (Jeżeli ktoś ma WSL 1)
1. Odpalamy wiersz poleceń ***CMD***
2. Wpisujemy komendę ```wsl --set-default-version 2```
3. Wpisujemy komedę ```wsl --set-version Ubuntu-20.04 2```
4. *(Opcjonalnie - sprawdzenie wersji)* ```wsl -l -v```

# Instalacja Docker i Docker Compose
1. ```sudo apt-get update```
2. ```sudo apt-get install ca-certificates curl```
3. ```sudo install -m 0755 -d /etc/apt/keyrings```
4. ```sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc```
5. ```sudo chmod a+r /etc/apt/keyrings/docker.asc```
6. <code>echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null</code>
7. ```sudo apt-get update```
8. ```sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin```
9. *(Opcjonalne - do sprawdzenia działania)* ```sudo docker run hello-world```
10. ```sudo groupadd docker```
11. ```sudo usermod -aG docker $USER```
12. ```newgrp docker```
13. ```sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose```
14. ```sudo chmod +x /usr/local/bin/docker-compose```

# Lista kroków w celu wykonania pracy na Bazie Danych 
0. Przejście do folderu, w którym znajduje się plik ***docker-compose.yml***
    ``` cd /mnt/c/Users/imie.nazwisko/Desktop/Docker ``` (***Należy wpisać pełną ścieżkę dostępową do wcześniej pobranego folderu Docker***)
1. Uruchomienie naszych kontenerów dockerowych
    - komenda do uruchomienia docker deamon (***w momencie gdy pojawia się błąd "is docker running?" po wpisaniu poniżeszj komendy***)
    ``` sudo service docker start ```
    - komenda do uruchomienia:
    ``` docker-compose up ```
2. Uruchomienie środowiska do pracy z bazą danych
    - Włączenie przeglądarki internetowej
    - W polu do wpisywania linku wpisać [localhost:8080](http://localhost:8080/) i wcisnąć ***Enter***
    - Wpisać dane logowania: 
        - Login: ***uzytkownik***
        - Hasło: ***haslouzytkownika***
3. Na liście po lewej stronie wybrać bazę danych: ***mojabaza***
4. Następnie na górze okna wybrać zakładkę: ***SQL***
5. Po wpisaniu zapytania SQL należy je zatwierdzić przeciskiem ***Go***
6. *(Opcjonalne)* Zatrzymanie naszych kontenerów dockerowych *(wykonywane tylko przy zakończeniu pracy i uprzednim zapisaniu jej stanu)*
    - skrót klawiszowy wykonywany w konsoli ***Ubuntu WSL*** zatrzymujący działanie kontenerów: 
    ``` CTRL + C ```

# Pomocnicze komendy
### Komendy do czyszczenia i uruchamiania dockera na "czysto"
```
docker-compose down
docker system prune -a
docker volume rm $(docker volume ls -q)
docker-compose up --build
```

### W przypadku braku folderu node_modules w backendzie
```
cd backend
npm install
```