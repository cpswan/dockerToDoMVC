CREATE DATABASE `todomvc`;

USE `todomvc`;

CREATE TABLE `notes` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(50) NOT NULL,
  `complte` boolean not null default 0,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `complete` boolean not null default 0,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
