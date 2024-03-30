CREATE TABLE `comments` (
	`comment_id` INT(11) NOT NULL AUTO_INCREMENT,
	`post_id` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`comment_content` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`comment_date` DATETIME NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`comment_id`) USING BTREE,
	INDEX `post_id` (`post_id`) USING BTREE,
	INDEX `user_id` (`user_id`) USING BTREE,
	CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7
;
CREATE TABLE `friendships` (
	`friendship_id` INT(11) NOT NULL AUTO_INCREMENT,
	`user_id1` INT(11) NOT NULL,
	`user_id2` INT(11) NOT NULL,
	`friendship_date` DATETIME NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`friendship_id`) USING BTREE,
	INDEX `user_id1` (`user_id1`) USING BTREE,
	INDEX `user_id2` (`user_id2`) USING BTREE,
	CONSTRAINT `friendships_ibfk_1` FOREIGN KEY (`user_id1`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `friendships_ibfk_2` FOREIGN KEY (`user_id2`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;
CREATE TABLE `likes` (
	`like_id` INT(11) NOT NULL AUTO_INCREMENT,
	`post_id` INT(11) NULL DEFAULT NULL,
	`comment_id` INT(11) NULL DEFAULT NULL,
	`user_id` INT(11) NOT NULL,
	`like_date` DATETIME NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`like_id`) USING BTREE,
	INDEX `post_id` (`post_id`) USING BTREE,
	INDEX `comment_id` (`comment_id`) USING BTREE,
	INDEX `user_id` (`user_id`) USING BTREE,
	CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7
;
CREATE TABLE `messages` (
	`message_id` INT(11) NOT NULL AUTO_INCREMENT,
	`sender_id` INT(11) NOT NULL,
	`receiver_id` INT(11) NOT NULL,
	`message_content` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_general_ci',
	`message_date` DATETIME NULL DEFAULT current_timestamp(),
	`is_read` TINYINT(1) NULL DEFAULT '1',
	PRIMARY KEY (`message_id`) USING BTREE,
	INDEX `sender_id` (`sender_id`) USING BTREE,
	INDEX `receiver_id` (`receiver_id`) USING BTREE,
	CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;
CREATE TABLE `notifications` (
	`notification_id` INT(11) NOT NULL AUTO_INCREMENT,
	`user_id` INT(11) NOT NULL,
	`notification_type` VARCHAR(30) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`notification_date` DATETIME NULL DEFAULT current_timestamp(),
	`related_item_id` INT(11) NOT NULL,
	`related_item` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_read` TINYINT(1) NULL DEFAULT '1',
	PRIMARY KEY (`notification_id`) USING BTREE,
	INDEX `USER_id` (`user_id`) USING BTREE,
	CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=22
;
CREATE TABLE `posts` (
	`post_id` INT(11) NOT NULL AUTO_INCREMENT,
	`user_id` INT(11) NOT NULL,
	`post_content` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`post_date` DATETIME NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`post_id`) USING BTREE,
	INDEX `user_id` (`user_id`) USING BTREE,
	CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;
CREATE TABLE `tag` (
	`tag_id` INT(11) NOT NULL AUTO_INCREMENT,
	`user_id` INT(11) NOT NULL,
	`tagged_user_id` INT(11) NOT NULL,
	`post_id` INT(11) NOT NULL,
	`tagged_at` DATETIME NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`tag_id`) USING BTREE,
	INDEX `user_id` (`user_id`) USING BTREE,
	INDEX `tagged_user_id` (`tagged_user_id`) USING BTREE,
	INDEX `post_id` (`post_id`) USING BTREE,
	CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `tag_ibfk_2` FOREIGN KEY (`tagged_user_id`) REFERENCES `users` (`user_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `tag_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=5
;
CREATE TABLE `users` (
	`user_id` INT(11) NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_general_ci',
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`password` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_general_ci',
	`join_date` DATETIME NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`user_id`) USING BTREE,
	UNIQUE INDEX `username` (`username`) USING BTREE,
	UNIQUE INDEX `email` (`email`) USING BTREE,
	UNIQUE INDEX `PASSWORD` (`password`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;
