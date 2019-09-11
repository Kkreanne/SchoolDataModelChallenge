drop database if exists school_db;
create database school_db;
use school_db;

create table Student (
	ID				int				primary key auto_increment,
    FirstName		varchar(25)		not null,
    LastName		varchar(25)		not null,
    Address			varchar(50)		not null, -- add fields city, state, zip
    Birthdate		date			not null,
    PhoneNumber		varchar(12)		not null,
    Email			varchar(50)		not null,
    SSN				varchar(11)		not null,
    Gender			varchar(1)		
    );
    
create table Course (
	ID				int				primary key auto_increment,
    Subject			varchar(50)		not null,
    Name			varchar(100)	not null,
    Credits			int				not null,
    Number			varchar(50)		not null
    );
    
create table Enrollment (
	ID				int			primary key auto_increment,
    StudentID		int			not null,
    CourseID		int			not null,
    Grade			varchar(1)	not null,
    foreign key (StudentID) references Student(ID),
    foreign key (CourseID) references Course(ID)
    );
    -- foreign key (ReportID) references Report(ID)
    
-- create table ReportCard (
	-- ID				int			primary key auto_increment,
    -- StudentID		int			not null,
    -- CourseID		int			not null,
    -- EnrollmentID	int			not null,
    -- GradeID			varchar(1)	not null,
    -- QuarterID		int			not null,
	-- foreign key (StudentID) references Student(ID),
    -- foreign key (CourseID) references Course(ID),
    -- foreign key (EnrollmentID) references Enrollment(ID)
    -- foreign key (GradeID) references Grade(ID),
    -- foreign key (QuarterID) references Quarter(ID)
    -- );
    
    -- create tables Grade and Quarter
    
insert Student (FirstName, LastName, Address, Birthdate, PhoneNumber, Email, SSN, Gender) 
	Values ('Karlee', 'Abrams', '3391 State Route 132 Amelia, OH 45102', '1991-10-30', '513-608-1672', 'karkar1030@yahoo.com', 'XXX-XX-XXXX', 'F');
insert Student (FirstName, LastName, Address, Birthdate, PhoneNumber, Email, SSN, Gender) 
	Values ('Sierra', 'Abrams', '6340 Carley Lane Cincinnati, OH 45248', '1996-12-24', '513-607-9723', 'siesie1224@yahoo.com', 'XXX-XX-XXXX', 'F');
insert Student (FirstName, LastName, Address, Birthdate, PhoneNumber, Email, SSN, Gender) 
	Values ('Heather', 'Brians', '123 Boudinot Ave Cincinnati, OH 45238', '1969-03-14', '513-236-5944', 'mombaha@yahoo.com', 'XXX-XX-XXXX', 'F');
insert Student (FirstName, LastName, Address, Birthdate, PhoneNumber, Email, SSN, Gender) 
	Values ('Tommy', 'Johnson', '3391 State Route 132 Amelia, OH 45102', '1992-11-15', '513-713-7044', 'tomsterj1@yahoo.com', 'XXX-XX-XXXX', 'M');
insert Student (FirstName, LastName, Address, Birthdate, PhoneNumber, Email, SSN, Gender) 
	Values ('Jacob', 'Smith', '19 Main St Williamsburg, OH 45014', '1999-01-20', '513-762-1290', 'jjohnson5@yahoo.com', 'XXX-XX-XXXX', 'M');
    
insert Course (Subject, Name, Credits, Number)
	Values ('Math', 'Pre-Calculus', 3, 'MAT 123');
insert Course (Subject, Name, Credits, Number)
	Values ('Math', 'Advanced Algebra', 3, 'MAT 112');
insert Course (Subject, Name, Credits, Number)
	Values ('Science', 'Biology 101', 3, 'BIO 101');
insert Course (Subject, Name, Credits, Number)
	Values ('History', 'How the Internet Began', 3, 'HIS 100');
insert Course (Subject, Name, Credits, Number)
	Values ('Science', 'Intro to Business', 3, 'BUS 130');
    
insert Enrollment (StudentID, CourseID, Grade)
	Values (1, 1, 'C');
insert Enrollment (StudentID, CourseID, Grade)
	Values (2, 1, 'B');
insert Enrollment (StudentID, CourseID, Grade)
	Values (3, 4, 'A');
insert Enrollment (StudentID, CourseID, Grade)
	Values (4, 1, 'A');
insert Enrollment (StudentID, CourseID, Grade)
	Values (5, 5, 'D');
    
    
-- insert ReportCard, Grade and Quarter