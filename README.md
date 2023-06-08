## Instalando o SonarQube

```
docker run -d --network minharede --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
```

## Executando
Acessar localhost:9000 e configurar um projeto
Após configurado basta enviar os dados via sonar scanner


### Via sonar-scanner
```
sonar-scanner \
  -Dsonar.projectKey=go-project2 \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.token=sqp_cd4a7f7ff6b629e81eee7839920ecae670195042
```

### Via Docker

HOST_URL
http://host.docker.internal:9000
http://sonarqube:9000

docker run --rm -e SONAR_HOST_URL="http://host.docker.internal:9000"  -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=go-project2" -e SONAR_TOKEN="sqp_cd4a7f7ff6b629e81eee7839920ecae670195042" -v ".:/usr/src" sonarsource/sonar-scanner-cli



## Building Image

### Docker && Docker Compose
```
docker build -t petrovick/go-sonar .
```

```
docker-compose up
```

```
docker-compose run -w /usr/src/app go-sonar /bin/bash
```
