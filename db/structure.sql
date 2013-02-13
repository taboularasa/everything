--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cables; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cables (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: cables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cables_id_seq OWNED BY cables.id;


--
-- Name: computers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE computers (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: computers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE computers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: computers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE computers_id_seq OWNED BY computers.id;


--
-- Name: consumables; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE consumables (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: consumables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE consumables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: consumables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE consumables_id_seq OWNED BY consumables.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE items (
    id integer NOT NULL,
    title character varying(255),
    category character varying(255),
    description text,
    properties hstore,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    barcode integer,
    type character varying(255),
    container_id integer,
    in_use boolean
);


--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE items_id_seq OWNED BY items.id;


--
-- Name: peripherals; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE peripherals (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: peripherals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE peripherals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: peripherals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE peripherals_id_seq OWNED BY peripherals.id;


--
-- Name: power_supplies; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE power_supplies (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: power_supplies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE power_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: power_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE power_supplies_id_seq OWNED BY power_supplies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: softwares; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE softwares (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: softwares_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE softwares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: softwares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE softwares_id_seq OWNED BY softwares.id;


--
-- Name: tools; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tools (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: tools_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tools_id_seq OWNED BY tools.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cables ALTER COLUMN id SET DEFAULT nextval('cables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY computers ALTER COLUMN id SET DEFAULT nextval('computers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY consumables ALTER COLUMN id SET DEFAULT nextval('consumables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY items ALTER COLUMN id SET DEFAULT nextval('items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY peripherals ALTER COLUMN id SET DEFAULT nextval('peripherals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY power_supplies ALTER COLUMN id SET DEFAULT nextval('power_supplies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY softwares ALTER COLUMN id SET DEFAULT nextval('softwares_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tools ALTER COLUMN id SET DEFAULT nextval('tools_id_seq'::regclass);


--
-- Name: cables_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cables
    ADD CONSTRAINT cables_pkey PRIMARY KEY (id);


--
-- Name: computers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY computers
    ADD CONSTRAINT computers_pkey PRIMARY KEY (id);


--
-- Name: consumables_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY consumables
    ADD CONSTRAINT consumables_pkey PRIMARY KEY (id);


--
-- Name: peripherals_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY peripherals
    ADD CONSTRAINT peripherals_pkey PRIMARY KEY (id);


--
-- Name: power_supplies_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY power_supplies
    ADD CONSTRAINT power_supplies_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY items
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: softwares_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY softwares
    ADD CONSTRAINT softwares_pkey PRIMARY KEY (id);


--
-- Name: tools_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (id);


--
-- Name: products_properties; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX products_properties ON items USING gin (properties);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

INSERT INTO schema_migrations (version) VALUES ('20130130235920');

INSERT INTO schema_migrations (version) VALUES ('20130131000518');

INSERT INTO schema_migrations (version) VALUES ('20130131001634');

INSERT INTO schema_migrations (version) VALUES ('20130206230458');

INSERT INTO schema_migrations (version) VALUES ('20130206231612');

INSERT INTO schema_migrations (version) VALUES ('20130207224121');

INSERT INTO schema_migrations (version) VALUES ('20130207235044');

INSERT INTO schema_migrations (version) VALUES ('20130212010236');

INSERT INTO schema_migrations (version) VALUES ('20130212182913');

INSERT INTO schema_migrations (version) VALUES ('20130212184053');

INSERT INTO schema_migrations (version) VALUES ('20130212203208');

INSERT INTO schema_migrations (version) VALUES ('20130212215436');

INSERT INTO schema_migrations (version) VALUES ('20130212223523');

INSERT INTO schema_migrations (version) VALUES ('20130212234751');

INSERT INTO schema_migrations (version) VALUES ('20130212235631');

INSERT INTO schema_migrations (version) VALUES ('20130213000035');

INSERT INTO schema_migrations (version) VALUES ('20130213000400');

INSERT INTO schema_migrations (version) VALUES ('20130213001134');