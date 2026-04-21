

Prerequisites: 
- Two EC2 Instances (One for Jenkins and the other for Tomcat).
  -- AMI: Amazon Linux 2023
  -- Instance Type: t3.small free-tier (this is small, though, but okay for learning). 
  -- Security Group: Allow SSH(port 22), Allow port 8080 (for Jenkins)

For the Jenkins EC2 Instance, you can just install the following prerequisites.
- Change to root user to install the packages.
- Java (e.g java-21-amazon-corretto, Amazon's supported OpenJDK build)
- Git
- Jenkins (steps for installing Jenkins: https://www.jenkins.io/doc/book/installing/linux/#red-hat-centos)


## Configure Jenkins
- The default Username is admin
- The default password is located in /var/lib/jenkins/secrets/initialAdminPassword
- Skip Plugin Installation. It can be done later. 
- Change admin password: Admin > Configure > Password

## Integrate Mavens with Jenkins
- Download binary tar.gz archive using `wget` from https://maven.apache.org/download.cgi
- https://www.geeksforgeeks.org/devops/configure-and-integrate-maven-in-jenkins/
- https://www.geeksforgeeks.org/devops/how-to-build-java-application-in-jenkins/

Plugins required:
- Github plugin

Set the path of the plugins under "Manage Jenkins => Tools". You can use a Linux command like "whereis git" to get the path. 


### Configure Java path
Manage Jenkins > Global Tool Configuration > JDK
Create another admin user ID


NOTE:
Due to the size of the EC2 Instance used, apply the following settings to Jenkins.
•	Reduce the executors to 1 (suitable for 1 or 2 vCPU).
•	Lower Jenkins Disk Space Monitoring Threshold under Nodes - Free Disk Space Warning Threshold and Free Temp Space Warning Threshold (to 200 MB).

## Summary of Paths to Remember

| Category       | Path                           | Purpose                                                                                 |
| -------------- | ------------------------------ | ----------------------------------------------------------------------------------------|
| Jenkins Home   | `/var/lib/jenkins/`            | Root directory containing all Jenkins data (jobs, configs, plugins, etc.)               |
| Jobs Directory | `/var/lib/jenkins/jobs/`       | Stores all job configurations and build history                                         |
| Global Config  | `/var/lib/jenkins/config.xml`  | Main system-wide configuration file                                                     |
| Plugins        | `/var/lib/jenkins/plugins/`    | Stores all installed plugins (.hpi/.jpi files)                                          |
| Logs           | `/var/log/jenkins/jenkins.log` | Used for debugging Jenkins issues                                                       |
| Workspace      | `/var/lib/jenkins/workspace/`  | Stores all job configurations and build history. The default working directory for jobs.|                             |
| Secrets        | `/var/lib/jenkins/secrets/`    | Contains encrypted credentials and keys                                                 |
| Web URL        | `http://localhost:8080/`       | Access Jenkins dashboard and jobs                                                       |
| Tools          | `/var/lib/jenkins/tools/`      | Stores installed tools (JDK, Maven, etc.)                                               |


`/var/lib/jenkins/` is equivalent to `C:\ProgramData\Jenkins\.jenkins` on Windows. 
