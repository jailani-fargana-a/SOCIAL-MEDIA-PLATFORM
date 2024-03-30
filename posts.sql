
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
