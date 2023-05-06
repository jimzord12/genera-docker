# genera-docker
Learing the Art of Dockerition

# SQL Tables Importing
## Navigate to the root directory of the App and execute the command below:
⚠ Do not forget to change: <container_name>
```
type ./data.sql | docker exec -i <container_name> mysql -u root -proot12345 test
```
