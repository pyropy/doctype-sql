-- Would use SHA-256 for encypting passwords
-- Encrypted passwords can fit in 64 CHAR 
CREATE TABLE `users` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(64) NOT NULL UNIQUE,
	`first_name` VARCHAR(64) NOT NULL,
	`last_name` VARCHAR(64) NOT NULL,
	`password` VARCHAR(64) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	PRIMARY KEY (`id`, `username`)
);

CREATE TABLE `followers` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`follower` bigint NOT NULL,
	`following` bigint NOT NULL,
	`created` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

-- 280 char lenght because of current twitter 
-- maximum tweet length
CREATE TABLE `tweets` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`user` bigint NOT NULL,
	`content` TEXT(280) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `followers` ADD CONSTRAINT `followers_fk0` FOREIGN KEY (`follower`) REFERENCES `users`(`id`);

ALTER TABLE `followers` ADD CONSTRAINT `followers_fk1` FOREIGN KEY (`following`) REFERENCES `users`(`id`);

ALTER TABLE `tweets` ADD CONSTRAINT `tweets_fk0` FOREIGN KEY (`user`) REFERENCES `users`(`id`);