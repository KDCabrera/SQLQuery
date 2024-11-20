Create database RCGTicketsDataBase;
Create table UserStories (
UserStoryNumber int not null,
UserStoryID int not null,
UserStoryName varchar(50) unique,
UserStoryEnvironment varchar(50) not null,
UserStoryStatus varchar(50) not null,
UserStoryPriority varchar(50) not null,
CreationDate date not null,
CompletionDate date,
AssignedTo varchar(50),
)

alter table UserStories add UserStoryPlatform varchar(50)

insert into UserStories(UserStoryNumber,UserStoryID,UserStoryName,UserStoryEnvironment,UserStoryStatus,UserStoryPriority,UserStoryPlatform,CreationDate,CompletionDate,AssignedTo)
values(001,2001,'Test Remove CTA','Latest','Open',1,'WEB','2024-01-15',null,'Jessica')

select * from UserStories

insert into UserStories(UserStoryNumber,UserStoryID,UserStoryName,UserStoryEnvironment,UserStoryStatus,UserStoryPriority,UserStoryPlatform,CreationDate,CompletionDate,AssignedTo)
values(002,2002,'Test Accept CTA','Latest','In Progress',1,'WEB','2024-01-17',null,'Joseph'),
(003,2003,'Test Decline CTA','Latest','In Testing',1,'WEB','2024-01-18',null,'Alvin'),
(004,2004,'Test Add CTA','Latest','In Testing',1,'MOBILE','2024-01-19',null,'Joseph'),
(005,2005,'Test Delete CTA','Stage','In Testing',1,'WEB','2024-01-20',null,'Vanessa'),
(006,2006,'Test Confirm CTA','Stage','Product Review',1,'MOBILE','2024-02-18',null,'Jasper'),
(007,2007,'Test Purchase CTA','Stage','Product Review',1,'WEB','2024-02-25',null,'Luisa'),
(008,2008,'Test Continue CTA','Stage','Product Review',1,'WEB','2024-02-28',null,'Wilson'),
(009,2009,'Test Back CTA','Latest','Product Review',1,'MOBILE','2024-02-27',null,'Alvin'),
(010,2010,'Test Next CTA','Latest','Closed',1,'WEB','2024-01-16','2024-05-05','Cathy'),
(011,2011,'Test Configure CTA','Production','Closed',1,'WEB','2024-01-17','2024-05-17','Samantha'),
(012,2012,'Test Yes CTA','Production','Closed',1,'MOBILE','2024-01-18','2024-06-08','Jasper'),
(013,2013,'Test No CTA','Production','Closed',1,'MOBILE','2024-01-19','2024-06-25','Joseph'),
(014,2014,'Test Maybe CTA','Production','Open',1,'MOBILE','2024-01-29',null,'Vanessa'),
(015,2015,'Test Convert CTA','Production','In Progress',1,'MOBILE','2024-01-27',null,'Gerald')

select * from UserStories

select UserStoryID, UserStoryName from UserStories where CompletionDate='2024-05-17'

select UserStoryID, UserStoryName from UserStories where AssignedTo='Joseph'

select UserStoryID, UserStoryName from UserStories where UserStoryPlatform='MOBILE'

select UserStoryID, UserStoryName from UserStories where UserStoryStatus='Product Review'

select UserStoryID, UserStoryName from UserStories where not UserStoryStatus='Product Review'

select UserStoryID, UserStoryName from UserStories where UserStoryNumber in(5,10)

select * from UserStories order by AssignedTo

select * from UserStories order by UserStoryName

select top 5 UserStoryID, UserStoryName from UserStories order by CreationDate

select UserStoryID, UserStoryName from UserStories where UserStoryNumber between 3 and 12

select distinct AssignedTo from UserStories order by AssignedTo

select * from UserStories where AssignedTo like 'J%'

select * from UserStories where AssignedTo like '%r'

select * from UserStories where AssignedTo like 'J%a'

select count(UserStoryNumber) from UserStories

select min(UserStoryNumber) from UserStories

select max(UserStoryNumber) from UserStories

select * from UserStories where CreationDate='2024-01-18'












