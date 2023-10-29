### Pre-requistes:
- Install Maven Integration plugin
- Install git plugin

### Maven Pre-requistes:
1. Click on "Manage Jenkins."
2. Then, click on "Tools."
3. Next, click on "Add Maven."
4. Provide a name and click on "Save."

### Clone a Git repository:
- Git Repository [Link](https://github.com/jenkins-docs/simple-java-maven-app)

### Building a Jar using Maven:
- Command:
```
-B -DskipTests clean package
```

### Test the code:
- Command:
```
test
```

### Shell Command for Deploy the Jar Locally:
- Command:
```
java -jar /var/jenkins_home/workspace/maven-job/target/my-app-1.0-SNAPSHOT.jar
```

### Post-build actions:
- Display the result of test using graph
- Archive the Artifact