--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    date timestamp without time zone,
    title character varying(255),
    user_id bigint
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.jobs (id, date, title, user_id) VALUES (8, '2019-05-12 12:00:00', 'story3.docx', 1);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (5, '2019-05-11 15:26:47.252', 'new-sotry.docx', 2);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (6, '2019-05-12 00:00:00', 'story.docx', 3);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (7, '2019-05-12 01:00:00', 'story2.docx', 4);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (9, '2019-05-13 12:00:00', 'story3.docx', 5);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (11, '2019-05-16 12:00:00', 'story3.docx', 6);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (12, '2019-05-15 12:00:00', 'story3.docx', 6);
INSERT INTO public.jobs (id, date, title, user_id) VALUES (13, '2019-05-15 12:00:00', 'story3.docx', 7);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: jobs fkra3g6pshf0p0hv5aisuh3weg8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fkra3g6pshf0p0hv5aisuh3weg8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

