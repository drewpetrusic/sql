delete from order;
delete from part;
delete from customer;
delete from employee;
delete from odetail;
delete from zipcode;

insert into part values(10506, 'Land Before Time I', 200, 19.99, 20);
insert into part values(10507, 'Land Before Time II', 156, 19.99, 20);
insert into part values(10508, 'Land Before Time III', 190, 19.99, 20);
insert into part values(10509, 'Land Before Time IV', 60, 19.99, 20);
insert into part values(10601, 'Sleeping Beauty', 300, 24.99, 20);
insert into part values(10701, 'When Harry Met Sally', 120, 19.99, 30);
insert into part values(10800, 'Dirty Harry', 140, 14.99, 30);
insert into part values(10900, 'Dr. Zhivago', 100, 24.99, 30);
insert into customer values(1111, 'Charles', '123 Main St.', 67226, '316-636-5555');
insert into customer values(2222, 'Berttram', '237 Ash Avenue', 67226, '316-689-5555');
insert into customer values(3333, 'Barbara', '111 Inwood St.', 60606, '316-111-1234');
insert into employee values(1000, 'Jones', 67226, 1994-12-12);
insert into employee values(1001, 'Smith', 60606, 1992-01-01);
insert into employee values(1002, 'Brown', 50302, 1994-09-01);
insert into order values(1020, 1111, 1000, 1994-12-10, 1994-12-12);
insert into order values(1021, 1111, 1000, 1995-01-12, 1995-01-15);
insert into order values(1022, 2222, 1001, 1995-02-13, 1995-02-20);
insert into order values(1023, 3333, 1000, 1997-06-20, null);
insert into zipcode values(67226, 'Wichita');
insert into zipcode values(60606, 'Fort Dodge');
insert into zipcode values(50302, 'Kansas City');
insert into zipcode values(54444, 'Columbia');
insert into zipcode values(66002, 'Liberal');
insert into zipcode values(61111, 'Fort Hays');
insert into odetail values(1020, 10506, 1);
insert into odetail values(1020, 10507, 1);
insert into odetail values(1020, 10508, 2);
insert into odetail values(1020, 10509, 3);
insert into odetail values(1021, 10601, 4);
insert into odetail values(1022, 10601, 1);
insert into odetail values(1022, 10701, 1);
insert into odetail values(1023, 10800, 1);
insert into odetail values(1023, 10900, 1);