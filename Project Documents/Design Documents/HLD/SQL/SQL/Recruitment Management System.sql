

--Create tables

create table Company_Master(
company_id Varchar2(5) primary key,company_name Varchar2(30),
company_address Varchar2(100),contact_person varchar2(25),
email_id varchar2(30),contact_number varchar2(10)
);



create table Candidate_Personal(
candidate_id Varchar2(5)primary key,candidate_name Varchar2(20),
address Varchar2(100),dob date,email_id varchar2(30),
contact_number varchar2(10),Marital_status Varchar2(15),
Gender Varchar2(10),Passport_number Varchar2(15)
);

create table Candidate_Qualifications(
qualification_id  Varchar2(5) primary key,qualification_name Varchar2(30),
specialization_area Varchar2(30),college_name varchar2(25),
university_name varchar2(30),year_of_passing varchar2(4),
percentage Number(5,2),candidate_id Varchar2(5) foreign key);

create table Candidate_Work_history(
work_id  Varchar2(5) primary key,candidate_id Varchar2(5) foreign key,
Which_employer Varchar2 (10),contact_person varchar2(25),
Position_held varchar2(20),Company_name varchar2(20),
Employment_from Date,Employment_to Date,
Reason_For_leaving Varchar2(100),Responsibilities Varchar2(150),
Hr_rep_name Varchar2(20),Hr_rep_contact_num Varchar2(10)
);


create table Job_Requirements(
job_id  Varchar2(5)primary key,Company_id Varchar2(5) foreign key,
Position_required Varchar2 (20),Numbers_required Number(2),
Experience_required Number(2),Qualification_required varchar2(20),
Job_location  Varchar2(25),Job_description Varchar2(100)
);


create table Job_Applied(
job_id  Varchar2(5)foreign key,Candidate_id Varchar2(5) foreign key
);


create table users(
username varchar2(20),password  varchar2(20),
usertype varchar2(20) , id varchar2(20) primary key,
serial_no number primary key)
);



--Create sequences
create sequence candidate_id start with 1000;

create sequence company_id start with 1000;

create sequence id start with 1000;

commit;

