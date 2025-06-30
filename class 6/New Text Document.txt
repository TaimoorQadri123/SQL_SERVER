create Database assignment
use assignment
create table artists(
id int primary key identity(1,1),
name varchar(200),
city varchar(70)

)
insert into artists values('Atif Aslam','karachi'),('Anwar ','lahore'),('Taha','kashmir')
insert into artists values('faiz','fasilabad')

select * from artists
1

create table songs(
id int primary key identity(1,1),
name varchar(200),
releasing_date varchar(100),
songs int ,
foreign key(songs) references artists(id)

)
insert into songs values('song 1','2010-present',1)
insert into songs values('song 2','2012',1),('song 3','2015',2),('song 4','2016',3),('song 5','2017',4),('song 6','2018',2),('song8 ','2019',1),('song 8','2020',2)



select * from songs

create table songs_artists(
id int primary key identity(1,1),

artists_id int
foreign key(artists_id) references artists(id),

songs_id int
foreign key(songs_id) references songs(id)
)
select * from songs_artists


/*
songs_name varchar(200)
foreign key(songs_name) references songs(name)

artists_name varchar(200),
foreign key(artists_name) references artists(name),
*/

-- q1 how many artisit were born in fasilabad
select * from artists where city = 'fasilabad'

-- q2 how many songs were released 2010 -present

select * from songs where releasing_date IN('2011','2020')

-- q3 how many songs does each artist have 
         
		 songs int ,
foreign key(songs) references artists(id)

		 SELECT 
    songs.id, 
    songs.name AS studentName, 
    songs.releasing_date, 

FROM 
    songs
INNER JOIN 
    artists
ON 
    songs.songs = faculty.id;



	  
-- q4 show all the singles y atif aslam 