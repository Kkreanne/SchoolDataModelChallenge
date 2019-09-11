Select * from Student
inner join Enrollment
on Enrollment.StudentID = Student.ID;

Select * from Enrollment
join Course
on Course.ID = Enrollment.CourseID;

Select * from Enrollment
	inner join Student
	on Student.ID = Enrollment.StudentID
	inner join Course
	on Enrollment.CourseID = Course.ID;

alter table course
	add column GivenQuarter int
	after Number;

select * from course;

select * from course 
	where Subject = 'Math'
    order by Name;
    
    
-- went over above HW

select FirstName, LastName, CourseID, grade
	from student s
	join enrollment e
    on s.ID = e.StudentID;
    
select subject, name, CourseID, grade
	from course c
	join enrollment e
    on c.ID = e.CourseID;
    
select s.FirstName, s.LastName, e.Grade, c.Subject, c.Name 
	from student s
	join enrollment e
		on s.ID = e.StudentID
	join course c
		on c.ID = e.CourseID;
        




