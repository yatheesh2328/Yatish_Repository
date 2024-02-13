def call() {
  //SonarQube scan steps
  sh 'mvn sonar:sonar -Dsonar.projectKey=sonar -Dsonar.host.url=// -Dsonar.java.binaries=targest/classes'
}
return this
