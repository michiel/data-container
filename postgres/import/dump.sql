--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE IF EXISTS cybermetrics;
DROP DATABASE IF EXISTS superset;




--
-- Drop roles
--

DROP ROLE IF EXISTS cybermetrics;
DROP ROLE IF EXISTS postgres;
DROP ROLE IF EXISTS superset;


--
-- Roles
--

CREATE ROLE cybermetrics;
ALTER ROLE cybermetrics WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:xlT8zsBTpMcuphLsj2NzIA==$PlLi+0fKmmL2tXnm9Ol+VWXhddni9KBF1ccAXVluGP4=:pZukBctQkofHbZkgHGw9soOJDQ6gF6WFf060GYxwwcg=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:GkgxaX+1Kn5QMuVU8eTEzw==$qz5WQ4K7gbGI96R2CEeGCeVeprRRZBNSYyv+rZi52gU=:GzdI+Np4eHlRPRhfhdIzQTXI3UcY79yuNqq1NmqiVFY=';
CREATE ROLE superset;
ALTER ROLE superset WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:liTfrjAdsdgFDX6vvCkDKQ==$6YP10148a3q2uW56Hr8NVZYRxIb6BS7P5BoSS3V7t7c=:VF6brTMqCmxYqVVEPqqmSgoz2n5uCLJf77mxtz+w37E=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "cybermetrics" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: cybermetrics; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cybermetrics WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE cybermetrics OWNER TO postgres;

\connect cybermetrics

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
-- Name: DATABASE cybermetrics; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE cybermetrics TO cybermetrics;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO cybermetrics;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "superset" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: superset; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE superset WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE superset OWNER TO postgres;

\connect superset

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
-- Name: emaildeliverytype; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.emaildeliverytype AS ENUM (
    'attachment',
    'inline'
);


ALTER TYPE public.emaildeliverytype OWNER TO postgres;

--
-- Name: objecttype; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.objecttype AS ENUM (
    'query',
    'chart',
    'dashboard',
    'dataset'
);


ALTER TYPE public.objecttype OWNER TO postgres;

--
-- Name: sliceemailreportformat; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.sliceemailreportformat AS ENUM (
    'visualization',
    'data'
);


ALTER TYPE public.sliceemailreportformat OWNER TO postgres;

--
-- Name: tagtype; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tagtype AS ENUM (
    'custom',
    'type',
    'owner',
    'favorited_by'
);


ALTER TYPE public.tagtype OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ab_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_permission (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.ab_permission OWNER TO postgres;

--
-- Name: ab_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_permission_id_seq OWNER TO postgres;

--
-- Name: ab_permission_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_permission_view (
    id integer NOT NULL,
    permission_id integer,
    view_menu_id integer
);


ALTER TABLE public.ab_permission_view OWNER TO postgres;

--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_permission_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_permission_view_id_seq OWNER TO postgres;

--
-- Name: ab_permission_view_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_permission_view_role (
    id integer NOT NULL,
    permission_view_id integer,
    role_id integer
);


ALTER TABLE public.ab_permission_view_role OWNER TO postgres;

--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_permission_view_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_permission_view_role_id_seq OWNER TO postgres;

--
-- Name: ab_register_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_register_user (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(256),
    email character varying(64) NOT NULL,
    registration_date timestamp without time zone,
    registration_hash character varying(256)
);


ALTER TABLE public.ab_register_user OWNER TO postgres;

--
-- Name: ab_register_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_register_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_register_user_id_seq OWNER TO postgres;

--
-- Name: ab_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_role (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.ab_role OWNER TO postgres;

--
-- Name: ab_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_role_id_seq OWNER TO postgres;

--
-- Name: ab_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_user (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(256),
    active boolean,
    email character varying(320) NOT NULL,
    last_login timestamp without time zone,
    login_count integer,
    fail_login_count integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.ab_user OWNER TO postgres;

--
-- Name: ab_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_user_id_seq OWNER TO postgres;

--
-- Name: ab_user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_user_role (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.ab_user_role OWNER TO postgres;

--
-- Name: ab_user_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_user_role_id_seq OWNER TO postgres;

--
-- Name: ab_view_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ab_view_menu (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.ab_view_menu OWNER TO postgres;

--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ab_view_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_view_menu_id_seq OWNER TO postgres;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: annotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.annotation (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    start_dttm timestamp without time zone,
    end_dttm timestamp without time zone,
    layer_id integer,
    short_descr character varying(500),
    long_descr text,
    changed_by_fk integer,
    created_by_fk integer,
    json_metadata text
);


ALTER TABLE public.annotation OWNER TO postgres;

--
-- Name: annotation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.annotation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.annotation_id_seq OWNER TO postgres;

--
-- Name: annotation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.annotation_id_seq OWNED BY public.annotation.id;


--
-- Name: annotation_layer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.annotation_layer (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    name character varying(250),
    descr text,
    changed_by_fk integer,
    created_by_fk integer
);


ALTER TABLE public.annotation_layer OWNER TO postgres;

--
-- Name: annotation_layer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.annotation_layer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.annotation_layer_id_seq OWNER TO postgres;

--
-- Name: annotation_layer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.annotation_layer_id_seq OWNED BY public.annotation_layer.id;


--
-- Name: cache_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_keys (
    id integer NOT NULL,
    cache_key character varying(256) NOT NULL,
    cache_timeout integer,
    datasource_uid character varying(64) NOT NULL,
    created_on timestamp without time zone
);


ALTER TABLE public.cache_keys OWNER TO postgres;

--
-- Name: cache_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cache_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cache_keys_id_seq OWNER TO postgres;

--
-- Name: cache_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cache_keys_id_seq OWNED BY public.cache_keys.id;


--
-- Name: css_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.css_templates (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    template_name character varying(250),
    css text,
    changed_by_fk integer,
    created_by_fk integer
);


ALTER TABLE public.css_templates OWNER TO postgres;

--
-- Name: css_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.css_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.css_templates_id_seq OWNER TO postgres;

--
-- Name: css_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.css_templates_id_seq OWNED BY public.css_templates.id;


--
-- Name: dashboard_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_roles (
    id integer NOT NULL,
    role_id integer NOT NULL,
    dashboard_id integer
);


ALTER TABLE public.dashboard_roles OWNER TO postgres;

--
-- Name: dashboard_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dashboard_roles_id_seq OWNER TO postgres;

--
-- Name: dashboard_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_roles_id_seq OWNED BY public.dashboard_roles.id;


--
-- Name: dashboard_slices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_slices (
    id integer NOT NULL,
    dashboard_id integer,
    slice_id integer
);


ALTER TABLE public.dashboard_slices OWNER TO postgres;

--
-- Name: dashboard_slices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_slices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dashboard_slices_id_seq OWNER TO postgres;

--
-- Name: dashboard_slices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_slices_id_seq OWNED BY public.dashboard_slices.id;


--
-- Name: dashboard_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_user (
    id integer NOT NULL,
    user_id integer,
    dashboard_id integer
);


ALTER TABLE public.dashboard_user OWNER TO postgres;

--
-- Name: dashboard_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dashboard_user_id_seq OWNER TO postgres;

--
-- Name: dashboard_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_user_id_seq OWNED BY public.dashboard_user.id;


--
-- Name: dashboards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboards (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    dashboard_title character varying(500),
    position_json text,
    created_by_fk integer,
    changed_by_fk integer,
    css text,
    description text,
    slug character varying(255),
    json_metadata text,
    published boolean,
    uuid uuid,
    certified_by text,
    certification_details text,
    is_managed_externally boolean DEFAULT false NOT NULL,
    external_url text
);


ALTER TABLE public.dashboards OWNER TO postgres;

--
-- Name: dashboards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dashboards_id_seq OWNER TO postgres;

--
-- Name: dashboards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboards_id_seq OWNED BY public.dashboards.id;


--
-- Name: dbs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dbs (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    database_name character varying(250) NOT NULL,
    sqlalchemy_uri character varying(1024) NOT NULL,
    created_by_fk integer,
    changed_by_fk integer,
    password bytea,
    cache_timeout integer,
    extra text,
    select_as_create_table_as boolean,
    allow_ctas boolean,
    expose_in_sqllab boolean,
    force_ctas_schema character varying(250),
    allow_run_async boolean,
    allow_dml boolean,
    verbose_name character varying(250),
    impersonate_user boolean,
    allow_file_upload boolean DEFAULT true NOT NULL,
    encrypted_extra bytea,
    server_cert bytea,
    allow_cvas boolean,
    uuid uuid,
    configuration_method character varying(255) DEFAULT 'sqlalchemy_form'::character varying,
    is_managed_externally boolean DEFAULT false NOT NULL,
    external_url text
);


ALTER TABLE public.dbs OWNER TO postgres;

--
-- Name: dbs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dbs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dbs_id_seq OWNER TO postgres;

--
-- Name: dbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dbs_id_seq OWNED BY public.dbs.id;


--
-- Name: dynamic_plugin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dynamic_plugin (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    key character varying(50) NOT NULL,
    bundle_url character varying(1000) NOT NULL,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.dynamic_plugin OWNER TO postgres;

--
-- Name: dynamic_plugin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dynamic_plugin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dynamic_plugin_id_seq OWNER TO postgres;

--
-- Name: dynamic_plugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dynamic_plugin_id_seq OWNED BY public.dynamic_plugin.id;


--
-- Name: embedded_dashboards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.embedded_dashboards (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    allow_domain_list text,
    uuid uuid,
    dashboard_id integer NOT NULL,
    changed_by_fk integer,
    created_by_fk integer
);


ALTER TABLE public.embedded_dashboards OWNER TO postgres;

--
-- Name: favstar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favstar (
    id integer NOT NULL,
    user_id integer,
    class_name character varying(50),
    obj_id integer,
    dttm timestamp without time zone
);


ALTER TABLE public.favstar OWNER TO postgres;

--
-- Name: favstar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.favstar_id_seq OWNER TO postgres;

--
-- Name: favstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favstar_id_seq OWNED BY public.favstar.id;


--
-- Name: filter_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filter_sets (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    name character varying(500) NOT NULL,
    description text,
    json_metadata text NOT NULL,
    owner_id integer NOT NULL,
    owner_type character varying(255) NOT NULL,
    dashboard_id integer NOT NULL,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.filter_sets OWNER TO postgres;

--
-- Name: filter_sets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filter_sets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filter_sets_id_seq OWNER TO postgres;

--
-- Name: filter_sets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filter_sets_id_seq OWNED BY public.filter_sets.id;


--
-- Name: key_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.key_value (
    id integer NOT NULL,
    resource character varying(32) NOT NULL,
    value bytea NOT NULL,
    uuid uuid,
    created_on timestamp without time zone,
    created_by_fk integer,
    changed_on timestamp without time zone,
    changed_by_fk integer,
    expires_on timestamp without time zone
);


ALTER TABLE public.key_value OWNER TO postgres;

--
-- Name: key_value_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.key_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.key_value_id_seq OWNER TO postgres;

--
-- Name: key_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.key_value_id_seq OWNED BY public.key_value.id;


--
-- Name: keyvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.keyvalue (
    id integer NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.keyvalue OWNER TO postgres;

--
-- Name: keyvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.keyvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.keyvalue_id_seq OWNER TO postgres;

--
-- Name: keyvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.keyvalue_id_seq OWNED BY public.keyvalue.id;


--
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    id integer NOT NULL,
    action character varying(512),
    user_id integer,
    json text,
    dttm timestamp without time zone,
    dashboard_id integer,
    slice_id integer,
    duration_ms integer,
    referrer character varying(1024)
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- Name: logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logs_id_seq OWNER TO postgres;

--
-- Name: logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logs_id_seq OWNED BY public.logs.id;


--
-- Name: query; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.query (
    id integer NOT NULL,
    client_id character varying(11) NOT NULL,
    database_id integer NOT NULL,
    tmp_table_name character varying(256),
    tab_name character varying(256),
    sql_editor_id character varying(256),
    user_id integer,
    status character varying(16),
    schema character varying(256),
    sql text,
    select_sql text,
    executed_sql text,
    "limit" integer,
    select_as_cta boolean,
    select_as_cta_used boolean,
    progress integer,
    rows integer,
    error_message text,
    start_time numeric(20,6),
    changed_on timestamp without time zone,
    end_time numeric(20,6),
    results_key character varying(64),
    start_running_time numeric(20,6),
    end_result_backend_time numeric(20,6),
    tracking_url text,
    extra_json text,
    tmp_schema_name character varying(256),
    ctas_method character varying(16),
    limiting_factor character varying(255) DEFAULT 'UNKNOWN'::character varying
);


ALTER TABLE public.query OWNER TO postgres;

--
-- Name: query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.query_id_seq OWNER TO postgres;

--
-- Name: query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.query_id_seq OWNED BY public.query.id;


--
-- Name: report_execution_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_execution_log (
    id integer NOT NULL,
    scheduled_dttm timestamp without time zone NOT NULL,
    start_dttm timestamp without time zone,
    end_dttm timestamp without time zone,
    value double precision,
    value_row_json text,
    state character varying(50) NOT NULL,
    error_message text,
    report_schedule_id integer NOT NULL,
    uuid uuid
);


ALTER TABLE public.report_execution_log OWNER TO postgres;

--
-- Name: report_execution_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_execution_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.report_execution_log_id_seq OWNER TO postgres;

--
-- Name: report_execution_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_execution_log_id_seq OWNED BY public.report_execution_log.id;


--
-- Name: report_recipient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_recipient (
    id integer NOT NULL,
    type character varying(50) NOT NULL,
    recipient_config_json text,
    report_schedule_id integer NOT NULL,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.report_recipient OWNER TO postgres;

--
-- Name: report_recipient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_recipient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.report_recipient_id_seq OWNER TO postgres;

--
-- Name: report_recipient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_recipient_id_seq OWNED BY public.report_recipient.id;


--
-- Name: report_schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_schedule (
    id integer NOT NULL,
    type character varying(50) NOT NULL,
    name character varying(150) NOT NULL,
    description text,
    context_markdown text,
    active boolean,
    crontab character varying(1000) NOT NULL,
    sql text,
    chart_id integer,
    dashboard_id integer,
    database_id integer,
    last_eval_dttm timestamp without time zone,
    last_state character varying(50),
    last_value double precision,
    last_value_row_json text,
    validator_type character varying(100),
    validator_config_json text,
    log_retention integer,
    grace_period integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer,
    working_timeout integer,
    report_format character varying(50) DEFAULT 'PNG'::character varying,
    creation_method character varying(255) DEFAULT 'alerts_reports'::character varying,
    timezone character varying(100) DEFAULT 'UTC'::character varying NOT NULL,
    extra_json text NOT NULL,
    force_screenshot boolean,
    custom_width integer,
    custom_height integer
);


ALTER TABLE public.report_schedule OWNER TO postgres;

--
-- Name: report_schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.report_schedule_id_seq OWNER TO postgres;

--
-- Name: report_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_schedule_id_seq OWNED BY public.report_schedule.id;


--
-- Name: report_schedule_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_schedule_user (
    id integer NOT NULL,
    user_id integer NOT NULL,
    report_schedule_id integer NOT NULL
);


ALTER TABLE public.report_schedule_user OWNER TO postgres;

--
-- Name: report_schedule_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_schedule_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.report_schedule_user_id_seq OWNER TO postgres;

--
-- Name: report_schedule_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_schedule_user_id_seq OWNED BY public.report_schedule_user.id;


--
-- Name: rls_filter_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rls_filter_roles (
    id integer NOT NULL,
    role_id integer NOT NULL,
    rls_filter_id integer
);


ALTER TABLE public.rls_filter_roles OWNER TO postgres;

--
-- Name: rls_filter_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rls_filter_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rls_filter_roles_id_seq OWNER TO postgres;

--
-- Name: rls_filter_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rls_filter_roles_id_seq OWNED BY public.rls_filter_roles.id;


--
-- Name: rls_filter_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rls_filter_tables (
    id integer NOT NULL,
    table_id integer,
    rls_filter_id integer
);


ALTER TABLE public.rls_filter_tables OWNER TO postgres;

--
-- Name: rls_filter_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rls_filter_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rls_filter_tables_id_seq OWNER TO postgres;

--
-- Name: rls_filter_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rls_filter_tables_id_seq OWNED BY public.rls_filter_tables.id;


--
-- Name: row_level_security_filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.row_level_security_filters (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    clause text NOT NULL,
    created_by_fk integer,
    changed_by_fk integer,
    filter_type character varying(255),
    group_key character varying(255),
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.row_level_security_filters OWNER TO postgres;

--
-- Name: row_level_security_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.row_level_security_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.row_level_security_filters_id_seq OWNER TO postgres;

--
-- Name: row_level_security_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.row_level_security_filters_id_seq OWNED BY public.row_level_security_filters.id;


--
-- Name: saved_query; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saved_query (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    user_id integer,
    db_id integer,
    label character varying(256),
    schema character varying(128),
    sql text,
    description text,
    changed_by_fk integer,
    created_by_fk integer,
    extra_json text,
    last_run timestamp without time zone,
    rows integer,
    uuid uuid,
    template_parameters text
);


ALTER TABLE public.saved_query OWNER TO postgres;

--
-- Name: saved_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.saved_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.saved_query_id_seq OWNER TO postgres;

--
-- Name: saved_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.saved_query_id_seq OWNED BY public.saved_query.id;


--
-- Name: sl_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_columns (
    uuid uuid,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    is_aggregation boolean NOT NULL,
    is_additive boolean NOT NULL,
    is_dimensional boolean NOT NULL,
    is_filterable boolean NOT NULL,
    is_increase_desired boolean NOT NULL,
    is_managed_externally boolean NOT NULL,
    is_partition boolean NOT NULL,
    is_physical boolean NOT NULL,
    is_temporal boolean NOT NULL,
    is_spatial boolean NOT NULL,
    name text,
    type text,
    unit text,
    expression text,
    description text,
    warning_text text,
    external_url text,
    extra_json text,
    created_by_fk integer,
    changed_by_fk integer,
    advanced_data_type text
);


ALTER TABLE public.sl_columns OWNER TO postgres;

--
-- Name: sl_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sl_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sl_columns_id_seq OWNER TO postgres;

--
-- Name: sl_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sl_columns_id_seq OWNED BY public.sl_columns.id;


--
-- Name: sl_dataset_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_dataset_columns (
    dataset_id integer NOT NULL,
    column_id integer NOT NULL
);


ALTER TABLE public.sl_dataset_columns OWNER TO postgres;

--
-- Name: sl_dataset_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_dataset_tables (
    dataset_id integer NOT NULL,
    table_id integer NOT NULL
);


ALTER TABLE public.sl_dataset_tables OWNER TO postgres;

--
-- Name: sl_dataset_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_dataset_users (
    dataset_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.sl_dataset_users OWNER TO postgres;

--
-- Name: sl_datasets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_datasets (
    uuid uuid,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    database_id integer NOT NULL,
    is_physical boolean,
    is_managed_externally boolean NOT NULL,
    name text,
    expression text,
    external_url text,
    extra_json text,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.sl_datasets OWNER TO postgres;

--
-- Name: sl_datasets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sl_datasets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sl_datasets_id_seq OWNER TO postgres;

--
-- Name: sl_datasets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sl_datasets_id_seq OWNED BY public.sl_datasets.id;


--
-- Name: sl_table_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_table_columns (
    table_id integer NOT NULL,
    column_id integer NOT NULL
);


ALTER TABLE public.sl_table_columns OWNER TO postgres;

--
-- Name: sl_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sl_tables (
    uuid uuid,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    database_id integer NOT NULL,
    is_managed_externally boolean NOT NULL,
    catalog text,
    schema text,
    name text,
    external_url text,
    extra_json text,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.sl_tables OWNER TO postgres;

--
-- Name: sl_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sl_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sl_tables_id_seq OWNER TO postgres;

--
-- Name: sl_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sl_tables_id_seq OWNED BY public.sl_tables.id;


--
-- Name: slice_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slice_user (
    id integer NOT NULL,
    user_id integer,
    slice_id integer
);


ALTER TABLE public.slice_user OWNER TO postgres;

--
-- Name: slice_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.slice_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slice_user_id_seq OWNER TO postgres;

--
-- Name: slice_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.slice_user_id_seq OWNED BY public.slice_user.id;


--
-- Name: slices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slices (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    slice_name character varying(250),
    datasource_type character varying(200),
    datasource_name character varying(2000),
    viz_type character varying(250),
    params text,
    created_by_fk integer,
    changed_by_fk integer,
    description text,
    cache_timeout integer,
    perm character varying(2000),
    datasource_id integer,
    schema_perm character varying(1000),
    uuid uuid,
    query_context text,
    last_saved_at timestamp without time zone,
    last_saved_by_fk integer,
    certified_by text,
    certification_details text,
    is_managed_externally boolean DEFAULT false NOT NULL,
    external_url text,
    CONSTRAINT ck_chart_datasource CHECK (((datasource_type)::text = 'table'::text))
);


ALTER TABLE public.slices OWNER TO postgres;

--
-- Name: slices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.slices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slices_id_seq OWNER TO postgres;

--
-- Name: slices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.slices_id_seq OWNED BY public.slices.id;


--
-- Name: sql_metrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sql_metrics (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    metric_name character varying(255) NOT NULL,
    verbose_name character varying(1024),
    metric_type character varying(32),
    table_id integer,
    expression text NOT NULL,
    description text,
    created_by_fk integer,
    changed_by_fk integer,
    d3format character varying(128),
    warning_text text,
    extra text,
    uuid uuid,
    currency character varying(128)
);


ALTER TABLE public.sql_metrics OWNER TO postgres;

--
-- Name: sql_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sql_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sql_metrics_id_seq OWNER TO postgres;

--
-- Name: sql_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sql_metrics_id_seq OWNED BY public.sql_metrics.id;


--
-- Name: sqlatable_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sqlatable_user (
    id integer NOT NULL,
    user_id integer,
    table_id integer
);


ALTER TABLE public.sqlatable_user OWNER TO postgres;

--
-- Name: sqlatable_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sqlatable_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sqlatable_user_id_seq OWNER TO postgres;

--
-- Name: sqlatable_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sqlatable_user_id_seq OWNED BY public.sqlatable_user.id;


--
-- Name: ssh_tunnels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ssh_tunnels (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer,
    extra_json text,
    uuid uuid,
    id integer NOT NULL,
    database_id integer,
    server_address character varying(256),
    server_port integer,
    username bytea,
    password bytea,
    private_key bytea,
    private_key_password bytea
);


ALTER TABLE public.ssh_tunnels OWNER TO postgres;

--
-- Name: ssh_tunnels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ssh_tunnels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ssh_tunnels_id_seq OWNER TO postgres;

--
-- Name: ssh_tunnels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ssh_tunnels_id_seq OWNED BY public.ssh_tunnels.id;


--
-- Name: tab_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_state (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    extra_json text,
    id integer NOT NULL,
    user_id integer,
    label character varying(256),
    active boolean,
    database_id integer,
    schema character varying(256),
    sql text,
    query_limit integer,
    latest_query_id character varying(11),
    autorun boolean NOT NULL,
    template_params text,
    created_by_fk integer,
    changed_by_fk integer,
    hide_left_bar boolean DEFAULT false NOT NULL,
    saved_query_id integer
);


ALTER TABLE public.tab_state OWNER TO postgres;

--
-- Name: tab_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tab_state_id_seq OWNER TO postgres;

--
-- Name: tab_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tab_state_id_seq OWNED BY public.tab_state.id;


--
-- Name: table_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_columns (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    table_id integer,
    column_name character varying(255) NOT NULL,
    is_dttm boolean,
    is_active boolean,
    type text,
    groupby boolean,
    filterable boolean,
    description text,
    created_by_fk integer,
    changed_by_fk integer,
    expression text,
    verbose_name character varying(1024),
    python_date_format character varying(255),
    uuid uuid,
    extra text,
    advanced_data_type character varying(255)
);


ALTER TABLE public.table_columns OWNER TO postgres;

--
-- Name: table_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.table_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_columns_id_seq OWNER TO postgres;

--
-- Name: table_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.table_columns_id_seq OWNED BY public.table_columns.id;


--
-- Name: table_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_schema (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    extra_json text,
    id integer NOT NULL,
    tab_state_id integer,
    database_id integer NOT NULL,
    schema character varying(256),
    "table" character varying(256),
    description text,
    expanded boolean,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.table_schema OWNER TO postgres;

--
-- Name: table_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.table_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_schema_id_seq OWNER TO postgres;

--
-- Name: table_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.table_schema_id_seq OWNED BY public.table_schema.id;


--
-- Name: tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tables (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    table_name character varying(250) NOT NULL,
    main_dttm_col character varying(250),
    default_endpoint text,
    database_id integer NOT NULL,
    created_by_fk integer,
    changed_by_fk integer,
    "offset" integer,
    description text,
    is_featured boolean,
    cache_timeout integer,
    schema character varying(255),
    sql text,
    params text,
    perm character varying(1000),
    filter_select_enabled boolean,
    fetch_values_predicate text,
    is_sqllab_view boolean DEFAULT false,
    template_params text,
    schema_perm character varying(1000),
    extra text,
    uuid uuid,
    is_managed_externally boolean DEFAULT false NOT NULL,
    external_url text,
    normalize_columns boolean DEFAULT false,
    always_filter_main_dttm boolean DEFAULT false
);


ALTER TABLE public.tables OWNER TO postgres;

--
-- Name: tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tables_id_seq OWNER TO postgres;

--
-- Name: tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tables_id_seq OWNED BY public.tables.id;


--
-- Name: tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    name character varying(250),
    type character varying,
    created_by_fk integer,
    changed_by_fk integer,
    description text
);


ALTER TABLE public.tag OWNER TO postgres;

--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tag_id_seq OWNER TO postgres;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;


--
-- Name: tagged_object; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tagged_object (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    tag_id integer,
    object_id integer,
    object_type character varying,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.tagged_object OWNER TO postgres;

--
-- Name: tagged_object_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tagged_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tagged_object_id_seq OWNER TO postgres;

--
-- Name: tagged_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tagged_object_id_seq OWNED BY public.tagged_object.id;


--
-- Name: url; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    url text,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.url OWNER TO postgres;

--
-- Name: url_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.url_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.url_id_seq OWNER TO postgres;

--
-- Name: url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.url_id_seq OWNED BY public.url.id;


--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_attribute (
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    id integer NOT NULL,
    user_id integer,
    welcome_dashboard_id integer,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.user_attribute OWNER TO postgres;

--
-- Name: user_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_attribute_id_seq OWNER TO postgres;

--
-- Name: user_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_attribute_id_seq OWNED BY public.user_attribute.id;


--
-- Name: user_favorite_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_favorite_tag (
    user_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.user_favorite_tag OWNER TO postgres;

--
-- Name: annotation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation ALTER COLUMN id SET DEFAULT nextval('public.annotation_id_seq'::regclass);


--
-- Name: annotation_layer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation_layer ALTER COLUMN id SET DEFAULT nextval('public.annotation_layer_id_seq'::regclass);


--
-- Name: cache_keys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_keys ALTER COLUMN id SET DEFAULT nextval('public.cache_keys_id_seq'::regclass);


--
-- Name: css_templates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.css_templates ALTER COLUMN id SET DEFAULT nextval('public.css_templates_id_seq'::regclass);


--
-- Name: dashboard_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_roles ALTER COLUMN id SET DEFAULT nextval('public.dashboard_roles_id_seq'::regclass);


--
-- Name: dashboard_slices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_slices ALTER COLUMN id SET DEFAULT nextval('public.dashboard_slices_id_seq'::regclass);


--
-- Name: dashboard_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_user ALTER COLUMN id SET DEFAULT nextval('public.dashboard_user_id_seq'::regclass);


--
-- Name: dashboards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboards ALTER COLUMN id SET DEFAULT nextval('public.dashboards_id_seq'::regclass);


--
-- Name: dbs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs ALTER COLUMN id SET DEFAULT nextval('public.dbs_id_seq'::regclass);


--
-- Name: dynamic_plugin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dynamic_plugin ALTER COLUMN id SET DEFAULT nextval('public.dynamic_plugin_id_seq'::regclass);


--
-- Name: favstar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favstar ALTER COLUMN id SET DEFAULT nextval('public.favstar_id_seq'::regclass);


--
-- Name: filter_sets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_sets ALTER COLUMN id SET DEFAULT nextval('public.filter_sets_id_seq'::regclass);


--
-- Name: key_value id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_value ALTER COLUMN id SET DEFAULT nextval('public.key_value_id_seq'::regclass);


--
-- Name: keyvalue id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keyvalue ALTER COLUMN id SET DEFAULT nextval('public.keyvalue_id_seq'::regclass);


--
-- Name: logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs ALTER COLUMN id SET DEFAULT nextval('public.logs_id_seq'::regclass);


--
-- Name: query id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.query ALTER COLUMN id SET DEFAULT nextval('public.query_id_seq'::regclass);


--
-- Name: report_execution_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_execution_log ALTER COLUMN id SET DEFAULT nextval('public.report_execution_log_id_seq'::regclass);


--
-- Name: report_recipient id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_recipient ALTER COLUMN id SET DEFAULT nextval('public.report_recipient_id_seq'::regclass);


--
-- Name: report_schedule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule ALTER COLUMN id SET DEFAULT nextval('public.report_schedule_id_seq'::regclass);


--
-- Name: report_schedule_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule_user ALTER COLUMN id SET DEFAULT nextval('public.report_schedule_user_id_seq'::regclass);


--
-- Name: rls_filter_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_roles ALTER COLUMN id SET DEFAULT nextval('public.rls_filter_roles_id_seq'::regclass);


--
-- Name: rls_filter_tables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_tables ALTER COLUMN id SET DEFAULT nextval('public.rls_filter_tables_id_seq'::regclass);


--
-- Name: row_level_security_filters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_level_security_filters ALTER COLUMN id SET DEFAULT nextval('public.row_level_security_filters_id_seq'::regclass);


--
-- Name: saved_query id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query ALTER COLUMN id SET DEFAULT nextval('public.saved_query_id_seq'::regclass);


--
-- Name: sl_columns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_columns ALTER COLUMN id SET DEFAULT nextval('public.sl_columns_id_seq'::regclass);


--
-- Name: sl_datasets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_datasets ALTER COLUMN id SET DEFAULT nextval('public.sl_datasets_id_seq'::regclass);


--
-- Name: sl_tables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_tables ALTER COLUMN id SET DEFAULT nextval('public.sl_tables_id_seq'::regclass);


--
-- Name: slice_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slice_user ALTER COLUMN id SET DEFAULT nextval('public.slice_user_id_seq'::regclass);


--
-- Name: slices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slices ALTER COLUMN id SET DEFAULT nextval('public.slices_id_seq'::regclass);


--
-- Name: sql_metrics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics ALTER COLUMN id SET DEFAULT nextval('public.sql_metrics_id_seq'::regclass);


--
-- Name: sqlatable_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sqlatable_user ALTER COLUMN id SET DEFAULT nextval('public.sqlatable_user_id_seq'::regclass);


--
-- Name: ssh_tunnels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ssh_tunnels ALTER COLUMN id SET DEFAULT nextval('public.ssh_tunnels_id_seq'::regclass);


--
-- Name: tab_state id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state ALTER COLUMN id SET DEFAULT nextval('public.tab_state_id_seq'::regclass);


--
-- Name: table_columns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns ALTER COLUMN id SET DEFAULT nextval('public.table_columns_id_seq'::regclass);


--
-- Name: table_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_schema ALTER COLUMN id SET DEFAULT nextval('public.table_schema_id_seq'::regclass);


--
-- Name: tables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables ALTER COLUMN id SET DEFAULT nextval('public.tables_id_seq'::regclass);


--
-- Name: tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);


--
-- Name: tagged_object id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagged_object ALTER COLUMN id SET DEFAULT nextval('public.tagged_object_id_seq'::regclass);


--
-- Name: url id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url ALTER COLUMN id SET DEFAULT nextval('public.url_id_seq'::regclass);


--
-- Name: user_attribute id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_attribute ALTER COLUMN id SET DEFAULT nextval('public.user_attribute_id_seq'::regclass);


--
-- Data for Name: ab_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_permission (id, name) FROM stdin;
1	can_read
2	can_write
3	can_this_form_post
4	can_this_form_get
5	can_userinfo
6	can_add
7	can_delete
8	can_show
9	can_list
10	can_edit
11	resetmypassword
12	resetpasswords
13	userinfoedit
14	copyrole
15	can_get
16	can_invalidate
17	can_export
18	can_warm_up_cache
19	can_delete_embedded
20	can_get_embedded
21	can_set_embedded
22	can_get_or_create_dataset
23	can_duplicate
24	can_get_column_values
25	can_import_
26	can_bulk_create
27	can_estimate_query_cost
28	can_export_csv
29	can_format_sql
30	can_execute_sql_query
31	can_get_results
32	can_download
33	can_query
34	can_query_form_data
35	can_time_range
36	can_external_metadata
37	can_save
38	can_samples
39	can_external_metadata_by_name
40	can_store
41	can_get_value
42	can_my_queries
43	can_sqllab_history
44	can_profile
45	can_dashboard
46	can_sqllab
47	can_log
48	can_import_dashboards
49	can_slice
50	can_explore
51	can_explore_json
52	can_dashboard_permalink
53	can_fetch_datasource_metadata
54	can_expanded
55	can_post
56	can_put
57	can_delete_query
58	can_migrate_query
59	can_activate
60	can_tags
61	can_recent_activity
62	can_grant_guest_token
63	menu_access
64	all_datasource_access
65	all_database_access
66	all_query_access
67	can_csv
68	can_share_dashboard
69	can_share_chart
70	database_access
71	schema_access
\.


--
-- Data for Name: ab_permission_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_permission_view (id, permission_id, view_menu_id) FROM stdin;
1	1	1
2	2	1
3	1	2
4	2	2
5	1	3
6	2	3
7	1	4
8	2	4
9	1	5
10	2	5
11	1	6
12	2	6
13	1	7
14	2	7
15	1	8
16	2	8
17	1	9
18	2	9
19	1	10
20	3	15
21	4	15
22	3	16
23	4	16
24	3	17
25	4	17
26	5	19
27	6	19
28	7	19
29	8	19
30	9	19
31	10	19
32	11	19
33	12	19
34	13	19
35	6	20
36	7	20
37	8	20
38	9	20
39	10	20
40	14	20
41	15	21
42	8	22
43	15	23
44	9	24
45	1	25
46	1	26
47	16	27
48	17	4
49	18	4
50	1	29
51	2	29
52	1	30
53	2	30
54	19	8
55	20	8
56	21	8
57	17	8
58	17	9
59	18	6
60	22	6
61	23	6
62	17	6
63	24	31
64	1	32
65	1	33
66	1	34
67	2	34
68	1	35
69	2	35
70	9	36
71	7	36
72	10	36
73	6	36
74	17	37
75	25	37
76	1	38
77	2	38
78	17	1
79	26	39
80	1	39
81	2	39
82	27	40
83	28	40
84	29	40
85	30	40
86	1	40
87	31	40
88	32	41
89	2	41
90	6	41
91	7	41
92	8	41
93	9	41
94	10	41
95	33	42
96	34	42
97	35	42
98	3	43
99	4	43
100	3	44
101	4	44
102	3	45
103	4	45
104	36	31
105	37	31
106	38	31
107	15	31
108	39	31
109	40	47
110	41	47
111	1	49
112	9	1
113	42	50
114	43	51
115	44	51
116	45	51
117	18	51
118	46	51
119	47	51
120	48	51
121	49	51
122	50	51
123	51	51
124	52	51
125	53	51
126	7	52
127	54	52
128	55	52
129	56	53
130	57	53
131	58	53
132	7	53
133	55	53
134	59	53
135	15	53
136	32	55
137	6	55
138	7	55
139	8	55
140	9	55
141	10	55
142	60	56
143	61	7
144	1	57
145	62	57
146	1	58
147	63	59
148	63	60
149	63	61
150	63	62
151	63	38
152	63	63
153	63	64
154	63	65
155	63	66
156	63	67
157	63	68
158	63	69
159	63	70
160	63	71
161	63	72
162	63	55
163	63	73
164	63	74
165	63	75
166	63	76
167	63	77
168	63	78
169	64	79
170	65	80
171	66	81
172	67	51
173	68	51
174	69	51
175	70	82
176	71	83
177	71	84
\.


--
-- Data for Name: ab_permission_view_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_permission_view_role (id, permission_view_id, role_id) FROM stdin;
1	20	1
2	21	1
3	22	1
4	23	1
5	24	1
6	25	1
7	26	1
8	27	1
9	28	1
10	29	1
11	30	1
12	31	1
13	32	1
14	33	1
15	34	1
16	35	1
17	36	1
18	37	1
19	38	1
20	39	1
21	40	1
22	41	1
23	42	1
24	43	1
25	9	1
26	10	1
27	44	1
28	45	1
29	46	1
30	47	1
31	48	1
32	49	1
33	7	1
34	8	1
35	3	1
36	4	1
37	50	1
38	51	1
39	52	1
40	53	1
41	54	1
42	55	1
43	56	1
44	57	1
45	15	1
46	16	1
47	58	1
48	17	1
49	18	1
50	59	1
51	60	1
52	61	1
53	62	1
54	11	1
55	12	1
56	63	1
57	64	1
58	65	1
59	66	1
60	67	1
61	68	1
62	69	1
63	70	1
64	71	1
65	72	1
66	73	1
67	74	1
68	75	1
69	19	1
70	5	1
71	6	1
72	76	1
73	77	1
74	78	1
75	1	1
76	2	1
77	79	1
78	80	1
79	81	1
80	82	1
81	83	1
82	84	1
83	85	1
84	86	1
85	87	1
86	88	1
87	89	1
88	90	1
89	91	1
90	92	1
91	93	1
92	94	1
93	95	1
94	96	1
95	97	1
96	98	1
97	99	1
98	100	1
99	101	1
100	102	1
101	103	1
102	104	1
103	105	1
104	106	1
105	107	1
106	108	1
107	109	1
108	110	1
109	111	1
110	112	1
111	113	1
112	114	1
113	115	1
114	116	1
115	117	1
116	118	1
117	119	1
118	120	1
119	121	1
120	122	1
121	123	1
122	124	1
123	125	1
124	126	1
125	127	1
126	128	1
127	129	1
128	130	1
129	131	1
130	132	1
131	133	1
132	134	1
133	135	1
134	136	1
135	137	1
136	138	1
137	139	1
138	140	1
139	141	1
140	142	1
141	143	1
142	13	1
143	14	1
144	144	1
145	145	1
146	146	1
147	147	1
148	148	1
149	149	1
150	150	1
151	151	1
152	152	1
153	153	1
154	154	1
155	155	1
156	156	1
157	157	1
158	158	1
159	159	1
160	160	1
161	161	1
162	162	1
163	163	1
164	164	1
165	165	1
166	166	1
167	167	1
168	168	1
169	169	1
170	170	1
171	171	1
172	172	1
173	173	1
174	174	1
175	3	3
176	4	3
177	5	3
178	6	3
179	7	3
180	8	3
181	9	3
182	10	3
183	11	3
184	12	3
185	15	3
186	16	3
187	17	3
188	22	3
189	23	3
190	26	3
191	32	3
192	41	3
193	42	3
194	43	3
195	44	3
196	45	3
197	46	3
198	47	3
199	48	3
200	50	3
201	51	3
202	52	3
203	53	3
204	54	3
205	55	3
206	57	3
207	60	3
208	61	3
209	62	3
210	63	3
211	64	3
212	65	3
213	66	3
214	67	3
215	68	3
216	69	3
217	70	3
218	71	3
219	72	3
220	73	3
221	74	3
222	75	3
223	79	3
224	80	3
225	81	3
226	82	3
227	84	3
228	92	3
229	93	3
230	95	3
231	96	3
232	97	3
233	98	3
234	99	3
235	100	3
236	101	3
237	102	3
238	103	3
239	104	3
240	105	3
241	106	3
242	107	3
243	108	3
244	109	3
245	110	3
246	111	3
247	112	3
248	115	3
249	116	3
250	119	3
251	120	3
252	121	3
253	122	3
254	123	3
255	124	3
256	125	3
257	126	3
258	127	3
259	128	3
260	136	3
261	137	3
262	138	3
263	139	3
264	140	3
265	141	3
266	142	3
267	143	3
268	144	3
269	146	3
270	152	3
271	153	3
272	154	3
273	155	3
274	156	3
275	157	3
276	158	3
277	159	3
278	160	3
279	161	3
280	162	3
281	163	3
282	164	3
283	169	3
284	170	3
285	172	3
286	173	3
287	174	3
288	7	4
289	8	4
290	11	4
291	15	4
292	16	4
293	17	4
294	22	4
295	23	4
296	26	4
297	32	4
298	41	4
299	42	4
300	43	4
301	44	4
302	45	4
303	46	4
304	47	4
305	48	4
306	50	4
307	51	4
308	52	4
309	53	4
310	54	4
311	55	4
312	57	4
313	64	4
314	65	4
315	66	4
316	67	4
317	68	4
318	69	4
319	70	4
320	71	4
321	72	4
322	73	4
323	79	4
324	80	4
325	81	4
326	82	4
327	84	4
328	92	4
329	93	4
330	95	4
331	96	4
332	97	4
333	104	4
334	107	4
335	108	4
336	109	4
337	110	4
338	111	4
339	112	4
340	115	4
341	116	4
342	119	4
343	120	4
344	121	4
345	122	4
346	123	4
347	124	4
348	125	4
349	136	4
350	137	4
351	138	4
352	139	4
353	140	4
354	141	4
355	142	4
356	143	4
357	144	4
358	146	4
359	152	4
360	153	4
361	154	4
362	155	4
363	156	4
364	157	4
365	159	4
366	161	4
367	162	4
368	172	4
369	173	4
370	174	4
371	1	5
372	2	5
373	17	5
374	19	5
375	78	5
376	83	5
377	85	5
378	86	5
379	87	5
380	113	5
381	114	5
382	118	5
383	129	5
384	130	5
385	131	5
386	132	5
387	133	5
388	134	5
389	135	5
390	165	5
391	166	5
392	167	5
393	168	5
394	172	5
\.


--
-- Data for Name: ab_register_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_register_user (id, first_name, last_name, username, password, email, registration_date, registration_hash) FROM stdin;
\.


--
-- Data for Name: ab_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_role (id, name) FROM stdin;
1	Admin
2	Public
3	Alpha
4	Gamma
5	sql_lab
\.


--
-- Data for Name: ab_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_user (id, first_name, last_name, username, password, active, email, last_login, login_count, fail_login_count, created_on, changed_on, created_by_fk, changed_by_fk) FROM stdin;
1	Superset	Admin	admin	pbkdf2:sha256:600000$Ew34o1xRW52gVI8N$97fa60ad7ef00feb8f9e56b1c51faf06df662ea304b4e3508e0adc7838a71056	t	admin@example.com	\N	\N	\N	2024-03-20 03:37:40.429279	2024-03-20 03:37:40.429283	\N	\N
\.


--
-- Data for Name: ab_user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_user_role (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: ab_view_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ab_view_menu (id, name) FROM stdin;
1	SavedQuery
2	CssTemplate
3	ReportSchedule
4	Chart
5	Annotation
6	Dataset
7	Log
8	Dashboard
9	Database
10	Query
11	SupersetIndexView
12	UtilView
13	LocaleView
14	SecurityApi
15	ResetPasswordView
16	ResetMyPasswordView
17	UserInfoEditView
18	AuthDBView
19	UserDBModelView
20	RoleModelView
21	OpenApi
22	SwaggerView
23	MenuApi
24	AsyncEventsRestApi
25	AdvancedDataType
26	AvailableDomains
27	CacheRestApi
28	CurrentUserRestApi
29	DashboardFilterStateRestApi
30	DashboardPermalinkRestApi
31	Datasource
32	EmbeddedDashboard
33	Explore
34	ExploreFormDataRestApi
35	ExplorePermalinkRestApi
36	FilterSets
37	ImportExportRestApi
38	Row Level Security
39	Tag
40	SQLLab
41	DynamicPlugin
42	Api
43	CsvToDatabaseView
44	ExcelToDatabaseView
45	ColumnarToDatabaseView
46	EmbeddedView
47	KV
48	R
49	Profile
50	SqlLab
51	Superset
52	TableSchemaView
53	TabStateView
54	TaggedObjectView
55	Tags
56	TagView
57	SecurityRestApi
58	RowLevelSecurity
59	Security
60	List Users
61	List Roles
62	Action Log
63	Home
64	Data
65	Databases
66	Dashboards
67	Charts
68	Datasets
69	Manage
70	Plugins
71	CSS Templates
72	Import Dashboards
73	Alerts & Report
74	Annotation Layers
75	SQL Lab
76	SQL Editor
77	Saved Queries
78	Query Search
79	all_datasource_access
80	all_database_access
81	all_query_access
82	[Cyber Metrics].(id:1)
83	[Cyber Metrics].[information_schema]
84	[Cyber Metrics].[public]
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
b7851ee5522f
\.


--
-- Data for Name: annotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.annotation (created_on, changed_on, id, start_dttm, end_dttm, layer_id, short_descr, long_descr, changed_by_fk, created_by_fk, json_metadata) FROM stdin;
\.


--
-- Data for Name: annotation_layer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.annotation_layer (created_on, changed_on, id, name, descr, changed_by_fk, created_by_fk) FROM stdin;
\.


--
-- Data for Name: cache_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_keys (id, cache_key, cache_timeout, datasource_uid, created_on) FROM stdin;
\.


--
-- Data for Name: css_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.css_templates (created_on, changed_on, id, template_name, css, changed_by_fk, created_by_fk) FROM stdin;
\.


--
-- Data for Name: dashboard_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_roles (id, role_id, dashboard_id) FROM stdin;
\.


--
-- Data for Name: dashboard_slices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_slices (id, dashboard_id, slice_id) FROM stdin;
\.


--
-- Data for Name: dashboard_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_user (id, user_id, dashboard_id) FROM stdin;
\.


--
-- Data for Name: dashboards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboards (created_on, changed_on, id, dashboard_title, position_json, created_by_fk, changed_by_fk, css, description, slug, json_metadata, published, uuid, certified_by, certification_details, is_managed_externally, external_url) FROM stdin;
\.


--
-- Data for Name: dbs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dbs (created_on, changed_on, id, database_name, sqlalchemy_uri, created_by_fk, changed_by_fk, password, cache_timeout, extra, select_as_create_table_as, allow_ctas, expose_in_sqllab, force_ctas_schema, allow_run_async, allow_dml, verbose_name, impersonate_user, allow_file_upload, encrypted_extra, server_cert, allow_cvas, uuid, configuration_method, is_managed_externally, external_url) FROM stdin;
2024-03-20 03:41:08.164553	2024-03-20 03:41:15.230668	1	Cyber Metrics	postgresql+psycopg2://cybermetrics:XXXXXXXXXX@postgres:5432/cybermetrics	1	1	\\x71415851635373696b67416a56635a644c4a5a6f61513d3d	\N	{"allows_virtual_table_explore":true}	f	f	t	\N	f	f	\N	f	f	\\x5366436479794a6846753154373842397435695730673d3d	\N	f	42c3e827-1428-43e0-8e75-173e6c5d78fe	dynamic_form	f	\N
\.


--
-- Data for Name: dynamic_plugin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dynamic_plugin (created_on, changed_on, id, name, key, bundle_url, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: embedded_dashboards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.embedded_dashboards (created_on, changed_on, allow_domain_list, uuid, dashboard_id, changed_by_fk, created_by_fk) FROM stdin;
\.


--
-- Data for Name: favstar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favstar (id, user_id, class_name, obj_id, dttm) FROM stdin;
\.


--
-- Data for Name: filter_sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filter_sets (created_on, changed_on, id, name, description, json_metadata, owner_id, owner_type, dashboard_id, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: key_value; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.key_value (id, resource, value, uuid, created_on, created_by_fk, changed_on, changed_by_fk, expires_on) FROM stdin;
\.


--
-- Data for Name: keyvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.keyvalue (id, value) FROM stdin;
\.


--
-- Data for Name: logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logs (id, action, user_id, json, dttm, dashboard_id, slice_id, duration_ms, referrer) FROM stdin;
1	welcome	1	{"path": "/superset/welcome/", "object_ref": "Superset.welcome"}	2024-03-20 03:37:44.098245	\N	0	391	\N
2	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:allow_file_upload,opr:upload_is_enabled,value:!t)))", "rison": {"filters": [{"col": "allow_file_upload", "opr": "upload_is_enabled", "value": true}]}}	2024-03-20 03:37:44.693186	\N	0	125	http://localhost:8080/superset/welcome/
3	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:database_name,opr:neq,value:examples)))", "rison": {"filters": [{"col": "database_name", "opr": "neq", "value": "examples"}]}}	2024-03-20 03:37:44.693889	\N	0	107	http://localhost:8080/superset/welcome/
4	DashboardRestApi.get_list	1	{"path": "/api/v1/dashboard/", "q": "(filters:!((col:owners,opr:rel_m_m,value:'1')),order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:5)", "rison": {"filters": [{"col": "owners", "opr": "rel_m_m", "value": "1"}], "order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 5}}	2024-03-20 03:37:44.717197	\N	0	121	http://localhost:8080/superset/welcome/
5	SavedQueryRestApi.get_list	1	{"path": "/api/v1/saved_query/", "q": "(filters:!((col:created_by,opr:rel_o_m,value:'1')),order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:5)", "rison": {"filters": [{"col": "created_by", "opr": "rel_o_m", "value": "1"}], "order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 5}}	2024-03-20 03:37:45.355388	\N	0	36	http://localhost:8080/superset/welcome/
6	ChartRestApi.get_list	1	{"path": "/api/v1/chart/", "q": "(filters:!((col:owners,opr:rel_m_m,value:'1')),order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:5)", "rison": {"filters": [{"col": "owners", "opr": "rel_m_m", "value": "1"}], "order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 5}}	2024-03-20 03:37:45.361313	\N	0	71	http://localhost:8080/superset/welcome/
7	log	1	{"source": "sqlLab", "ts": 1710905864451, "event_name": "spa_navigation", "path": "/superset/welcome/", "event_type": "user", "event_id": "Gox8TUQoFL", "visibility": "visible"}	2024-03-20 03:37:45.498808	\N	0	0	http://localhost:8080/superset/welcome/
8	LogRestApi.recent_activity	1	{"path": "/api/v1/log/recent_activity/", "q": "(page_size:6)", "object_ref": "LogRestApi.recent_activity", "rison": {"page_size": 6}}	2024-03-20 03:37:45.93725	\N	0	9	http://localhost:8080/superset/welcome/
9	DashboardRestApi.get_list	1	{"path": "/api/v1/dashboard/", "q": "(filters:!(),order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:5)", "rison": {"filters": [], "order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 5}}	2024-03-20 03:37:46.012935	\N	0	52	http://localhost:8080/superset/welcome/
10	ChartRestApi.get_list	1	{"path": "/api/v1/chart/", "q": "(filters:!(),order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:5)", "rison": {"filters": [], "order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 5}}	2024-03-20 03:37:46.024692	\N	0	68	http://localhost:8080/superset/welcome/
11	ChartRestApi.info	1	{"path": "/api/v1/chart/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:37:46.063605	\N	0	3	http://localhost:8080/superset/welcome/
12	DashboardRestApi.info	1	{"path": "/api/v1/dashboard/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:37:46.064425	\N	0	6	http://localhost:8080/superset/welcome/
13	DatasetRestApi.info	1	{"path": "/api/v1/dataset/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:39:43.901204	\N	0	36	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
14	DatasetRestApi.get_list	1	{"path": "/api/v1/dataset/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:39:43.925087	\N	0	57	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
15	log	1	{"source": "sqlLab", "ts": 1710905983732, "event_name": "spa_navigation", "path": "/tablemodelview/list/", "event_type": "user", "event_id": "caXjurbSy", "visibility": "visible"}	2024-03-20 03:39:44.797402	\N	0	0	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
16	ChartRestApi.info	1	{"path": "/api/v1/chart/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:39:49.155489	\N	0	19	http://localhost:8080/chart/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc&viewMode=table
17	ChartRestApi.get_list	1	{"path": "/api/v1/chart/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:39:49.159407	\N	0	26	http://localhost:8080/chart/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc&viewMode=table
18	DashboardRestApi.get_list	1	{"path": "/api/v1/dashboard/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:39:49.5424	\N	0	25	http://localhost:8080/dashboard/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc&viewMode=table
19	DashboardRestApi.info	1	{"path": "/api/v1/dashboard/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:39:49.549966	\N	0	24	http://localhost:8080/dashboard/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc&viewMode=table
20	DatasetRestApi.get_list	1	{"path": "/api/v1/dataset/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:39:50.17508	\N	0	14	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
21	DatasetRestApi.info	1	{"path": "/api/v1/dataset/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:39:50.175707	\N	0	20	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
22	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!f)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": false}}	2024-03-20 03:39:51.027025	\N	0	15	http://localhost:8080/dataset/add/
23	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:database_name,opr:ct,value:'')),order_columns:database_name,order_direction:asc,page:0,page_size:100)", "rison": {"filters": [{"col": "database_name", "opr": "ct", "value": ""}], "order_columns": "database_name", "order_direction": "asc", "page": 0, "page_size": 100}}	2024-03-20 03:39:51.039951	\N	0	30	http://localhost:8080/dataset/add/
24	log	1	{"source": "sqlLab", "ts": 1710905989039, "event_name": "spa_navigation", "path": "/chart/list/", "event_type": "user", "event_id": "Xrj3sj9K1", "visibility": "visible"}	2024-03-20 03:39:51.969454	\N	0	0	http://localhost:8080/dataset/add/
25	log	1	{"source": "sqlLab", "ts": 1710905989429, "event_name": "spa_navigation", "path": "/dashboard/list/", "event_type": "user", "event_id": "KO6AruoOvx", "visibility": "visible"}	2024-03-20 03:39:51.969459	\N	0	0	http://localhost:8080/dataset/add/
26	log	1	{"source": "sqlLab", "ts": 1710905990067, "event_name": "spa_navigation", "path": "/tablemodelview/list/", "event_type": "user", "event_id": "TGvJoJUCW", "visibility": "visible"}	2024-03-20 03:39:51.969487	\N	0	0	http://localhost:8080/dataset/add/
27	log	1	{"source": "sqlLab", "ts": 1710905990910, "event_name": "spa_navigation", "path": "/dataset/add/", "event_type": "user", "event_id": "ew1KZ-SsQ", "visibility": "visible"}	2024-03-20 03:39:51.969488	\N	0	0	http://localhost:8080/dataset/add/
32	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:57.128688	\N	0	5	http://localhost:8080/dataset/add/
37	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:40:02.046621	\N	0	4	http://localhost:8080/dataset/add/
44	RLSRestApi.info	1	{"path": "/api/v1/rowlevelsecurity/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:40:15.297452	\N	0	4	http://localhost:8080/rowlevelsecurity/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
49	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:allow_file_upload,opr:upload_is_enabled,value:!t)))", "rison": {"filters": [{"col": "allow_file_upload", "opr": "upload_is_enabled", "value": true}]}}	2024-03-20 03:40:32.742512	\N	0	217	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
54	validation_error	1	{"path": "/api/v1/database/validate_parameters/", "engine": "postgresql"}	2024-03-20 03:40:41.607398	\N	0	\N	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
58	DatabaseRestApi.validate_parameters	1	{"path": "/api/v1/database/validate_parameters/", "object_ref": "DatabaseRestApi.validate_parameters"}	2024-03-20 03:41:08.076852	\N	0	16	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
63	DatabaseRestApi.validate_parameters	1	{"path": "/api/v1/database/validate_parameters/", "object_ref": "DatabaseRestApi.validate_parameters"}	2024-03-20 03:41:15.189937	\N	0	25	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
68	DatasetRestApi.info	1	{"path": "/api/v1/dataset/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:41:17.094729	\N	0	22	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
73	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:41:22.61632	\N	0	14	http://localhost:8080/dataset/add/
28	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:54.956744	\N	0	4	http://localhost:8080/dataset/add/
33	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:57.292731	\N	0	5	http://localhost:8080/dataset/add/
38	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:40:02.219614	\N	0	4	http://localhost:8080/dataset/add/
46	log	1	{"source": "sqlLab", "ts": 1710906015170, "event_name": "spa_navigation", "path": "/rowlevelsecurity/list/", "event_type": "user", "event_id": "zOB7jD86ro", "visibility": "visible"}	2024-03-20 03:40:16.225984	\N	0	0	http://localhost:8080/rowlevelsecurity/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
52	DatabaseRestApi.available	1	{"path": "/api/v1/database/available/", "object_ref": "DatabaseRestApi.available"}	2024-03-20 03:40:34.596794	\N	0	38	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
56	DatabaseRestApi.validate_parameters	1	{"path": "/api/v1/database/validate_parameters/", "object_ref": "DatabaseRestApi.validate_parameters"}	2024-03-20 03:40:59.572146	\N	0	35	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
61	DatabaseRestApi.post	1	{"path": "/api/v1/database/", "object_ref": "DatabaseRestApi.post"}	2024-03-20 03:41:08.200357	\N	0	76	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
65	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:41:15.309603	\N	0	18	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
70	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:database_name,opr:ct,value:'')),order_columns:database_name,order_direction:asc,page:0,page_size:100)", "rison": {"filters": [{"col": "database_name", "opr": "ct", "value": ""}], "order_columns": "database_name", "order_direction": "asc", "page": 0, "page_size": 100}}	2024-03-20 03:41:18.412628	\N	0	20	http://localhost:8080/dataset/add/
75	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:41:25.733923	\N	0	19	http://localhost:8080/dataset/add/
29	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:56.255117	\N	0	5	http://localhost:8080/dataset/add/
34	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:57.454399	\N	0	5	http://localhost:8080/dataset/add/
40	DatasetRestApi.get_list	1	{"path": "/api/v1/dataset/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:40:07.572327	\N	0	17	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
42	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:database_name,opr:neq,value:examples)))", "rison": {"filters": [{"col": "database_name", "opr": "neq", "value": "examples"}]}}	2024-03-20 03:40:15.288018	\N	0	17	http://localhost:8080/rowlevelsecurity/list/
48	DatabaseRestApi.info	1	{"path": "/api/v1/database/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:40:32.539675	\N	0	30	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
53	validation_error	1	{"path": "/api/v1/database/validate_parameters/", "engine": "postgresql"}	2024-03-20 03:40:38.237786	\N	0	\N	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
57	DatabaseRestApi.validate_parameters	1	{"path": "/api/v1/database/validate_parameters/", "object_ref": "DatabaseRestApi.validate_parameters"}	2024-03-20 03:41:08.014962	\N	0	33	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
62	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:41:08.23919	\N	0	13	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
66	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:allow_file_upload,opr:upload_is_enabled,value:!t)))", "rison": {"filters": [{"col": "allow_file_upload", "opr": "upload_is_enabled", "value": true}]}}	2024-03-20 03:41:15.314539	\N	0	15	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
71	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!f)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": false}}	2024-03-20 03:41:18.423825	\N	0	29	http://localhost:8080/dataset/add/
76	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:41:25.914315	\N	0	20	http://localhost:8080/dataset/add/
30	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:56.796307	\N	0	4	http://localhost:8080/dataset/add/
35	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:40:01.601637	\N	0	3	http://localhost:8080/dataset/add/
39	DatasetRestApi.info	1	{"path": "/api/v1/dataset/_info", "q": "(keys:!(permissions))", "rison": {"keys": ["permissions"]}}	2024-03-20 03:40:07.571181	\N	0	18	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
43	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:allow_file_upload,opr:upload_is_enabled,value:!t)))", "rison": {"filters": [{"col": "allow_file_upload", "opr": "upload_is_enabled", "value": true}]}}	2024-03-20 03:40:15.288941	\N	0	29	http://localhost:8080/rowlevelsecurity/list/
47	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:40:32.53825	\N	0	32	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
51	DatabaseRestApi.get_list	1	{"path": "/api/v1/database/", "q": "(filters:!((col:allow_file_upload,opr:upload_is_enabled,value:!t)))", "rison": {"filters": [{"col": "allow_file_upload", "opr": "upload_is_enabled", "value": true}]}}	2024-03-20 03:40:34.58572	\N	0	15	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
60	test_connection_success	1	{"path": "/api/v1/database/", "engine": "PostgresEngineSpec"}	2024-03-20 03:41:08.156684	\N	0	\N	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
64	DatabaseRestApi.put	1	{"path": "/api/v1/database/1", "url_rule": "/api/v1/database/<int:pk>", "object_ref": "DatabaseRestApi.put", "pk": 1}	2024-03-20 03:41:15.250875	\N	0	32	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
69	log	1	{"source": "sqlLab", "ts": 1710906076970, "event_name": "spa_navigation", "path": "/tablemodelview/list/", "event_type": "user", "event_id": "K5UVnAcBw", "visibility": "visible"}	2024-03-20 03:41:18.021687	\N	0	0	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
74	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:41:25.530037	\N	0	14	http://localhost:8080/dataset/add/
31	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:39:56.97403	\N	0	4	http://localhost:8080/dataset/add/
36	DatabaseRestApi.schemas	1	{"path": "/api/v1/database/1/schemas/", "q": "(force:!t)", "url_rule": "/api/v1/database/<int:pk>/schemas/", "object_ref": "DatabaseRestApi.schemas", "pk": 1, "rison": {"force": true}}	2024-03-20 03:40:01.889567	\N	0	5	http://localhost:8080/dataset/add/
41	log	1	{"source": "sqlLab", "ts": 1710906007466, "event_name": "spa_navigation", "path": "/tablemodelview/list/", "event_type": "user", "event_id": "YX8DHyous", "visibility": "visible"}	2024-03-20 03:40:08.52574	\N	0	0	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
45	RLSRestApi.get_list	1	{"path": "/api/v1/rowlevelsecurity/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:40:15.31726	\N	0	20	http://localhost:8080/rowlevelsecurity/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
50	log	1	{"source": "sqlLab", "ts": 1710906032399, "event_name": "spa_navigation", "path": "/databaseview/list/", "event_type": "user", "event_id": "L6rdtDGpZ", "visibility": "visible"}	2024-03-20 03:40:33.456045	\N	0	0	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
55	validation_error	1	{"path": "/api/v1/database/validate_parameters/", "engine": "postgresql"}	2024-03-20 03:40:49.287868	\N	0	\N	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
59	test_connection_attempt	1	{"path": "/api/v1/database/", "engine": "PostgresEngineSpec"}	2024-03-20 03:41:08.140195	\N	0	\N	http://localhost:8080/databaseview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
67	DatasetRestApi.get_list	1	{"path": "/api/v1/dataset/", "q": "(order_column:changed_on_delta_humanized,order_direction:desc,page:0,page_size:25)", "rison": {"order_column": "changed_on_delta_humanized", "order_direction": "desc", "page": 0, "page_size": 25}}	2024-03-20 03:41:17.094322	\N	0	15	http://localhost:8080/tablemodelview/list/?pageIndex=0&sortColumn=changed_on_delta_humanized&sortOrder=desc
72	log	1	{"source": "sqlLab", "ts": 1710906078295, "event_name": "spa_navigation", "path": "/dataset/add/", "event_type": "user", "event_id": "za1J7ixs9", "visibility": "visible"}	2024-03-20 03:41:19.352935	\N	0	0	http://localhost:8080/dataset/add/
\.


--
-- Data for Name: query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.query (id, client_id, database_id, tmp_table_name, tab_name, sql_editor_id, user_id, status, schema, sql, select_sql, executed_sql, "limit", select_as_cta, select_as_cta_used, progress, rows, error_message, start_time, changed_on, end_time, results_key, start_running_time, end_result_backend_time, tracking_url, extra_json, tmp_schema_name, ctas_method, limiting_factor) FROM stdin;
\.


--
-- Data for Name: report_execution_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_execution_log (id, scheduled_dttm, start_dttm, end_dttm, value, value_row_json, state, error_message, report_schedule_id, uuid) FROM stdin;
\.


--
-- Data for Name: report_recipient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_recipient (id, type, recipient_config_json, report_schedule_id, created_on, changed_on, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: report_schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_schedule (id, type, name, description, context_markdown, active, crontab, sql, chart_id, dashboard_id, database_id, last_eval_dttm, last_state, last_value, last_value_row_json, validator_type, validator_config_json, log_retention, grace_period, created_on, changed_on, created_by_fk, changed_by_fk, working_timeout, report_format, creation_method, timezone, extra_json, force_screenshot, custom_width, custom_height) FROM stdin;
\.


--
-- Data for Name: report_schedule_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_schedule_user (id, user_id, report_schedule_id) FROM stdin;
\.


--
-- Data for Name: rls_filter_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rls_filter_roles (id, role_id, rls_filter_id) FROM stdin;
\.


--
-- Data for Name: rls_filter_tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rls_filter_tables (id, table_id, rls_filter_id) FROM stdin;
\.


--
-- Data for Name: row_level_security_filters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.row_level_security_filters (created_on, changed_on, id, clause, created_by_fk, changed_by_fk, filter_type, group_key, name, description) FROM stdin;
\.


--
-- Data for Name: saved_query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saved_query (created_on, changed_on, id, user_id, db_id, label, schema, sql, description, changed_by_fk, created_by_fk, extra_json, last_run, rows, uuid, template_parameters) FROM stdin;
\.


--
-- Data for Name: sl_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_columns (uuid, created_on, changed_on, id, is_aggregation, is_additive, is_dimensional, is_filterable, is_increase_desired, is_managed_externally, is_partition, is_physical, is_temporal, is_spatial, name, type, unit, expression, description, warning_text, external_url, extra_json, created_by_fk, changed_by_fk, advanced_data_type) FROM stdin;
\.


--
-- Data for Name: sl_dataset_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_dataset_columns (dataset_id, column_id) FROM stdin;
\.


--
-- Data for Name: sl_dataset_tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_dataset_tables (dataset_id, table_id) FROM stdin;
\.


--
-- Data for Name: sl_dataset_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_dataset_users (dataset_id, user_id) FROM stdin;
\.


--
-- Data for Name: sl_datasets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_datasets (uuid, created_on, changed_on, id, database_id, is_physical, is_managed_externally, name, expression, external_url, extra_json, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: sl_table_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_table_columns (table_id, column_id) FROM stdin;
\.


--
-- Data for Name: sl_tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sl_tables (uuid, created_on, changed_on, id, database_id, is_managed_externally, catalog, schema, name, external_url, extra_json, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: slice_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slice_user (id, user_id, slice_id) FROM stdin;
\.


--
-- Data for Name: slices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slices (created_on, changed_on, id, slice_name, datasource_type, datasource_name, viz_type, params, created_by_fk, changed_by_fk, description, cache_timeout, perm, datasource_id, schema_perm, uuid, query_context, last_saved_at, last_saved_by_fk, certified_by, certification_details, is_managed_externally, external_url) FROM stdin;
\.


--
-- Data for Name: sql_metrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sql_metrics (created_on, changed_on, id, metric_name, verbose_name, metric_type, table_id, expression, description, created_by_fk, changed_by_fk, d3format, warning_text, extra, uuid, currency) FROM stdin;
\.


--
-- Data for Name: sqlatable_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sqlatable_user (id, user_id, table_id) FROM stdin;
\.


--
-- Data for Name: ssh_tunnels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ssh_tunnels (created_on, changed_on, created_by_fk, changed_by_fk, extra_json, uuid, id, database_id, server_address, server_port, username, password, private_key, private_key_password) FROM stdin;
\.


--
-- Data for Name: tab_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_state (created_on, changed_on, extra_json, id, user_id, label, active, database_id, schema, sql, query_limit, latest_query_id, autorun, template_params, created_by_fk, changed_by_fk, hide_left_bar, saved_query_id) FROM stdin;
\.


--
-- Data for Name: table_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_columns (created_on, changed_on, id, table_id, column_name, is_dttm, is_active, type, groupby, filterable, description, created_by_fk, changed_by_fk, expression, verbose_name, python_date_format, uuid, extra, advanced_data_type) FROM stdin;
\.


--
-- Data for Name: table_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_schema (created_on, changed_on, extra_json, id, tab_state_id, database_id, schema, "table", description, expanded, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tables (created_on, changed_on, id, table_name, main_dttm_col, default_endpoint, database_id, created_by_fk, changed_by_fk, "offset", description, is_featured, cache_timeout, schema, sql, params, perm, filter_select_enabled, fetch_values_predicate, is_sqllab_view, template_params, schema_perm, extra, uuid, is_managed_externally, external_url, normalize_columns, always_filter_main_dttm) FROM stdin;
\.


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag (created_on, changed_on, id, name, type, created_by_fk, changed_by_fk, description) FROM stdin;
\.


--
-- Data for Name: tagged_object; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tagged_object (created_on, changed_on, id, tag_id, object_id, object_type, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: url; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.url (created_on, changed_on, id, url, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_attribute (created_on, changed_on, id, user_id, welcome_dashboard_id, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Data for Name: user_favorite_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_favorite_tag (user_id, tag_id) FROM stdin;
\.


--
-- Name: ab_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_permission_id_seq', 71, true);


--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_permission_view_id_seq', 177, true);


--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_permission_view_role_id_seq', 394, true);


--
-- Name: ab_register_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_register_user_id_seq', 1, false);


--
-- Name: ab_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_role_id_seq', 5, true);


--
-- Name: ab_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_user_id_seq', 1, true);


--
-- Name: ab_user_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_user_role_id_seq', 1, true);


--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ab_view_menu_id_seq', 84, true);


--
-- Name: annotation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.annotation_id_seq', 1, false);


--
-- Name: annotation_layer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.annotation_layer_id_seq', 1, false);


--
-- Name: cache_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cache_keys_id_seq', 1, false);


--
-- Name: css_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.css_templates_id_seq', 1, false);


--
-- Name: dashboard_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_roles_id_seq', 1, false);


--
-- Name: dashboard_slices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_slices_id_seq', 1, false);


--
-- Name: dashboard_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_user_id_seq', 1, false);


--
-- Name: dashboards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboards_id_seq', 1, false);


--
-- Name: dbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dbs_id_seq', 1, true);


--
-- Name: dynamic_plugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dynamic_plugin_id_seq', 1, false);


--
-- Name: favstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favstar_id_seq', 1, false);


--
-- Name: filter_sets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filter_sets_id_seq', 1, false);


--
-- Name: key_value_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.key_value_id_seq', 1, false);


--
-- Name: keyvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.keyvalue_id_seq', 1, false);


--
-- Name: logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logs_id_seq', 76, true);


--
-- Name: query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.query_id_seq', 1, false);


--
-- Name: report_execution_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_execution_log_id_seq', 1, false);


--
-- Name: report_recipient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_recipient_id_seq', 1, false);


--
-- Name: report_schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_schedule_id_seq', 1, false);


--
-- Name: report_schedule_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_schedule_user_id_seq', 1, false);


--
-- Name: rls_filter_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rls_filter_roles_id_seq', 1, false);


--
-- Name: rls_filter_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rls_filter_tables_id_seq', 1, false);


--
-- Name: row_level_security_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.row_level_security_filters_id_seq', 1, false);


--
-- Name: saved_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.saved_query_id_seq', 1, false);


--
-- Name: sl_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sl_columns_id_seq', 1, false);


--
-- Name: sl_datasets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sl_datasets_id_seq', 1, false);


--
-- Name: sl_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sl_tables_id_seq', 1, false);


--
-- Name: slice_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.slice_user_id_seq', 1, false);


--
-- Name: slices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.slices_id_seq', 1, false);


--
-- Name: sql_metrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sql_metrics_id_seq', 1, false);


--
-- Name: sqlatable_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sqlatable_user_id_seq', 1, false);


--
-- Name: ssh_tunnels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ssh_tunnels_id_seq', 1, false);


--
-- Name: tab_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_state_id_seq', 1, false);


--
-- Name: table_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_columns_id_seq', 1, false);


--
-- Name: table_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_schema_id_seq', 1, false);


--
-- Name: tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tables_id_seq', 1, false);


--
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_id_seq', 1, false);


--
-- Name: tagged_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tagged_object_id_seq', 1, false);


--
-- Name: url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.url_id_seq', 1, false);


--
-- Name: user_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_attribute_id_seq', 1, false);


--
-- Name: tables _customer_location_uc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT _customer_location_uc UNIQUE (database_id, schema, table_name);


--
-- Name: ab_permission ab_permission_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_name_key UNIQUE (name);


--
-- Name: ab_permission ab_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view ab_permission_view_permission_id_view_menu_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_view_menu_id_key UNIQUE (permission_id, view_menu_id);


--
-- Name: ab_permission_view ab_permission_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view_role ab_permission_view_role_permission_view_id_role_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_role_id_key UNIQUE (permission_view_id, role_id);


--
-- Name: ab_permission_view_role ab_permission_view_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user ab_register_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user ab_register_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_username_key UNIQUE (username);


--
-- Name: ab_role ab_role_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_name_key UNIQUE (name);


--
-- Name: ab_role ab_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user ab_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_email_key UNIQUE (email);


--
-- Name: ab_user ab_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role ab_user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role ab_user_role_user_id_role_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_role_id_key UNIQUE (user_id, role_id);


--
-- Name: ab_user ab_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_username_key UNIQUE (username);


--
-- Name: ab_view_menu ab_view_menu_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_name_key UNIQUE (name);


--
-- Name: ab_view_menu ab_view_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: annotation_layer annotation_layer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation_layer
    ADD CONSTRAINT annotation_layer_pkey PRIMARY KEY (id);


--
-- Name: annotation annotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation
    ADD CONSTRAINT annotation_pkey PRIMARY KEY (id);


--
-- Name: cache_keys cache_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_keys
    ADD CONSTRAINT cache_keys_pkey PRIMARY KEY (id);


--
-- Name: query client_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.query
    ADD CONSTRAINT client_id UNIQUE (client_id);


--
-- Name: css_templates css_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.css_templates
    ADD CONSTRAINT css_templates_pkey PRIMARY KEY (id);


--
-- Name: dashboard_roles dashboard_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_roles
    ADD CONSTRAINT dashboard_roles_pkey PRIMARY KEY (id);


--
-- Name: dashboard_slices dashboard_slices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_slices
    ADD CONSTRAINT dashboard_slices_pkey PRIMARY KEY (id);


--
-- Name: dashboard_user dashboard_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_user
    ADD CONSTRAINT dashboard_user_pkey PRIMARY KEY (id);


--
-- Name: dashboards dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboards
    ADD CONSTRAINT dashboards_pkey PRIMARY KEY (id);


--
-- Name: dbs dbs_database_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs
    ADD CONSTRAINT dbs_database_name_key UNIQUE (database_name);


--
-- Name: dbs dbs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs
    ADD CONSTRAINT dbs_pkey PRIMARY KEY (id);


--
-- Name: dbs dbs_verbose_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs
    ADD CONSTRAINT dbs_verbose_name_key UNIQUE (verbose_name);


--
-- Name: dynamic_plugin dynamic_plugin_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dynamic_plugin
    ADD CONSTRAINT dynamic_plugin_key_key UNIQUE (key);


--
-- Name: dynamic_plugin dynamic_plugin_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dynamic_plugin
    ADD CONSTRAINT dynamic_plugin_name_key UNIQUE (name);


--
-- Name: dynamic_plugin dynamic_plugin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dynamic_plugin
    ADD CONSTRAINT dynamic_plugin_pkey PRIMARY KEY (id);


--
-- Name: favstar favstar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favstar
    ADD CONSTRAINT favstar_pkey PRIMARY KEY (id);


--
-- Name: filter_sets filter_sets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_sets
    ADD CONSTRAINT filter_sets_pkey PRIMARY KEY (id);


--
-- Name: dashboards idx_unique_slug; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboards
    ADD CONSTRAINT idx_unique_slug UNIQUE (slug);


--
-- Name: key_value key_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_value
    ADD CONSTRAINT key_value_pkey PRIMARY KEY (id);


--
-- Name: keyvalue keyvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keyvalue
    ADD CONSTRAINT keyvalue_pkey PRIMARY KEY (id);


--
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);


--
-- Name: query query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.query
    ADD CONSTRAINT query_pkey PRIMARY KEY (id);


--
-- Name: report_execution_log report_execution_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_execution_log
    ADD CONSTRAINT report_execution_log_pkey PRIMARY KEY (id);


--
-- Name: report_recipient report_recipient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_recipient
    ADD CONSTRAINT report_recipient_pkey PRIMARY KEY (id);


--
-- Name: report_schedule report_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT report_schedule_pkey PRIMARY KEY (id);


--
-- Name: report_schedule_user report_schedule_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule_user
    ADD CONSTRAINT report_schedule_user_pkey PRIMARY KEY (id);


--
-- Name: rls_filter_roles rls_filter_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_roles
    ADD CONSTRAINT rls_filter_roles_pkey PRIMARY KEY (id);


--
-- Name: rls_filter_tables rls_filter_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_tables
    ADD CONSTRAINT rls_filter_tables_pkey PRIMARY KEY (id);


--
-- Name: row_level_security_filters row_level_security_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_level_security_filters
    ADD CONSTRAINT row_level_security_filters_pkey PRIMARY KEY (id);


--
-- Name: saved_query saved_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query
    ADD CONSTRAINT saved_query_pkey PRIMARY KEY (id);


--
-- Name: sl_columns sl_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_columns
    ADD CONSTRAINT sl_columns_pkey PRIMARY KEY (id);


--
-- Name: sl_columns sl_columns_uuid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_columns
    ADD CONSTRAINT sl_columns_uuid_key UNIQUE (uuid);


--
-- Name: sl_dataset_columns sl_dataset_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_columns
    ADD CONSTRAINT sl_dataset_columns_pkey PRIMARY KEY (dataset_id, column_id);


--
-- Name: sl_dataset_tables sl_dataset_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_tables
    ADD CONSTRAINT sl_dataset_tables_pkey PRIMARY KEY (dataset_id, table_id);


--
-- Name: sl_dataset_users sl_dataset_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_users
    ADD CONSTRAINT sl_dataset_users_pkey PRIMARY KEY (dataset_id, user_id);


--
-- Name: sl_datasets sl_datasets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_datasets
    ADD CONSTRAINT sl_datasets_pkey PRIMARY KEY (id);


--
-- Name: sl_datasets sl_datasets_uuid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_datasets
    ADD CONSTRAINT sl_datasets_uuid_key UNIQUE (uuid);


--
-- Name: sl_table_columns sl_table_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_table_columns
    ADD CONSTRAINT sl_table_columns_pkey PRIMARY KEY (table_id, column_id);


--
-- Name: sl_tables sl_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_tables
    ADD CONSTRAINT sl_tables_pkey PRIMARY KEY (id);


--
-- Name: sl_tables sl_tables_uuid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_tables
    ADD CONSTRAINT sl_tables_uuid_key UNIQUE (uuid);


--
-- Name: slice_user slice_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slice_user
    ADD CONSTRAINT slice_user_pkey PRIMARY KEY (id);


--
-- Name: slices slices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slices
    ADD CONSTRAINT slices_pkey PRIMARY KEY (id);


--
-- Name: sql_metrics sql_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics
    ADD CONSTRAINT sql_metrics_pkey PRIMARY KEY (id);


--
-- Name: sqlatable_user sqlatable_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sqlatable_user
    ADD CONSTRAINT sqlatable_user_pkey PRIMARY KEY (id);


--
-- Name: ssh_tunnels ssh_tunnels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ssh_tunnels
    ADD CONSTRAINT ssh_tunnels_pkey PRIMARY KEY (id);


--
-- Name: tab_state tab_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT tab_state_pkey PRIMARY KEY (id);


--
-- Name: table_columns table_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns
    ADD CONSTRAINT table_columns_pkey PRIMARY KEY (id);


--
-- Name: table_schema table_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_schema
    ADD CONSTRAINT table_schema_pkey PRIMARY KEY (id);


--
-- Name: tables tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (id);


--
-- Name: tag tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_name_key UNIQUE (name);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: tagged_object tagged_object_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagged_object
    ADD CONSTRAINT tagged_object_pkey PRIMARY KEY (id);


--
-- Name: dashboard_slices uq_dashboard_slice; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_slices
    ADD CONSTRAINT uq_dashboard_slice UNIQUE (dashboard_id, slice_id);


--
-- Name: dashboards uq_dashboards_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboards
    ADD CONSTRAINT uq_dashboards_uuid UNIQUE (uuid);


--
-- Name: dbs uq_dbs_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs
    ADD CONSTRAINT uq_dbs_uuid UNIQUE (uuid);


--
-- Name: report_schedule uq_report_schedule_name_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT uq_report_schedule_name_type UNIQUE (name, type);


--
-- Name: row_level_security_filters uq_rls_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_level_security_filters
    ADD CONSTRAINT uq_rls_name UNIQUE (name);


--
-- Name: saved_query uq_saved_query_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query
    ADD CONSTRAINT uq_saved_query_uuid UNIQUE (uuid);


--
-- Name: slices uq_slices_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slices
    ADD CONSTRAINT uq_slices_uuid UNIQUE (uuid);


--
-- Name: sql_metrics uq_sql_metrics_metric_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics
    ADD CONSTRAINT uq_sql_metrics_metric_name UNIQUE (metric_name, table_id);


--
-- Name: sql_metrics uq_sql_metrics_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics
    ADD CONSTRAINT uq_sql_metrics_uuid UNIQUE (uuid);


--
-- Name: table_columns uq_table_columns_column_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns
    ADD CONSTRAINT uq_table_columns_column_name UNIQUE (column_name, table_id);


--
-- Name: table_columns uq_table_columns_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns
    ADD CONSTRAINT uq_table_columns_uuid UNIQUE (uuid);


--
-- Name: tables uq_tables_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT uq_tables_uuid UNIQUE (uuid);


--
-- Name: url url_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url
    ADD CONSTRAINT url_pkey PRIMARY KEY (id);


--
-- Name: user_attribute user_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT user_attribute_pkey PRIMARY KEY (id);


--
-- Name: ix_cache_keys_datasource_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_cache_keys_datasource_uid ON public.cache_keys USING btree (datasource_uid);


--
-- Name: ix_creation_method; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_creation_method ON public.report_schedule USING btree (creation_method);


--
-- Name: ix_key_value_expires_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_key_value_expires_on ON public.key_value USING btree (expires_on);


--
-- Name: ix_key_value_uuid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_key_value_uuid ON public.key_value USING btree (uuid);


--
-- Name: ix_logs_user_id_dttm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_logs_user_id_dttm ON public.logs USING btree (user_id, dttm);


--
-- Name: ix_query_results_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_query_results_key ON public.query USING btree (results_key);


--
-- Name: ix_report_schedule_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_report_schedule_active ON public.report_schedule USING btree (active);


--
-- Name: ix_row_level_security_filters_filter_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_row_level_security_filters_filter_type ON public.row_level_security_filters USING btree (filter_type);


--
-- Name: ix_ssh_tunnels_database_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_ssh_tunnels_database_id ON public.ssh_tunnels USING btree (database_id);


--
-- Name: ix_ssh_tunnels_uuid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_ssh_tunnels_uuid ON public.ssh_tunnels USING btree (uuid);


--
-- Name: ix_tab_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_tab_state_id ON public.tab_state USING btree (id);


--
-- Name: ix_table_schema_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_table_schema_id ON public.table_schema USING btree (id);


--
-- Name: ix_tagged_object_object_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_tagged_object_object_id ON public.tagged_object USING btree (object_id);


--
-- Name: ti_dag_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ti_dag_state ON public.annotation USING btree (layer_id, start_dttm, end_dttm);


--
-- Name: ti_user_id_changed_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ti_user_id_changed_on ON public.query USING btree (user_id, changed_on);


--
-- Name: ab_permission_view ab_permission_view_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.ab_permission(id);


--
-- Name: ab_permission_view_role ab_permission_view_role_permission_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES public.ab_permission_view(id);


--
-- Name: ab_permission_view_role ab_permission_view_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_permission_view ab_permission_view_view_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES public.ab_view_menu(id);


--
-- Name: ab_user ab_user_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user ab_user_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user_role ab_user_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_user_role ab_user_role_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: annotation annotation_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation
    ADD CONSTRAINT annotation_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: annotation annotation_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation
    ADD CONSTRAINT annotation_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: annotation_layer annotation_layer_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation_layer
    ADD CONSTRAINT annotation_layer_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: annotation_layer annotation_layer_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation_layer
    ADD CONSTRAINT annotation_layer_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: annotation annotation_layer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annotation
    ADD CONSTRAINT annotation_layer_id_fkey FOREIGN KEY (layer_id) REFERENCES public.annotation_layer(id);


--
-- Name: css_templates css_templates_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.css_templates
    ADD CONSTRAINT css_templates_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: css_templates css_templates_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.css_templates
    ADD CONSTRAINT css_templates_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: dashboards dashboards_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboards
    ADD CONSTRAINT dashboards_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: dashboards dashboards_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboards
    ADD CONSTRAINT dashboards_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: dbs dbs_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs
    ADD CONSTRAINT dbs_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: dbs dbs_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbs
    ADD CONSTRAINT dbs_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: dynamic_plugin dynamic_plugin_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dynamic_plugin
    ADD CONSTRAINT dynamic_plugin_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: dynamic_plugin dynamic_plugin_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dynamic_plugin
    ADD CONSTRAINT dynamic_plugin_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: favstar favstar_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favstar
    ADD CONSTRAINT favstar_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: filter_sets filter_sets_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_sets
    ADD CONSTRAINT filter_sets_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: filter_sets filter_sets_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_sets
    ADD CONSTRAINT filter_sets_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: filter_sets filter_sets_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_sets
    ADD CONSTRAINT filter_sets_dashboard_id_fkey FOREIGN KEY (dashboard_id) REFERENCES public.dashboards(id);


--
-- Name: dashboard_roles fk_dashboard_roles_dashboard_id_dashboards; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_roles
    ADD CONSTRAINT fk_dashboard_roles_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES public.dashboards(id) ON DELETE CASCADE;


--
-- Name: dashboard_roles fk_dashboard_roles_role_id_ab_role; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_roles
    ADD CONSTRAINT fk_dashboard_roles_role_id_ab_role FOREIGN KEY (role_id) REFERENCES public.ab_role(id) ON DELETE CASCADE;


--
-- Name: dashboard_slices fk_dashboard_slices_dashboard_id_dashboards; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_slices
    ADD CONSTRAINT fk_dashboard_slices_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES public.dashboards(id) ON DELETE CASCADE;


--
-- Name: dashboard_slices fk_dashboard_slices_slice_id_slices; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_slices
    ADD CONSTRAINT fk_dashboard_slices_slice_id_slices FOREIGN KEY (slice_id) REFERENCES public.slices(id) ON DELETE CASCADE;


--
-- Name: dashboard_user fk_dashboard_user_dashboard_id_dashboards; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_user
    ADD CONSTRAINT fk_dashboard_user_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES public.dashboards(id) ON DELETE CASCADE;


--
-- Name: dashboard_user fk_dashboard_user_user_id_ab_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_user
    ADD CONSTRAINT fk_dashboard_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES public.ab_user(id) ON DELETE CASCADE;


--
-- Name: embedded_dashboards fk_embedded_dashboards_dashboard_id_dashboards; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.embedded_dashboards
    ADD CONSTRAINT fk_embedded_dashboards_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES public.dashboards(id) ON DELETE CASCADE;


--
-- Name: report_schedule_user fk_report_schedule_user_report_schedule_id_report_schedule; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule_user
    ADD CONSTRAINT fk_report_schedule_user_report_schedule_id_report_schedule FOREIGN KEY (report_schedule_id) REFERENCES public.report_schedule(id) ON DELETE CASCADE;


--
-- Name: report_schedule_user fk_report_schedule_user_user_id_ab_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule_user
    ADD CONSTRAINT fk_report_schedule_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES public.ab_user(id) ON DELETE CASCADE;


--
-- Name: slice_user fk_slice_user_slice_id_slices; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slice_user
    ADD CONSTRAINT fk_slice_user_slice_id_slices FOREIGN KEY (slice_id) REFERENCES public.slices(id) ON DELETE CASCADE;


--
-- Name: slice_user fk_slice_user_user_id_ab_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slice_user
    ADD CONSTRAINT fk_slice_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES public.ab_user(id) ON DELETE CASCADE;


--
-- Name: sql_metrics fk_sql_metrics_table_id_tables; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics
    ADD CONSTRAINT fk_sql_metrics_table_id_tables FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;


--
-- Name: sqlatable_user fk_sqlatable_user_table_id_tables; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sqlatable_user
    ADD CONSTRAINT fk_sqlatable_user_table_id_tables FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;


--
-- Name: sqlatable_user fk_sqlatable_user_user_id_ab_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sqlatable_user
    ADD CONSTRAINT fk_sqlatable_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES public.ab_user(id) ON DELETE CASCADE;


--
-- Name: table_columns fk_table_columns_table_id_tables; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns
    ADD CONSTRAINT fk_table_columns_table_id_tables FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;


--
-- Name: key_value key_value_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_value
    ADD CONSTRAINT key_value_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: key_value key_value_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_value
    ADD CONSTRAINT key_value_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: logs logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: query query_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.query
    ADD CONSTRAINT query_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id);


--
-- Name: query query_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.query
    ADD CONSTRAINT query_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: report_execution_log report_execution_log_report_schedule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_execution_log
    ADD CONSTRAINT report_execution_log_report_schedule_id_fkey FOREIGN KEY (report_schedule_id) REFERENCES public.report_schedule(id);


--
-- Name: report_recipient report_recipient_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_recipient
    ADD CONSTRAINT report_recipient_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: report_recipient report_recipient_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_recipient
    ADD CONSTRAINT report_recipient_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: report_recipient report_recipient_report_schedule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_recipient
    ADD CONSTRAINT report_recipient_report_schedule_id_fkey FOREIGN KEY (report_schedule_id) REFERENCES public.report_schedule(id);


--
-- Name: report_schedule report_schedule_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT report_schedule_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: report_schedule report_schedule_chart_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT report_schedule_chart_id_fkey FOREIGN KEY (chart_id) REFERENCES public.slices(id);


--
-- Name: report_schedule report_schedule_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT report_schedule_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: report_schedule report_schedule_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT report_schedule_dashboard_id_fkey FOREIGN KEY (dashboard_id) REFERENCES public.dashboards(id);


--
-- Name: report_schedule report_schedule_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_schedule
    ADD CONSTRAINT report_schedule_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id);


--
-- Name: rls_filter_roles rls_filter_roles_rls_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_roles
    ADD CONSTRAINT rls_filter_roles_rls_filter_id_fkey FOREIGN KEY (rls_filter_id) REFERENCES public.row_level_security_filters(id);


--
-- Name: rls_filter_roles rls_filter_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_roles
    ADD CONSTRAINT rls_filter_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: rls_filter_tables rls_filter_tables_rls_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_tables
    ADD CONSTRAINT rls_filter_tables_rls_filter_id_fkey FOREIGN KEY (rls_filter_id) REFERENCES public.row_level_security_filters(id);


--
-- Name: rls_filter_tables rls_filter_tables_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rls_filter_tables
    ADD CONSTRAINT rls_filter_tables_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.tables(id);


--
-- Name: row_level_security_filters row_level_security_filters_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_level_security_filters
    ADD CONSTRAINT row_level_security_filters_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: row_level_security_filters row_level_security_filters_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_level_security_filters
    ADD CONSTRAINT row_level_security_filters_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: saved_query saved_query_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query
    ADD CONSTRAINT saved_query_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: saved_query saved_query_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query
    ADD CONSTRAINT saved_query_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: saved_query saved_query_db_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query
    ADD CONSTRAINT saved_query_db_id_fkey FOREIGN KEY (db_id) REFERENCES public.dbs(id);


--
-- Name: tab_state saved_query_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT saved_query_id FOREIGN KEY (saved_query_id) REFERENCES public.saved_query(id) ON DELETE SET NULL;


--
-- Name: saved_query saved_query_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_query
    ADD CONSTRAINT saved_query_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: sl_columns sl_columns_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_columns
    ADD CONSTRAINT sl_columns_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sl_columns sl_columns_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_columns
    ADD CONSTRAINT sl_columns_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sl_dataset_columns sl_dataset_columns_column_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_columns
    ADD CONSTRAINT sl_dataset_columns_column_id_fkey FOREIGN KEY (column_id) REFERENCES public.sl_columns(id);


--
-- Name: sl_dataset_columns sl_dataset_columns_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_columns
    ADD CONSTRAINT sl_dataset_columns_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.sl_datasets(id);


--
-- Name: sl_dataset_tables sl_dataset_tables_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_tables
    ADD CONSTRAINT sl_dataset_tables_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.sl_datasets(id);


--
-- Name: sl_dataset_tables sl_dataset_tables_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_tables
    ADD CONSTRAINT sl_dataset_tables_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.sl_tables(id);


--
-- Name: sl_dataset_users sl_dataset_users_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_users
    ADD CONSTRAINT sl_dataset_users_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.sl_datasets(id);


--
-- Name: sl_dataset_users sl_dataset_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_dataset_users
    ADD CONSTRAINT sl_dataset_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: sl_datasets sl_datasets_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_datasets
    ADD CONSTRAINT sl_datasets_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sl_datasets sl_datasets_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_datasets
    ADD CONSTRAINT sl_datasets_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sl_datasets sl_datasets_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_datasets
    ADD CONSTRAINT sl_datasets_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id);


--
-- Name: sl_table_columns sl_table_columns_column_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_table_columns
    ADD CONSTRAINT sl_table_columns_column_id_fkey FOREIGN KEY (column_id) REFERENCES public.sl_columns(id);


--
-- Name: sl_table_columns sl_table_columns_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_table_columns
    ADD CONSTRAINT sl_table_columns_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.sl_tables(id);


--
-- Name: sl_tables sl_tables_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_tables
    ADD CONSTRAINT sl_tables_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sl_tables sl_tables_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_tables
    ADD CONSTRAINT sl_tables_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sl_tables sl_tables_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sl_tables
    ADD CONSTRAINT sl_tables_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id);


--
-- Name: slices slices_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slices
    ADD CONSTRAINT slices_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: slices slices_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slices
    ADD CONSTRAINT slices_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: slices slices_last_saved_by_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slices
    ADD CONSTRAINT slices_last_saved_by_fk FOREIGN KEY (last_saved_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sql_metrics sql_metrics_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics
    ADD CONSTRAINT sql_metrics_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: sql_metrics sql_metrics_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sql_metrics
    ADD CONSTRAINT sql_metrics_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ssh_tunnels ssh_tunnels_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ssh_tunnels
    ADD CONSTRAINT ssh_tunnels_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id);


--
-- Name: tab_state tab_state_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT tab_state_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tab_state tab_state_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT tab_state_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tab_state tab_state_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT tab_state_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id) ON DELETE CASCADE;


--
-- Name: tab_state tab_state_latest_query_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT tab_state_latest_query_id_fkey FOREIGN KEY (latest_query_id) REFERENCES public.query(client_id) ON DELETE SET NULL;


--
-- Name: tab_state tab_state_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_state
    ADD CONSTRAINT tab_state_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: table_columns table_columns_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns
    ADD CONSTRAINT table_columns_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: table_columns table_columns_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_columns
    ADD CONSTRAINT table_columns_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: table_schema table_schema_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_schema
    ADD CONSTRAINT table_schema_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: table_schema table_schema_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_schema
    ADD CONSTRAINT table_schema_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: table_schema table_schema_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_schema
    ADD CONSTRAINT table_schema_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id) ON DELETE CASCADE;


--
-- Name: table_schema table_schema_tab_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_schema
    ADD CONSTRAINT table_schema_tab_state_id_fkey FOREIGN KEY (tab_state_id) REFERENCES public.tab_state(id) ON DELETE CASCADE;


--
-- Name: tables tables_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tables tables_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tables tables_database_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_database_id_fkey FOREIGN KEY (database_id) REFERENCES public.dbs(id);


--
-- Name: tag tag_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tag tag_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tagged_object tagged_object_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagged_object
    ADD CONSTRAINT tagged_object_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tagged_object tagged_object_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagged_object
    ADD CONSTRAINT tagged_object_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: tagged_object tagged_object_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagged_object
    ADD CONSTRAINT tagged_object_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: url url_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url
    ADD CONSTRAINT url_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: url url_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url
    ADD CONSTRAINT url_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: user_attribute user_attribute_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT user_attribute_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: user_attribute user_attribute_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT user_attribute_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: user_attribute user_attribute_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT user_attribute_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: user_attribute user_attribute_welcome_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT user_attribute_welcome_dashboard_id_fkey FOREIGN KEY (welcome_dashboard_id) REFERENCES public.dashboards(id);


--
-- Name: user_favorite_tag user_favorite_tag_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_favorite_tag
    ADD CONSTRAINT user_favorite_tag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: user_favorite_tag user_favorite_tag_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_favorite_tag
    ADD CONSTRAINT user_favorite_tag_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: DATABASE superset; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE superset TO superset;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO superset;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

