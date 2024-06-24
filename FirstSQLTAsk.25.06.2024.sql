Create Database DepartmentDB
Use DepartmentDB
Create Table Deparments (
Id Int Not Null Unique Identity (1,1),
Name Varchar (150) Not Null, 
MaxEmployeeCount Int Check (MaxEmployeeCount >= 10 And MaxEmployeeCount <=50)
)
Create Table Positions (
Id Int Not Null Unique Identity (1,1),
Name Varchar (50) Not Null
)
Create Table Employees (
Id Int Not Null Unique Identity (1,1),
Name Varchar (60) Default 'Employee Name', 
Surname Varchar (70) Default 'Employee Surname',
Salary Decimal (18,2) Check (Salary >= 500 And Salary <=12000)
)
Insert Into Deparments
Values 
('Biznes Proseslerin Idaredilmesi', 15),
('Marketing', 12),
('IT', 22)
Insert Into Positions
Values
('Senior Specialist'),
('Junior Specialist'),
('Head of Division')
Insert Into Employees
Values
('Nuray','Khalilova',3567),
('Ayten','Salimov',5674)
Insert Into Employees (Salary)
Values (2550)

Select * From Deparments
Select * From Positions
Select * From Employees
