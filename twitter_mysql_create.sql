-- Would use SHA-256 for encypting passwords
-- Encrypted passwords can fit in 64 CHAR 
CREATE TABLE `users` (
	`username` char(64) NOT NULL,
	`first_name` char(64) NOT NULL,
	`last_name` char(64) NOT NULL,
	`password` char(64) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	`email` char(128) NOT NULL UNIQUE,
	PRIMARY KEY (`username`)
);

CREATE TABLE `followers` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`follower` char(64) NOT NULL,
	`following` char(64) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

-- 280 char lenght because of current twitter 
-- maximum tweet length
CREATE TABLE `tweets` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`user` char(64) NOT NULL,
	`content` TEXT(280) NOT NULL,
	`created` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `followers` ADD CONSTRAINT `followers_fk0` FOREIGN KEY (`follower`) REFERENCES `users`(`username`);

ALTER TABLE `followers` ADD CONSTRAINT `followers_fk1` FOREIGN KEY (`following`) REFERENCES `users`(`username`);

ALTER TABLE `tweets` ADD CONSTRAINT `tweets_fk0` FOREIGN KEY (`user`) REFERENCES `users`(`username`);