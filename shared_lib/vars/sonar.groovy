def call() {
  //SonarQube scan steps
  sh 'mvn sonar:sonar -Dsonar.projectKey=sonar -Dsonar.host.url=//16.171.24.243:9000 -Dsonar.java.binaries=targest/classes'
}
return this
