An example of a Spring Boot Security application, with user authentication and their creation
============================

* Used Spring Boot and Spring Security
* Gradle as a build tool
* Customized login form
* DAO-based authentication
* "remember me" authentication
* Can create various users with ADMIN and USER roles

Requirements
-------------------------
* [Java Platform (JDK) 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Gradle 2.9](http://gradle.org/)

Quick start
-------------------------
1. Make a database in MySql. (https://www.mysql.com/downloads/)
	Connection port: 3306
	Database has to have a schema called 'springbootdb'.
	Schema has to have a table 'users', with columns: user_id, email, password_hash and role
	
2. Go to the application directory and hit `gradle bootrun`
3. Point your browser to [http://localhost:8080/)