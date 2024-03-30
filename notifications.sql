
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
