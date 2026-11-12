# Text Spectacles – Security Web Application

## About the Project
Text Spectacles is a Java EE web application developed to demonstrate web application security, user authentication, role-based access control and database persistence.

The application allows authorised users to manage agent information according to their assigned roles. It uses form-based authentication to control access to protected resources.

## Technologies Used
- **Java** – Application development
- **Java EE** – Enterprise web application development
- **JSP (JavaServer Pages)** – User interface
- **Servlets** – Request processing and application logic
- **Enterprise JavaBeans (EJB)** – Business logic
- **JPA (Java Persistence API)** – Database persistence
- **Java DB / JDBC DataSource** – Database connectivity (depending on the configured GlassFish datasource)
- **GlassFish Server** – Application server
- **NetBeans IDE** – Development environment

## Features

- Form-based user authentication.
- Role-based access control.
- Admin and Manager user roles.
- Add new agent records.
- View registered agents.
- Database persistence using JPA.
- Session management and logout functionality.
- Restricted access to protected application resources.

## User Roles
The application implements two security roles:

Admin (role)
Add agent information (permissions)

Manager (role)
View all agent information (permissions)

Access to protected resources is controlled through security constraints configured in `web.xml`.

## Project Structure
The application consists of two NetBeans projects:

**1. TextSpectaclesEJBModule**
- Agent entity
- AgentFacade
- AgentFacadeLocal
- AbstractFacade
- Persistence configuration

**2. TextSpectaclesWebApp**
- JSP pages
- Servlets
- Web deployment descriptor
- Security configuration

## Database and Persistence
The application uses JPA and an EJB persistence unit named `TextSpectaclesEJBModulePU`.

The persistence configuration uses the following JTA datasource:

`jdbc/__default`

The database schema generation is configured to create the required database tables.

## Security Configuration

Application security is configured using:

- `web.xml` – Defines security constraints, authentication and application roles.
- `glassfish-web.xml` – Maps application roles to GlassFish user groups.
- GlassFish File Realm – Used for user authentication.

The application uses FORM authentication with separate login and login-error pages.

## Learning Outcomes
Through this project, I gained practical experience in:

- Java EE web application development.
- Implementing form-based authentication.
- Understanding role-based access control.
- Working with Servlets and JSP.
- Developing EJB business logic.
- Using JPA for database persistence.
- Configuring application security in GlassFish.
