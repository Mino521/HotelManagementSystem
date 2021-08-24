INSERT INTO `hotelsys`.`room_type` (`id`, `type_name`, `price`) VALUES ('1', 'standard single room', '140.00');
INSERT INTO `hotelsys`.`room_type` (`id`, `type_name`, `price`) VALUES ('2', 'standard double room', '190');
INSERT INTO `hotelsys`.`room_type` (`id`, `type_name`, `price`) VALUES ('3', 'standard twin room', '190');
INSERT INTO `hotelsys`.`room_type` (`id`, `type_name`, `price`) VALUES ('4', 'bussiness room', '300');

INSERT INTO `hotelsys`.`rooms` (`id`, `room_num`, `room_state`, `room_type_id`) VALUES ('1', '8201', '0', '1');
INSERT INTO `hotelsys`.`rooms` (`id`, `room_num`, `room_state`, `room_type_id`) VALUES ('2', '8202', '0', '1');
INSERT INTO `hotelsys`.`rooms` (`id`, `room_num`, `room_state`, `room_type_id`) VALUES ('3', '8203', '0', '2');
INSERT INTO `hotelsys`.`rooms` (`id`, `room_num`, `room_state`, `room_type_id`) VALUES ('4', '8204', '0', '3');
INSERT INTO `hotelsys`.`rooms` (`id`, `room_num`, `room_state`, `room_type_id`) VALUES ('5', '8301', '0', '4');
INSERT INTO `hotelsys`.`rooms` (`id`, `room_num`, `room_state`, `room_type_id`) VALUES ('6', '8302', '0', '4');

INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('1', 'check in management', '0');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('2', 'order management', '0');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('3', 'vip management', '0');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('4', 'room management', '0');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('5', 'user management', '0');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('6', 'customer advice', '0');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('7', 'check in info query', '1');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('8', 'check in info add', '1');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('9', 'consumption record', '1');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('10', 'check out', '1');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('11', 'order info query', '2');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('12', 'order add', '2');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('13', 'vip info query', '3');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('14', 'vip info alter', '3');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('15', 'vip add', '3');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('16', 'room info query', '4');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('17', 'room info alter', '4');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('18', 'room info add', '4');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('19', 'user info query', '5');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('20', 'user info alter', '5');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('21', 'user info add', '5');
INSERT INTO `hotelsys`.`sys_authority` (`id`, `authority_name`, `parent`) VALUES ('22', 'customer advice', '6');

INSERT INTO `hotelsys`.`sys_usr` (`id`, `usrname`, `psw`) VALUES ('0', 'admin', 'b24aa70b69405730a129e671938496ad');
INSERT INTO `hotelsys`.`sys_usr` (`id`, `usrname`, `psw`) VALUES ('1', 'Tim', 'd5d23b080c52f070e3dc61821f325c7d');