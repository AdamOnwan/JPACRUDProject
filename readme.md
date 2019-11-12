## JPACRUDProject

### Overview
This program simulates a WWE database CRUD.

### Technologies/topics used
Spring Boot
- JSP files to display to web information passed by the java controller and allowing user interaction
- Mapping annotations such as @entity, @generatedvalue, @column, was used to map java program to sql database
- Junit5 used to ensure my entities are working in my JPA project
- Gradle used to manage dependencies and build scripts for me so I can communicate to jsp files
- Spring boot used to make the development process easy since servlets and other development configurations are already configured for me
- JPA, entity manager, and command object used for advanced request handling to get information to do CRUD
SQL - commands SELECT to gather information in and display the it neatly from the database
MySQLWorkbench - Used to create a table, fields, and inserting information into the table
### Lessons learned
- Struggled with LocalDate, and things were not working because of it. For now I deleted it, I may come back to it later, I've read that maybe @Temporal will do the trick, maybe not. What was happening was it did not like being a string, and I tried formatter on it, but still would not work, most likely due to me using type="date", calendar and not knowing the exact format of it.
- Struggled with update, I did not want the ID to be tempered with or have someone enter in an ID, solved by hiding a checkbox=true with the ID. Also I recall issues with int not wanting to be a string. Solved by rereading material and using the shortened version of @RequestParam, which does the magic to make the ID be able to go through without errors.
- Basically need to work on time management, I spent too much time trying to fix things, due to it being complex or not using the right way to go about it. Also I manually entered into SQL database 50 inserts, rather than utilize time wisely and got things working and maybe practice with REGEX instead to get automatically retrieve all the information, since the information does look somewhat easy to get if I remember how to get REGEX to work.
- The error messages are very helpful pinpointing the issue, but I find myself too frustrated to look at them and keep trying things not totally related to the error message. Also sometimes error messages are not helpful as well, but still need to read them carefully.
