INSERT INTO users (username,email,PASSWORD) VALUES
('Mansi','mans@gmail.com','mans@123'),
('Nishi','nish@gmail.com','nishi@123'),
('Harini','hari@gmail.com','harin@123'),
('Jailani','jaila@gmail.com','jaila@123'),
('Chellaummal','chellaum@gmail.com','chellaum@123');

POSTS TABLE
INSERT INTO posts (user_id,post_content) VALUES
(3,'World is full of chaos and confusion'),
(1,'Life is beautiful'),
(4,'Coding is an interesting topic'),
(2,'World is full of chaos and confusion'),
(5,'World is full of chaos and confusion');

COMMENTS TABLE
INSERT INTO comments (post_id,user_id,comment_content) VALUES
(3,2,'Yeah,it s crt'),
(4,1,'Wow!!!'),
(2,5,'100percent'),
(1,3,'May be,..'),
(5,2,'Super :)'),

LIKES TABLE
INSERT INTO likes (post_id,user_id) VALUES
(2,4),
(1,3),
(3,2),
(4,5);

FRIENDSHIPS TABLE
INSERT INTO friendships (user_id1, user_id2) VALUES
(1, 3),
(2, 4),
(5, 1),
(3, 2),
(1, 5);

MESSAGES TABLE
INSERT INTO messages(sender_id,receiver_id,message_content)VALUES
(3,1,'Hello'),
(1,2,'Sent a reel'),
(4,3,'Voice mesage'),
(5,4,'HI'),
(2,5,'Sent a reel');

TAG TABLE
insert into tag(user_id,post_id) values
(1,3),
(3,4),
(4,1),
(5,2);




