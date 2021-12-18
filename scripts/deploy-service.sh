cp $PWD/target/test-0.0.1-SNAPSHOT.jar /home/rupendra/app.jar
cd /home/rupendra
docker build -t test-app .
systemctl status docker

