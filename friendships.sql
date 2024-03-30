
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
