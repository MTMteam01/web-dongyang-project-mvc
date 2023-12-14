drop table BoxOffice;
drop table movie_data;
drop table users;
drop table reservations;

use reservationuser;

CREATE TABLE BoxOffice (
    `rank` varchar(8) NOT NULL,
    `movieNm` varchar(50) NOT NULL,
    `openDt` varchar(20) DEFAULT NULL,
	`audiAcc` varchar(20) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

truncate table BoxOffice;

CREATE TABLE movie_data (
    `movieId` varchar(50) NOT NULL,
    `title` varchar(50) DEFAULT NULL,
    `year` varchar(20) DEFAULT NULL,
    `date` varchar(20) DEFAULT NULL,
    `genre` varchar(50) DEFAULT NULL,
    `nation` TEXT DEFAULT NULL,
    `rating` varchar(20) DEFAULT NULL,
    `postUrl` TEXT DEFAULT NULL,
    `plot` TEXT DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

truncate table movie_data;

CREATE TABLE users (
	`id` varchar(8) NOT NULL,
	`password` varchar(8) NOT NULL,
	`name` varchar(20) DEFAULT NULL,
	`phone` varchar(20) DEFAULT NULL,
    `email` varchar(20) DEFAULT NULL,
    `birth` varchar(20) DEFAULT NULL,
    `authority` varchar(20) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE reservations (
	`id` varchar(8) NOT NULL,
    `movie_id` varchar(20) DEFAULT NULL,
    `theater_id` varchar(20) DEFAULT NULL,
    `date` varchar(20) DEFAULT NULL,
    `seat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

truncate table reservations;

INSERT INTO `users` VALUES ('root','102938','관리자','01088884444','a@naver.com','980127','관리자');
