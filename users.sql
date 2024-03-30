
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
