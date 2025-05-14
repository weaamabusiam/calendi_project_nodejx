CREATE TABLE IF NOT EXISTS `courses` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` varchar(200) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `users` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` varchar(100) NOT NULL,
	`uname` varchar(100) NOT NULL,
	`passwd` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL,
	`type_id` int NOT NULL,
	`tz` varchar(20) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `user_types` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `study_data` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`user_id` int NOT NULL,
	`study_date` date NOT NULL,
	`course` int NOT NULL,
	`start_time` time NOT NULL,
	`end_time` time NOT NULL,
	`is_plan` int NOT NULL,
	`notes` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `students_to_teachers` (
	`student_id` int NOT NULL,
	`teacher_id` int NOT NULL,
	PRIMARY KEY (`student_id`, `teacher_id`)
);


