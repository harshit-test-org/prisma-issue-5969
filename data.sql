--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: Project; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Project" (id, name, description, created, "createdAt", "updatedAt") FROM stdin;
1	test	test	test	2021-03-10 14:58:52.608	1970-01-01 00:00:00
\.


--
-- Data for Name: List; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."List" (id, "projectId", name, created, "createdAt", "updatedAt") FROM stdin;
1	1	test	test	2021-03-10 14:59:03.405	1970-01-01 00:00:00
\.


--
-- Data for Name: Phrase; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Phrase" (id, "listId", content, "createdAt", "updatedAt") FROM stdin;
1	1	test	2021-03-10 15:00:39.61	1970-01-01 00:00:00
\.


--
-- Data for Name: Search; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Search" (id, "projectId", name, archived, created, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Snapshot; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Snapshot" (id, "listId", name, length, depth, created, "createdAt", "updatedAt") FROM stdin;
4	1	test	0	0	test	2021-03-10 14:59:53.298	2021-03-10 14:59:57.617
\.


--
-- Data for Name: Site; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Site" (id, "snapshotId", "phraseId", origin, rank, title, "htmlTitle", link, "displayLink", snippet, "htmlSnippet", "cacheId", "formattedUrl", "htmlFormattedUrl", pagemap, body, status, "time", created, "createdAt", "updatedAt") FROM stdin;
1	4	1	test	0	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2021-03-10 15:00:48.139	1970-01-01 00:00:00
\.


--
-- Data for Name: Target; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Target" (id, "searchId", title, href, thumbnail, created, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Affiliate; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Affiliate" (id, "targetId", "snapshotId", "siteId", attempt, href, html, chain, "createdAt") FROM stdin;
\.


--
-- Data for Name: Chain; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Chain" (id, "affiliateId", index, href, origin) FROM stdin;
\.


--
-- Data for Name: Knownlist; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Knownlist" (id, title, origin, colored, "default", reason, thumbnail, created, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Media; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Media" (id, fid, title, link, protocol, host, origin, thumbnail, created, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Process; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Process" (id, type, "parentId", "childId", started, ended, error) FROM stdin;
\.


--
-- Data for Name: Provider; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Provider" (id, origin, created, "createdAt") FROM stdin;
\.


--
-- Data for Name: Word; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."Word" (id, "searchId", content, "forUrlMatching", "createdAt") FROM stdin;
\.


--
-- Data for Name: _KnownlistToSearch; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."_KnownlistToSearch" ("A", "B") FROM stdin;
\.


--
-- Data for Name: _SearchToSnapshot; Type: TABLE DATA; Schema: public; Owner: harshit
--

COPY public."_SearchToSnapshot" ("A", "B") FROM stdin;
\.


--
-- Name: Affiliate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Affiliate_id_seq"', 1, false);


--
-- Name: Chain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Chain_id_seq"', 1, false);


--
-- Name: Knownlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Knownlist_id_seq"', 1, false);


--
-- Name: List_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."List_id_seq"', 1, true);


--
-- Name: Media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Media_id_seq"', 1, false);


--
-- Name: Phrase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Phrase_id_seq"', 1, true);


--
-- Name: Project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Project_id_seq"', 1, true);


--
-- Name: Provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Provider_id_seq"', 1, false);


--
-- Name: Search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Search_id_seq"', 1, false);


--
-- Name: Site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Site_id_seq"', 1, true);


--
-- Name: Snapshot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Snapshot_id_seq"', 1, true);


--
-- Name: Target_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Target_id_seq"', 1, false);


--
-- Name: Word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harshit
--

SELECT pg_catalog.setval('public."Word_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

