-- create table sometable(id int);
-- CREATE USER docker;
-- CREATE DATABASE docker;
-- GRANT ALL PRIVILEGES ON DATABASE docker TO docker;

create sequence hibernate_sequence;

CREATE TABLE public.users
(
    id bigint NOT NULL,
    login character varying(255),
    password character varying(255),
    code_confirm character varying(255),
    confirm boolean,
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login)
);

CREATE TABLE public.user_roles
(
    users_id bigint NOT NULL,
    roles_id bigint NOT NULL
);


CREATE TABLE public.subscriber
(
    id bigint NOT NULL,
    code character varying(255),
    confirm_code character varying(255),
    email character varying(255),
    is_confirm boolean,
    last_newsletter_send timestamp without time zone,
    name character varying(255),
    CONSTRAINT subscriber_pkey PRIMARY KEY (id)
);

CREATE TABLE public.role
(
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    CONSTRAINT role_pkey PRIMARY KEY (id)
);

CREATE TABLE public.jobs
(
    id bigint NOT NULL,
    date timestamp without time zone,
    title character varying(255),
    user_id bigint,
    CONSTRAINT jobs_pkey PRIMARY KEY (id)
);

INSERT INTO users (id, login) VALUES
(2, 'tomek2'),
(3, 'tomek3'),
(4, 'tomek4'),
(5, 'tomek5'),
(6, 'tomek6'),
(7, 'tomek7');

INSERT INTO jobs (id, date, title, user_id) values
(8,	'2019-05-12 12:00:00',	'story3.docx',	1),
(5,	'2019-05-11 15:26:47.252',	'new-sotry.docx',	2),
(6,	'2019-05-12 00:00:00',	'story.docx',	3),
(7,	'2019-05-12 01:00:00',	'story2.docx',	4),
(9,	'2019-05-13 12:00:00',	'story3.docx',	5),
(11, '2019-05-16 12:00:00',	'story3.docx',	6),
(12, '2019-05-15 12:00:00',	'story3.docx',	6),
(13,	'2019-05-15 12:00:00',	'story3.docx',	7);


