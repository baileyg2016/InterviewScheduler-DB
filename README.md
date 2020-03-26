# Inserting a Student to the Database

Use: to insert a student in the Students table.

``` CALL insertStudent(FirstName, LastName, Email (with @vt.edu), AcademicYear (Senior), and Major)```

# Updating a student in the database

Use: update a student in the students table. We are using the current email to query the 
primary key to update everything else. If a param is not changing, just add what the current
param is. 

``` CALL updateStudent(FirstName, LastName, CurrentEmail, New Email (if not changing use, same one), NewAcademicYear, NewMajor)```

ex: ```CALL updateStudent('Billy', 'Joe', 'bj123@vt.edu', 'bj123@vt.edu', 'Sophomore', 'Biology');```

# Query all information about a student

Use: To query all the information about a student.
Output: Firstname, Last name, Email, Academic Year, Major, Interview Time, Position, Notes

``` CALL queryStudentInfo(Email, Company, CareerFairSemester, CareerFairYear)```


# Query all the students that attended a career fair

Use: to query all of the students that attended career fair
Output: the first name, last name, Email, academic year, and major for everyone who attended that career fair.

``` CALL queryStudentsFromCareerFair(Career Fair Semester, Career fair year);```


# Query a company's password

Use: to obtain the password for a company to login
Output: their password. Should be hashed.

``` CALL queryCompanyPassword(Company Name);```


# Query an admin's password

Use: bad name but queries an admins password
Output: their hashed password

``` CALL queryAdminInfo(Admin username);```


# Query a company's interviews

Use: to query who is interviewing with a specific company
output: Interviewees First names, last names, emails, academic years, majors, interview times, positions, notes.

``` CALL queryCompanyInterviews(Company Name)```


# Updating a Students notes/comentary

Use: to update a students commentary. Right now you need to include the current commentary, but will make it append later. Just tell us when you want it.

``` CALL updateStudentNotes(Email, Company, new notes, Semester of interview, Year of interview);```



# Deleting a Company From a Career Fair

Use: to delete a company from a career fair

``` CALL deleteCompanyFromCareerFair(Company, Semester of career fair, Year of career fair)```




# Insert a Company to a Career Fair

Use: to insert a company to a career fair. If not in the system already, you will need to add them
first. If we need to we can make the procedure more robust and check all of this for you. Just let us know. 

``` CALL insertCompanyToCareerFair(Company, Semester of career fair, year of career fair)```


# Adding an interview to the schedule

Use: to add an interview to a companies schedule right now does not check if there is an interview for that time right now. Formatting of the time can change too.

``` CALL addInterviewToSchedule(Company, Email of student, Time of interview (11:00 am), position, Notes, Semester of interview, year of interview)```



# Updating an interview in the schedule

Use: to make a change to an interview in the schedule. If a parameter is not changing, just add it
how it currently is.

``` CALL updateInterviewSchedule(Company, Email, Interview time, Position, Notes, Semester of interview, Year of interview)```


# Adding a Career Fair to the System

Use: to add a career fair to the system

``` CALL addCareerFair(Semester, Year)```



# Updating a career fair in the system

Use: Updating a career fair that is currently in the system

``` CALL updateCareerFair(Current Semester, Current Year, Updated Semester, Updated Year)```






















