# A List of All the Store Procedures


## Query the Admins Table

Use: to query all the admins in the Admins Table

```CALL queryAdminsTable();```

## Query the CareerFairCompanies Table

Use: to query all the companies who have attended a career fair

```CALL queryCareerFairCompaniesTable();```

## Query the CareerFairs Table

Use: to query all the career fairs that have ever taken place

```CALL queryCareerFairsTable();```

## Query the CareerFairStudents Table

Use: to query all the students that have ever attended a career fair

```CALL queryCareerFairStudentsTable();```

## Query the Companies Table

Use: to query all the companies that are in the system

```CALL queryCompaniesTable();```

## Query the Interviews Table

Use: to query all the interivews that are currently going on or have already happened in the past

```CALL queryInterviewsTable();```

## Query the Students Table

Use: to query all of the students in the system

```CALL queryStudentsTable();```

## Inserting a Student to the Database

Use: to insert a student in the Students table.

``` CALL insertStudent(FirstName, LastName, Email (with @vt.edu), AcademicYear (Senior), and Major);```

## Updating a student in the database

Use: update a student in the students table. We are using the current email to query the 
primary key to update everything else. If a param is not changing, just add what the current
param is. 

``` CALL updateStudent(FirstName, LastName, CurrentEmail, New Email (if not changing use, same one), NewAcademicYear, NewMajor);```

ex: ```CALL updateStudent('Billy', 'Joe', 'bj123@vt.edu', 'bj123@vt.edu', 'Sophomore', 'Biology');```

## Query all information about a student

Use: To query all the information about a student.
Output: Firstname, Last name, Email, Academic Year, Major, Interview Time, Position, Notes

``` CALL queryStudentInfo(Email, Company, CareerFairSemester, CareerFairYear);```


## Query all the students that attended a career fair

Use: to query all of the students that attended career fair
Output: the first name, last name, Email, academic year, and major for everyone who attended that career fair.

``` CALL queryStudentsFromCareerFair(Career Fair Semester, Career fair year);```


## Query a company's password

Use: to obtain the password for a company to login
Output: their password. Should be hashed.

``` CALL queryCompanyPassword(Company Name);```

## Query an admin's info

Use: queries all the info from an admin
Output: their hashed password

``` CALL queryAdminInfo(Admin username);```

## Query an admin's password

Use: bad name but queries an admins password
Output: their hashed password

``` CALL queryAdminPassword(Admin username);```


## Query a company's interviews

Use: to query who is interviewing with a specific company. 
output: Interviewees First names, last names, emails, academic years, majors, interview times, positions, notes.

``` CALL queryCompanyInterviews(Company Name);```

## Query a students associated with a company

Use: to query who are associated with a specific company. 
output: Interviewees First names, last names, emails, academic years, majors, interview times, positions, notes.

``` CALL queryCompanyStudents(Company Name);```


## Updating a Students notes/comentary

Use: to update a students commentary. Right now you need to include the current commentary, but will make it append later. Just tell us when you want it.

``` CALL updateStudentNotes(Email, Company, new notes, Semester of interview, Year of interview);```



## Deleting a Company From a Career Fair

Use: to delete a company from a career fair

``` CALL deleteCompanyFromCareerFair(Company, Semester of career fair, Year of career fair);```




## Insert a Company to a Career Fair

Use: to insert a company to a career fair. If not in the system already, you will need to add them
first. If we need to we can make the procedure more robust and check all of this for you. Just let us know. 

``` CALL insertCompanyToCareerFair(Company, Semester of career fair, year of career fair);```


## Adding an interview to the schedule

Use: to add an interview to a companies schedule right now does not check if there is an interview for that time right now. Formatting of the time can change too.

``` CALL addInterviewToSchedule(Company, Email of student, Time of interview (11:00 am), position, Notes, Semester of interview, year of interview);```



## Updating an interview in the schedule

Use: to make a change to an interview in the schedule. If a parameter is not changing, just add it
how it currently is.

``` CALL updateInterviewSchedule(Company, Email, Interview time, Position, Notes, Semester of interview, Year of interview,``` 
    ```0 if they are interviewing and 1 if they are not);```


## Adding a Career Fair to the System

Use: to add a career fair to the system

``` CALL addCareerFair(Semester, Year);```



## Updating a career fair in the system

Use: Updating a career fair that is currently in the system

``` CALL updateCareerFair(Current Semester, Current Year, Updated Semester, Updated Year);```


## Updating a Company's Password

Use: To update a company's password

``` CALL updateCompanyPassword(Company Name, New Password); ```


## Query a Company's Email

Use: To query a company's Email

``` CALL queryCompanyEmail(Company Name); ```

## Updating a Company's Email

Use: To update a company's email

``` CALL updateCompanyEmail(Company Name, New Email); ```


## Add an Admin

Use: To add an admin to the system
=> checks if the user name is unique

``` CALL insertAdmin(First Name, Last Name, Username, password); ```


## Remove an Admin

Use: To remove an admin from the system

``` CALL deleteAdmin(Username); ```


## Add a Company

Use: To add a new Company to the system
=> checks if the Company is already in the DB

``` CALL insertCompany(Company Name, Password, An email); ```


## Update an Admin's Password

Use: To updates an admin's password

``` CALL updateAdminPassword(Username); ```

## Delete a Company

Use: Deletes all company associated records from the Companies, Interviews, CareerFairCompanies

``` CALL deleteCompany(Company Name); ```

## Delete a Student who is Associated with a company

Use: To delete a student from a company's scope, whether they are interviewing or not interviewing with them.

``` CALL deleteStudentFromCompanyInterviewTable(Company Name, student email); ```

## Insert a Student who is interivew with a Company or just associating them with it

Use: to associate a student with a company

``` CALL associateStudentWithCompany(Student Email, Company name, CareerFair Semester, CareerFair Year, Interviewing(1) or not(0));```

## Query Students associated with a company. 

Use: to see all the students who are interviewing or not with a company

``` CALL queryCompanyStudents(Company name);```

## Query Students associated with a company and a specific career fair

Use: to see all the students who are interviewing or not with a company at a specific career fair

``` CALL queryCompanyStudentsAtACareerFair(Company name, Semester ("Spring"), Year ("2020"));```

## Query Students interviewing with a company and a specific career fair

Use: to see all the students who are interviewing with a company at a specific career fair

``` CALL queryCompanyInterviewsAtACareerFair(Company name, Semester ("Spring"), Year ("2020"));```


## Query all the companies at a specific career fair

Use: to see all the companies that attended a career fair

``` CALL queryCompaniesAtCareerFair(Semester ("Spring"), Year ("2020"));```

## Query the current career fair

Use: to see the semester and year of the current career fair

``` CALL queryCurrentCareerFair();```

## Set the current career fair

Use: to set the semester and year of the current career fair

``` CALL updateCurrentCareerFair(Semester ("Spring"), Year ("2020"));```