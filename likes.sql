
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
