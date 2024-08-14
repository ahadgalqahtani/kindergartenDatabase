create table Person 
( 
   ID number(7) PRIMARY KEY, 
   PersonName varchar2(30), 
   city varchar2(30), 
   street varchar2(30), 
   gender varchar2(6), 
   postcode number(7), 
   Ptype varchar2(30) 
);

create table Programs 
( 
   ProgramID number(3) PRIMARY KEY, 
   ProgramTitle varchar2(30) 
);

create table program_topic 
( 
   programID number(3) references Programs(ProgramID), 
   topic varchar2(30), 
   PRIMARY KEY(programID,topic) 
);

create table Student 
( 
   StdID number(7) PRIMARY KEY references Person(ID), 
   YearOfAdmission varchar2(30), 
   programID number(3) references Programs(ProgramID) 
);

create table Employee 
( 
   EID number(7) PRIMARY KEY references Person(ID), 
   Bankaccount varchar2(30), 
   salary number(15), 
   EmType varchar2(30) 
);

create table Teacher( 
   T_EID NUMBER(7) primary key references employee(EID), 
   teachesProgram varchar2(30) 
);

create table Administrator ( 
   A_EID number (7) PRIMARY KEY references employee(EID), 
   position varchar2(30) 
);

create table Caregiver( 
   C_EMID number(7) PRIMARY KEY references employee(EID), 
   rank varchar2 (30) 
);

create table skills( 
   EID number(7) references employee(EID), 
   skills varchar2(30), 
   primary key(EID,skills) 
);

create table teacher_program( 
   T_EMD number(7) references teacher(T_EID), 
   programID number(3) references Programs(programID), 
   primary key(T_EMD,programID) 
);

create table Expenses 
( 
   A_Emp_ID NUMBER(7) references employee(EID), 
   invoice varchar2(30) PRIMARY KEY, 
   maintenance varchar2(30), 
   materials varchar2(30) 
);

INSERT INTO Person (ID, PersonName, city, street, gender, postcode, Ptype) 
VALUES (6859742, 'Alya Al-Mansoor', 'Jeddah', 'King Fahd Road', 'Female', 11543,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (2185037, 'Fatima Abdullah', 'Jeddah', 'Tahlia Street', 'Female', 21514, 'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (4567891, 'Sarah Ibrahim', 'Jeddah', 'Corniche Road', 'Female', 31462,'Student');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (5678905, 'Layla Hassan', 'Jeddah', 'Ibrahim Al-Khalil Street', 'Female', 21551,'Student');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (3456780, 'Abdulrahman Ali', 'Jeddah', 'Qiblatain Street', 'Male', 51523,'Student');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (7491065, 'Noura Al-Farsi', 'Jeddah', 'Prince Turki Street', 'Female', 31952, 'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (2345670, 'Abdullah Saleh', 'Jeddah', 'King Abdulaziz Road', 'Male', 51471,'Student');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (5638921, 'Hanan Al-Mutairi', 'Jeddah', 'Abdulaziz Ibn Saud Street', 'Female', 51432,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (1234560, 'Saad Al-Ghamdi', 'Jeddah', 'King Fahd Street', 'Male', 71461,'Student');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (8472093, 'Lubna Ahmed', 'Jeddah', 'King Abdullah Street', 'Female', 61481,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (1234567, 'Sara Al-Ghamdi', 'Jeddah', 'Al-Masjid Al-Haram Street', 'Female', 21521,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (2345678, 'Aisha Ahmed', 'Jeddah', 'Corniche Boulevard', 'Female', 71234,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (3456789, 'Khaleda Mansoor', 'Jeddah', 'Olaya Street', 'Female', 11542,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (4567890, 'Yousefa Abdullah', 'Jeddah', 'Prince Mohammed Fahd Street', 'Female', 31461,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (5678901, 'Lina Saleh', 'Jeddah', 'Al Rashid Mall Road', 'Female', 31950,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode, Ptype) 
VALUES (6789012, 'Fatima Al-Farsi', 'Jeddah', 'King Abdulaziz Road', 'Female', 21512,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode, Ptype) 
VALUES (7890123, 'Mona Hassan', 'Jeddah', 'King Fahd Street', 'Female', 51524,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode, Ptype) 
VALUES (8901234, 'Nada Ibrahim', 'Jeddah', 'Al-Mathna Street', 'Female', 21999,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (9012345, 'Alya Al-Mutairi', 'Jeddah', 'King Saud Road', 'Female', 61616,'Employee');

INSERT INTO Person (ID, PersonName, city, street, gender, postcode,Ptype) 
VALUES (1123456, 'Hanan Saleh', 'Jeddah', 'Prince Sultan Street', 'Female', 51470,'Employee');

INSERT INTO Programs (ProgramID, ProgramTitle) VALUES (101, 'Montessori');

INSERT INTO Programs (ProgramID, ProgramTitle) VALUES (212, 'High Scope');

INSERT INTO Programs (ProgramID, ProgramTitle) VALUES (303, 'Bank Street');

INSERT INTO Programs (ProgramID, ProgramTitle) VALUES (404, 'Waldrof');

INSERT INTO Programs (ProgramID, ProgramTitle) VALUES (505, 'Traditional');

INSERT INTO Student (StdID, YearOfAdmission, programID) 
VALUES (1234560, '2020', 212);

INSERT INTO Student (StdID, YearOfAdmission, programID) 
VALUES (2345670, '2020', 212);

INSERT INTO Student (StdID, YearOfAdmission, programID) 
VALUES (3456780, '2020', 101);

INSERT INTO Student (StdID, YearOfAdmission, programID) 
VALUES (4567891, '2020', 303);

INSERT INTO Student (StdID, YearOfAdmission, programID) 
VALUES (5678905, '2020', 101);

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (8472093, 'SA123456789', 60000,'Caregiver');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (5638921, 'SA987654321', 75000,'Caregiver');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (7491065, 'SA111223344', 50000,'Caregiver');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (2185037, 'SA555667788', 80000,'Caregiver');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (6859742, 'SA999888777', 70000,'Caregiver');

INSERT INTO Employee (EID, BankAccount, Salary, Emtype) VALUES (1234567, 'SA112233445', 62000,'Teacher');

INSERT INTO Employee (EID, BankAccount, Salary,Emtype) VALUES (2345678, 'SA334455667', 78000,'Teacher');

INSERT INTO Employee (EID, BankAccount, Salary,Emtype) VALUES (3456789, 'SA445566778', 52000,'Teacher');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (4567890, 'SA556677889', 81000,'Teacher');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (5678901, 'SA667788990', 72000,'Teacher');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (6789012, 'SA778899001', 54000,'Administrator');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (7890123, 'SA889900112', 83000,'Administrator');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (8901234, 'SA990011223', 71000,'Administrator');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (9012345, 'SA112233445', 64000,'Administrator');

INSERT INTO Employee (EID, BankAccount, Salary, EmType) VALUES (1123456, 'SA224466889', 55000,'Administrator');

INSERT INTO program_topic (programID, topic) VALUES (101, 'Creative Play');

INSERT INTO program_topic (programID, topic) VALUES (212, 'Early Literacy');

INSERT INTO program_topic (programID, topic) VALUES (303, 'Social Skills Development');

INSERT INTO program_topic (programID, topic) VALUES (404, 'Art and Music Exploration');

INSERT INTO program_topic (programID, topic) VALUES (505, 'Science for Little Minds');

INSERT INTO Teacher (T_EID, TeachesProgram) VALUES (1234567, 'Montessori');

INSERT INTO Teacher (T_EID, TeachesProgram) VALUES (2345678, 'Bank Street');

INSERT INTO Teacher (T_EID, TeachesProgram) VALUES (3456789, 'Traditional');

INSERT INTO Teacher (T_EID, TeachesProgram) VALUES (4567890, 'High Scope');

INSERT INTO Teacher (T_EID, TeachesProgram) VALUES (5678901, 'Waldrof');

INSERT INTO Administrator (A_EID, Position) VALUES (1123456, 'Human Resources Manager');

INSERT INTO Administrator (A_EID, Position) VALUES (6789012, 'Finance Director');

INSERT INTO Administrator (A_EID, Position) VALUES (7890123, 'IT Administrator');

INSERT INTO Administrator (A_EID, Position) VALUES (8901234, 'Facilities Coordinator');

INSERT INTO Administrator (A_EID, Position) VALUES (9012345, 'Marketing Manager');

INSERT INTO Caregiver (C_EMID, Rank) VALUES (2185037, 'Senior Caregiver');

INSERT INTO Caregiver (C_EMID, Rank) VALUES (7491065, 'Junior Caregiver');

INSERT INTO Caregiver (C_EMID, Rank) VALUES (6859742, 'Child Development Specialist');

INSERT INTO Caregiver (C_EMID, Rank) VALUES (8472093, 'Language Support Caregiver');

INSERT INTO Caregiver (C_EMID, Rank) VALUES (5638921, 'Playtime Supervisor');

INSERT INTO Expenses (A_Emp_ID, Invoice, Maintenance, Materials) VALUES (1123456, 'INV12345', 'Office Repairs', 'Office Supplies');

INSERT INTO Expenses (A_Emp_ID, Invoice, Maintenance, Materials) VALUES (6789012, 'INV23456', 'Equipment Maintenance', 'Educational Materials');

INSERT INTO Expenses (A_Emp_ID, Invoice, Maintenance, Materials) VALUES (7890123, 'INV34567', 'Building Renovation', 'Cleaning Supplies');

INSERT INTO Expenses (A_Emp_ID, Invoice, Maintenance, Materials) VALUES (8901234, 'INV45678', 'IT Upgrades', 'Technology Supplies');

INSERT INTO Expenses (A_Emp_ID, Invoice, Maintenance, Materials) VALUES (9012345, 'INV56789', 'Facilities Improvement', 'Art and Craft Supplies');

INSERT INTO teacher_program (T_EMD, ProgramID) VALUES (1234567, 101);

INSERT INTO teacher_program (T_EMD, ProgramID) VALUES (2345678, 303);

INSERT INTO teacher_program (T_EMD, ProgramID) VALUES (3456789, 505);

INSERT INTO teacher_program (T_EMD, ProgramID) VALUES (4567890, 212);

INSERT INTO teacher_program (T_EMD, ProgramID) VALUES (5678901, 404);

INSERT INTO skills (EID, Skills) VALUES (8472093, 'Communication');

INSERT INTO skills (EID, Skills) VALUES (5638921, 'Project Management');

INSERT INTO skills (EID, Skills) VALUES (7491065, 'Problem Solving');

INSERT INTO skills (EID, Skills) VALUES (2185037, 'Leadership');

INSERT INTO skills (EID, Skills) VALUES (6859742, 'Teamwork');

INSERT INTO skills (EID, Skills) VALUES (1234567, 'Time Management');

INSERT INTO skills (EID, Skills) VALUES (2345678, 'Adaptability');

INSERT INTO skills (EID, Skills) VALUES (3456789, 'Creativity');

INSERT INTO skills (EID, Skills) VALUES (4567890, 'Critical Thinking');

INSERT INTO skills (EID, Skills) VALUES (5678901, 'Problem Solving');

INSERT INTO skills (EID, Skills) VALUES (6789012, 'Communication');

INSERT INTO skills (EID, Skills) VALUES (7890123, 'Teamwork');

INSERT INTO skills (EID, Skills) VALUES (8901234, 'Leadership');

INSERT INTO skills (EID, Skills) VALUES (9012345, 'Adaptability');

INSERT INTO skills (EID, Skills) VALUES (1123456, 'Time Management');

select student.stdID as ID, person.personName as StudentName, programs.programTitle as ProgramTitle
from student, person, programs
where student.stdID = person.id and
student.programid = programs.programid;

select ptype as Type,count(*)
from person
group by ptype;

select personName 
from person
where id in(select T_EMD from teacher_program 
where programid in(select programid from programs 
where programTitle= 'Bank Street'));

select*
from person
order by personname ASC ;

create or replace procedure AddNewPerson(
    p_ID person.id%TYPE,
    p_name person.personName%TYPE,
    p_city person.city%TYPE,
    p_street person.street%TYPE,
    p_gender person.gender%TYPE,
    p_postcode person.postcode%TYPE,
    p_ptype person.ptype%TYPE)
as
begin
insert into person(ID, personName, city, street, gender, postcode, ptype)
    values(p_ID,p_name, p_city, p_street,p_gender, p_postcode, p_ptype );
end;

exec AddNewPerson(8769823, 'Ahmed Ali', 'Jeddah', 'Prince Abdulmajed','Male', 6548965,'Student');

select * from person;

create or replace procedure updateSal(E_id in number, increase in number)
as    
v_updatedSal Employee.salary%type;
begin
update Employee set salary = salary + increase
where EID = E_id;
select salary into v_updatedSal 
from Employee where EID = E_id;
dbms_output.put_line('Salary:' || v_updatedSal); 
end;

exec updateSal(5678901,3000);

create or replace procedure person_ifo(p_id in person.id%type)
as

v_name person.personName%type;
v_city person.city%type;
v_street person.street%type;
v_gender person.gender%type;
v_postcode person.postcode%type;
v_type person.ptype%type;
begin
select personName,city,street,gender,postcode,ptype
into v_name,v_city,v_street,v_gender,v_postcode,v_type
from person where id = p_id;
dbms_output.put_line('ID #:' ||p_id);
dbms_output.put_line('Name:' ||v_name);
dbms_output.put_line('City:' ||v_city);
dbms_output.put_line('Street:' ||v_street);
dbms_output.put_line('Gender:' ||v_gender);
dbms_output.put_line('PostCode:' ||v_postcode);
dbms_output.put_line('Type:' ||v_type);
end;

exec person_ifo(5638921);