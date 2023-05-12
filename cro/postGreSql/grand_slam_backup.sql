--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-12 11:50:32

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16466)
-- Name: Igrac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Igrac" (
    id_igraca integer NOT NULL,
    ime "char"[] NOT NULL,
    prezime "char"[] NOT NULL,
    osvojeni_setovi integer NOT NULL,
    osvojeni_poeni integer NOT NULL,
    as_servisi integer NOT NULL,
    forsirane_greske integer NOT NULL,
    neforsirane_greke integer NOT NULL,
    uspjesni_servisi integer NOT NULL,
    neuspjesni_servisi integer NOT NULL,
    izlasci_na_mrezu integer NOT NULL
);


ALTER TABLE public."Igrac" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16452)
-- Name: Mec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Mec" (
    id_meca integer NOT NULL,
    broj_terena integer NOT NULL,
    stadij "char"[] NOT NULL,
    vrijeme_igre integer NOT NULL,
    datum_meca date NOT NULL
);


ALTER TABLE public."Mec" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16501)
-- Name: MecIgrac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MecIgrac" (
    id_meca integer NOT NULL,
    id_igraca integer NOT NULL
);


ALTER TABLE public."MecIgrac" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16488)
-- Name: MecSudac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MecSudac" (
    id_meca integer NOT NULL,
    id_suca integer NOT NULL
);


ALTER TABLE public."MecSudac" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16473)
-- Name: MecTurnir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MecTurnir" (
    id_meca integer NOT NULL,
    ime_turnira "char"[] NOT NULL
);


ALTER TABLE public."MecTurnir" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16459)
-- Name: Sudac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sudac" (
    id_suca integer NOT NULL,
    ime "char"[] NOT NULL,
    prezime "char"[] NOT NULL
);


ALTER TABLE public."Sudac" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16445)
-- Name: Turnir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Turnir" (
    ime_turnira "char"[] NOT NULL,
    datum_pocetka date NOT NULL
);


ALTER TABLE public."Turnir" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16514)
-- Name: TurnirIgrac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TurnirIgrac" (
    ime_turnira "char"[] NOT NULL,
    "id_igrača" integer NOT NULL
);


ALTER TABLE public."TurnirIgrac" OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 16466)
-- Dependencies: 217
-- Data for Name: Igrac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Igrac" (id_igraca, ime, prezime, osvojeni_setovi, osvojeni_poeni, as_servisi, forsirane_greske, neforsirane_greke, uspjesni_servisi, neuspjesni_servisi, izlasci_na_mrezu) FROM stdin;
\.


--
-- TOC entry 3359 (class 0 OID 16452)
-- Dependencies: 215
-- Data for Name: Mec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Mec" (id_meca, broj_terena, stadij, vrijeme_igre, datum_meca) FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 16501)
-- Dependencies: 220
-- Data for Name: MecIgrac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MecIgrac" (id_meca, id_igraca) FROM stdin;
\.


--
-- TOC entry 3363 (class 0 OID 16488)
-- Dependencies: 219
-- Data for Name: MecSudac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MecSudac" (id_meca, id_suca) FROM stdin;
\.


--
-- TOC entry 3362 (class 0 OID 16473)
-- Dependencies: 218
-- Data for Name: MecTurnir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MecTurnir" (id_meca, ime_turnira) FROM stdin;
\.


--
-- TOC entry 3360 (class 0 OID 16459)
-- Dependencies: 216
-- Data for Name: Sudac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sudac" (id_suca, ime, prezime) FROM stdin;
\.


--
-- TOC entry 3358 (class 0 OID 16445)
-- Dependencies: 214
-- Data for Name: Turnir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Turnir" (ime_turnira, datum_pocetka) FROM stdin;
\.


--
-- TOC entry 3365 (class 0 OID 16514)
-- Dependencies: 221
-- Data for Name: TurnirIgrac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TurnirIgrac" (ime_turnira, "id_igrača") FROM stdin;
\.


--
-- TOC entry 3207 (class 2606 OID 16472)
-- Name: Igrac Igrač_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Igrac"
    ADD CONSTRAINT "Igrač_pkey" PRIMARY KEY (id_igraca);


--
-- TOC entry 3203 (class 2606 OID 16458)
-- Name: Mec Meč_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Mec"
    ADD CONSTRAINT "Meč_pkey" PRIMARY KEY (id_meca);


--
-- TOC entry 3205 (class 2606 OID 16465)
-- Name: Sudac Sudac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sudac"
    ADD CONSTRAINT "Sudac_pkey" PRIMARY KEY (id_suca);


--
-- TOC entry 3201 (class 2606 OID 16451)
-- Name: Turnir Turnir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Turnir"
    ADD CONSTRAINT "Turnir_pkey" PRIMARY KEY (ime_turnira);


--
-- TOC entry 3212 (class 2606 OID 16509)
-- Name: MecIgrac id_igraca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MecIgrac"
    ADD CONSTRAINT id_igraca FOREIGN KEY (id_igraca) REFERENCES public."Igrac"(id_igraca);


--
-- TOC entry 3214 (class 2606 OID 16519)
-- Name: TurnirIgrac id_igraca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TurnirIgrac"
    ADD CONSTRAINT id_igraca FOREIGN KEY ("id_igrača") REFERENCES public."Igrac"(id_igraca);


--
-- TOC entry 3208 (class 2606 OID 16478)
-- Name: MecTurnir id_meca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MecTurnir"
    ADD CONSTRAINT id_meca FOREIGN KEY (id_meca) REFERENCES public."Mec"(id_meca);


--
-- TOC entry 3210 (class 2606 OID 16491)
-- Name: MecSudac id_meca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MecSudac"
    ADD CONSTRAINT id_meca FOREIGN KEY (id_meca) REFERENCES public."Mec"(id_meca);


--
-- TOC entry 3213 (class 2606 OID 16504)
-- Name: MecIgrac id_meca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MecIgrac"
    ADD CONSTRAINT id_meca FOREIGN KEY (id_meca) REFERENCES public."Mec"(id_meca);


--
-- TOC entry 3211 (class 2606 OID 16496)
-- Name: MecSudac id_suca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MecSudac"
    ADD CONSTRAINT id_suca FOREIGN KEY (id_suca) REFERENCES public."Sudac"(id_suca);


--
-- TOC entry 3209 (class 2606 OID 16483)
-- Name: MecTurnir ime_turnira; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MecTurnir"
    ADD CONSTRAINT ime_turnira FOREIGN KEY (ime_turnira) REFERENCES public."Turnir"(ime_turnira);


--
-- TOC entry 3215 (class 2606 OID 16524)
-- Name: TurnirIgrac ime_turnira; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TurnirIgrac"
    ADD CONSTRAINT ime_turnira FOREIGN KEY (ime_turnira) REFERENCES public."Turnir"(ime_turnira);


-- Completed on 2023-05-12 11:50:32

--
-- PostgreSQL database dump complete
--

