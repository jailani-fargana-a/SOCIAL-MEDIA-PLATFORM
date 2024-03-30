
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
