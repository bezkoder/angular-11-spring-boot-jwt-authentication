In this tutorial, I will show you how to build a full stack Angular 11 + Spring Boot JWT Authentication example. The back-end server uses Spring Boot with Spring Security for JWT Authentication & Authorization, Spring Data JPA for interacting with database. The front-end will be built using Angular 11 with HttpInterceptor & Form validation.

## Angular 11 Spring Boot JWT Authentication example
It will be a full stack, with Spring Boot for back-end and Angular 11 for front-end. The system is secured by Spring Security with JWT Authentication.

User can signup new account, login with username & password.
Authorization by the role of the User (admin, moderator, user)
Screenshots
Here are UI screenshots of our system.

– Anyone can access a public page before logging in:

![Angular 11 Spring Boot JWT Authentication Public Page](angular-11-spring-boot-jwt-authentication-public-page.png)

– New user registration:

![Angular 11 Spring Boot JWT Authentication User Registration](angular-11-spring-boot-jwt-authentication-user-registration.png)

– Signup Form Validation:

![Angular 11 Spring Boot JWT Authentication Form Validation](angular-11-spring-boot-jwt-authentication-form-validation.png)

– After signup is successful, User can login:

![Angular 11 Spring Boot JWT Authentication User Login](angular-11-spring-boot-jwt-authentication-user-login.png)

-Loggedin User can access Profile page/ User page:

![Angular 11 Spring Boot JWT Authentication Profile Page](angular-11-spring-boot-jwt-authentication-user-profile.png)

![Angular 11 Spring Boot JWT Authentication User Board](angular-11-spring-boot-jwt-authentication-user.png)

– This is UI for **admin**:

![Angular 11 Spring Boot JWT Authentication Admin UI](angular-11-spring-boot-jwt-authentication-authorization-successful.png)

– If a User who doesn’t have Admin role tries to access **Admin**/**Moderator Board** page:

![Angular 11 Spring Boot JWT Authentication Authorization](angular-11-spring-boot-jwt-authentication-authorization-failed.png)

## Demo
This is full Angular + Spring Boot JWT authentication demo (with form validation, check signup username/email duplicates, test authorization with 3 roles: Admin, Moderator, User).

[![Angular + Spring Boot JWT Authentication & Authorization example](http://img.youtube.com/vi/QdXHkybzrUU/0.jpg)](http://www.youtube.com/watch?v=QdXHkybzrUU)

## Flow for User Registration and User Login
The diagram shows flow for User Registration process and User Login process.
![Angular 11 Spring Boot JWT Authentication Flow](angular-11-spring-boot-jwt-authentication-authorization-flow.png)

It’s not too difficult to understand. We have 2 endpoints for authentication:

* `api/auth/signup` for User Registration
* `api/auth/signin` for User Login

If Client wants to send request to protected data/endpoints, a legal JWT must be added to HTTP Authorization Header.

## Spring Boot & Spring Security for Back-end
![Angular 11 Spring Boot JWT Authentication Back-end](angular-11-spring-boot-jwt-authentication-authorization-server.png)

## Angular 11 for Front-end
![Angular 11 Spring Boot JWT Authentication Front-end](angular-11-spring-boot-jwt-authentication-authorization-client.png)

For more details, please visit:
[https://bezkoder.com/angular-11-spring-boot-jwt-auth/](https://bezkoder.com/angular-11-spring-boot-jwt-auth/)