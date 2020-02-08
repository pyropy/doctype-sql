-- Would use SHA-256 for encypting passwords
-- Encrypted passwords can fit in 64 CHAR 
CREATE TABLE `users` (
	`username` VARCHAR(64) NOT NULL,
	`first_name` VARCHAR(64) NOT NULL,
	`last_name` VARCHAR(64) NOT NULL,
	`password` VARCHAR(64) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	PRIMARY KEY (`username`)
);

CREATE TABLE `followers` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`follower` VARCHAR(64) NOT NULL,
	`following` VARCHAR(64) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

-- 280 char lenght because of current twitter 
-- maximum tweet length
CREATE TABLE `tweets` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`user` VARCHAR(64) NOT NULL,
	`content` TEXT(280) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `followers` ADD CONSTRAINT `followers_fk0` FOREIGN KEY (`follower`) REFERENCES `users`(`username`);

ALTER TABLE `followers` ADD CONSTRAINT `followers_fk1` FOREIGN KEY (`following`) REFERENCES `users`(`username`);

ALTER TABLE `tweets` ADD CONSTRAINT `tweets_fk0` FOREIGN KEY (`user`) REFERENCES `users`(`username`);