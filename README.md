Spring Boot MVC Mini Project
============================

**Overview** :
This is a Spring Boot MVC Mini Project demonstrating a complete CRUD (Create, Read, Update, Delete) web application using the Spring MVC architecture.
It follows the Controller → Service → Repository layered design, integrates a database, and uses JSP for dynamic HTML rendering.

**Features**:
1.Add new records via a form
2.View list of all records
3.Update existing records
4.Delete records
5.Server-side validation
6.Clean MVC separation of concerns

**Technologies Used**:
1.Java – JDK 17 (or compatible)
2.Spring Boot – v3.x
3.Spring MVC – for request handling
4.JSP – for view rendering
5.Spring Data JPA – for persistence
6.Hibernate – ORM implementation
7.H2 Database (in-memory) / MySQL (configurable)
8.Maven – for build and dependency management

**Project Structure**:
SpringBootMVC-proj07-MiniProject/
│── src/main/java/com/abhinash/controller  # Controllers
│── src/main/java/com/abhinash/service     # Business logic
│── src/main/java/com/abhinash/repository  # Data access layer
│── src/main/resources/templates           # Thymeleaf HTML pages
│── src/main/resources/static              # CSS, JS, Images
│── src/main/resources/application.properties
│── pom.xml                                # Maven dependencies**

**Clone the Repository** :
git clone https://github.com/Abhinash1047/Spring-Boot-MVC-Mini-Project-01-.git
cd Spring-Boot-MVC-Mini-Project-01-/SpringBootMVC-proj07-MiniProject

**Configure Database** :
By default, the project uses H2 in-memory DB.
To switch to MySQL, update application.properties:

#MySql Database Configuration
spring.datasource.url=jdbc:mysql://localhost:3306/your_db
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.database-platform=org.hibernate.dialect.MySQLDialect
spring.jpa.show-sql=true
spring.jpa.hibernate.ddl-auto=update

#Oracle Database Configuration
#spring.datasource.driver-class-name=oracle.jdbc.driver.OracleDriver
#spring.datasource.username=your_username
#spring.datasource.password=your_password
#spring.datasource.url=jdbc:oracle:thin:@localhost:1521:xe
#spring.jpa.database-platform=org.hibernate.dialect.OracleDialect
#spring.jpa.show-sql=true
#spring.jpa.hibernate.ddl-auto=update

#Emabbed server
server.port=4041

#view resolver config
spring.mvc.view.prefix=/WEB-INF/pages/
spring.mvc.view.suffix=.jsp

