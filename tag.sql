
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
