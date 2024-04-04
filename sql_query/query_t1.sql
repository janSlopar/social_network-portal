/*	Tablica "users"	-> korisnici i korisnički podaci*/
create table `users` (
	`id`				int not null auto_increment,
	`first_name`		varchar(200) not null,
	`last_name`			varchar(200) not null,
	`username`			varchar(200) not null,
	`profile_image`		varchar(200) not null,
	`email`				varchar(200) not null,
	`password`			text not null

	primary key(`id`)

);



/*	Tablica "posts" ->	podaci o objavama*/
create table `posts`(
	`id`				int not null auto_increment,
	`user_id`			int,
	`content`			varchar(200) not null,
	`likes`				int,
	`created_time`		datetime,

	primary key(`id`),
	constraint `FK_PostsId` /*FK - Foreign Key*/
		foreign key (`user_id`) references `users` (`id`)
		on delete set null

);
