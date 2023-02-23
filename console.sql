create database school_management;
use school_management;

create table Address
(
    `id` int primary key ,
    `address` varchar(255)
);

create table Class
(
    `id` int primary key ,
    `name` varchar(55),
    `language` varchar(20),
    `description` varchar(255)
);

create table Student
(
    `id` int primary key auto_increment ,
    `fullname` varchar(55),
    `address_id` int not null ,
    `age` int not null,
    `phone` varchar(10) unique,
    `classes_id` int not null,
    foreign key (address_id) references Address(id),
    foreign key (classes_id) references Class(id)
);

create table Course
(
    `id` int primary key ,
    `name` varchar(55),
    `description` varchar(255)
);

create table Point (
    `id` int primary key ,
    `course_id` int not null ,
    `student_id` int not null ,
    `point` int,
    foreign key (course_id) references Course(id),
    foreign key (student_id) references Student(id)
);

insert into Address(id, address) VALUES (1,'ha noi');
insert into Address(id, address) VALUES (2,'thanh hoa');
insert into Address(id, address) VALUES (3,'hai phong');
insert into Address(id, address) VALUES (4,'hai duong');
insert into Address(id, address) VALUES (5,'ninh binh');

insert into Class(id, name, language, description) values (1,'java1','java','lop java');
insert into Class(id, name, language, description) values (2,'js1','JavaScript','lop javascript');
insert into Class(id, name, language, description) values (3,'php','Php','lop php');
insert into Class(id, name, language, description) values (4,'go','GoLang','lop golang');
insert into Class(id, name, language, description) values (5,'python','Python','lop python');

insert into Course( id, name, description) VALUES (1,'Fresher', 'fresher');
insert into Course( id, name, description) VALUES (2,'Junior', 'junior');
insert into Course( id, name, description) VALUES (3,'Senior', 'senior');
insert into Course( id, name, description) VALUES (4,'Master', 'master');
insert into Course( id, name, description) VALUES (5,'Challenger', 'challenger');

insert into Point(id, course_id, student_id, point) VALUES (1,1,1,7);
insert into Point(id, course_id, student_id, point) VALUES (2,2,2,8);
insert into Point(id, course_id, student_id, point) VALUES (3,3,4,4);
insert into Point(id, course_id, student_id, point) VALUES (4,5,3,5);
insert into Point(id, course_id, student_id, point) VALUES (5,4,5,6);
insert into Point(id, course_id, student_id, point) VALUES (6,2,6,7);
insert into Point(id, course_id, student_id, point) VALUES (7,3,8,8);
insert into Point(id, course_id, student_id, point) VALUES (8,4,7,5);
insert into Point(id, course_id, student_id, point) VALUES (9,1,2,9);
insert into Point(id, course_id, student_id, point) VALUES (10,3,3,7);
insert into Point(id, course_id, student_id, point) VALUES (11,2,4,5);
insert into Point(id, course_id, student_id, point) VALUES (12,4,8,8);
insert into Point(id, course_id, student_id, point) VALUES (13,5,9,9);
insert into Point(id, course_id, student_id, point) VALUES (14,2,10,9);
insert into Point(id, course_id, student_id, point) VALUES (15,3,3,10);

insert into Student(id, fullname, address_id, age, phone, classes_id) values (1, 'Nguyen Bao Duong', 1, 18, '0988777666', 1);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (2, 'Tran Vu Hoang', 2, 18, '0975200919', 2);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (3, 'Nguyen Anh Tuan', 3, 18, '0376017645', 3);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (4, 'Doan Van Phuc', 5, 18, '0916195288', 4);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (5, 'Nguyen Tien Luc', 4, 18, '0344268150', 1);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (6, 'Nguyen Quang Huy', 5, 18, '0976620098', 5);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (7, 'Trinh Van Nam', 1, 18, '0369324197', 4);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (8, 'Le Van Doan', 3, 18, '0983273136', 2);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (9, 'Au Manh Tuong', 2, 18, '0999999999', 3);
insert into Student(id, fullname, address_id, age, phone, classes_id) values (10, 'Nguyen Dinh Nguyen',4, 18, '0941904792', 1);

update Student set age = 19 where id=1;
update Student set age = 21 where id=3;
update Student set age = 31 where id=5;
update Student set age = 25 where id=7;
update Student set age = 26 where id=9;

select * from Student where fullname like 'Nguyen%';
select * from Student where fullname like '%Huy';
select * from Student where age >=18 and age <=25;
select * from Student where id =6 or id=7;

