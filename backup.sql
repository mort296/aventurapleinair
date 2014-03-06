--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: about_page_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE about_page_translations (
    id integer NOT NULL,
    about_page_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    content text
);


ALTER TABLE public.about_page_translations OWNER TO aventura;

--
-- Name: about_page_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE about_page_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_page_translations_id_seq OWNER TO aventura;

--
-- Name: about_page_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE about_page_translations_id_seq OWNED BY about_page_translations.id;


--
-- Name: about_pages; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE about_pages (
    id integer NOT NULL,
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.about_pages OWNER TO aventura;

--
-- Name: about_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE about_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_pages_id_seq OWNER TO aventura;

--
-- Name: about_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE about_pages_id_seq OWNED BY about_pages.id;


--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    namespace character varying(255)
);


ALTER TABLE public.active_admin_comments OWNER TO aventura;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO aventura;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: activities; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activities (
    id integer NOT NULL,
    name character varying(255),
    federation character varying(255),
    website character varying(255),
    particularity text,
    description text,
    other_infos text,
    learn text,
    equipment text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    activity_category_id integer,
    video_link character varying(255),
    online boolean,
    pub_id integer,
    image character varying(255),
    useful_links text,
    image_file_name character varying(255),
    image_caption_activity character varying(255),
    image_caption_location character varying(255),
    image_caption_text character varying(255)
);


ALTER TABLE public.activities OWNER TO aventura;

--
-- Name: activities_events; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activities_events (
    id integer NOT NULL,
    activity_id integer,
    event_id integer
);


ALTER TABLE public.activities_events OWNER TO aventura;

--
-- Name: activities_events_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activities_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_events_id_seq OWNER TO aventura;

--
-- Name: activities_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activities_events_id_seq OWNED BY activities_events.id;


--
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_id_seq OWNER TO aventura;

--
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activities_id_seq OWNED BY activities.id;


--
-- Name: activities_locations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activities_locations (
    id integer NOT NULL,
    activity_id integer,
    location_id integer
);


ALTER TABLE public.activities_locations OWNER TO aventura;

--
-- Name: activities_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activities_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_locations_id_seq OWNER TO aventura;

--
-- Name: activities_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activities_locations_id_seq OWNED BY activities_locations.id;


--
-- Name: activities_seasons; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activities_seasons (
    id integer NOT NULL,
    season_id integer,
    activity_id integer
);


ALTER TABLE public.activities_seasons OWNER TO aventura;

--
-- Name: activities_seasons_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activities_seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_seasons_id_seq OWNER TO aventura;

--
-- Name: activities_seasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activities_seasons_id_seq OWNED BY activities_seasons.id;


--
-- Name: activity_categories; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activity_categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.activity_categories OWNER TO aventura;

--
-- Name: activity_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activity_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_categories_id_seq OWNER TO aventura;

--
-- Name: activity_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activity_categories_id_seq OWNED BY activity_categories.id;


--
-- Name: activity_category_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activity_category_translations (
    id integer NOT NULL,
    activity_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);


ALTER TABLE public.activity_category_translations OWNER TO aventura;

--
-- Name: activity_category_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activity_category_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_category_translations_id_seq OWNER TO aventura;

--
-- Name: activity_category_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activity_category_translations_id_seq OWNED BY activity_category_translations.id;


--
-- Name: activity_ratings; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activity_ratings (
    id integer NOT NULL,
    rate numeric DEFAULT 0.0,
    rater_amount integer DEFAULT 0,
    activity_id integer
);


ALTER TABLE public.activity_ratings OWNER TO aventura;

--
-- Name: activity_ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activity_ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_ratings_id_seq OWNER TO aventura;

--
-- Name: activity_ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activity_ratings_id_seq OWNED BY activity_ratings.id;


--
-- Name: activity_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE activity_translations (
    id integer NOT NULL,
    activity_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255),
    federation character varying(255),
    particularity text,
    description text,
    other_infos text,
    learn text,
    equipment text,
    useful_links text,
    video_link character varying(255),
    image_caption_activity character varying(255),
    image_caption_location character varying(255),
    image_caption_text character varying(255)
);


ALTER TABLE public.activity_translations OWNER TO aventura;

--
-- Name: activity_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE activity_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_translations_id_seq OWNER TO aventura;

--
-- Name: activity_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE activity_translations_id_seq OWNED BY activity_translations.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.admin_users OWNER TO aventura;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO aventura;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: administrative_regions; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE administrative_regions (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.administrative_regions OWNER TO aventura;

--
-- Name: administrative_regions_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE administrative_regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administrative_regions_id_seq OWNER TO aventura;

--
-- Name: administrative_regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE administrative_regions_id_seq OWNED BY administrative_regions.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    comment text,
    commentable_id integer,
    commentable_type character varying(255),
    role character varying(255) DEFAULT 'comments'::character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_name character varying(255),
    user_email character varying(255),
    activity_title character varying(255),
    approved boolean
);


ALTER TABLE public.comments OWNER TO aventura;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO aventura;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: event_index_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE event_index_translations (
    id integer NOT NULL,
    event_index_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    text_top text
);


ALTER TABLE public.event_index_translations OWNER TO aventura;

--
-- Name: event_index_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE event_index_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_index_translations_id_seq OWNER TO aventura;

--
-- Name: event_index_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE event_index_translations_id_seq OWNED BY event_index_translations.id;


--
-- Name: event_indices; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE event_indices (
    id integer NOT NULL,
    text_top text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.event_indices OWNER TO aventura;

--
-- Name: event_indices_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE event_indices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_indices_id_seq OWNER TO aventura;

--
-- Name: event_indices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE event_indices_id_seq OWNED BY event_indices.id;


--
-- Name: event_ratings; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE event_ratings (
    id integer NOT NULL,
    rate numeric DEFAULT 0.0,
    rater_amount integer DEFAULT 0,
    event_id integer
);


ALTER TABLE public.event_ratings OWNER TO aventura;

--
-- Name: event_ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE event_ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_ratings_id_seq OWNER TO aventura;

--
-- Name: event_ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE event_ratings_id_seq OWNED BY event_ratings.id;


--
-- Name: event_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE event_translations (
    id integer NOT NULL,
    event_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    website character varying(255),
    federation character varying(255),
    interesting_stats text,
    description text,
    name character varying(255),
    other_infos text
);


ALTER TABLE public.event_translations OWNER TO aventura;

--
-- Name: event_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_translations_id_seq OWNER TO aventura;

--
-- Name: event_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE event_translations_id_seq OWNED BY event_translations.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE events (
    id integer NOT NULL,
    date_start date,
    date_end date,
    website character varying(255),
    federation character varying(255),
    federation_website character varying(255),
    interesting_stats text,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255),
    online boolean,
    location_id integer,
    other_infos text,
    image character varying(255),
    link character varying(255),
    image_file_name character varying(255),
    image_caption character varying(255)
);


ALTER TABLE public.events OWNER TO aventura;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO aventura;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE events_id_seq OWNED BY events.id;


--
-- Name: events_seasons; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE events_seasons (
    id integer NOT NULL,
    season_id integer,
    event_id integer
);


ALTER TABLE public.events_seasons OWNER TO aventura;

--
-- Name: events_seasons_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE events_seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_seasons_id_seq OWNER TO aventura;

--
-- Name: events_seasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE events_seasons_id_seq OWNED BY events_seasons.id;


--
-- Name: footer_text_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE footer_text_translations (
    id integer NOT NULL,
    footer_text_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    max_title character varying(255),
    max_subtitle character varying(255),
    max_text text,
    photograph_title character varying(255),
    photograph_subtitle character varying(255),
    photograph_text text
);


ALTER TABLE public.footer_text_translations OWNER TO aventura;

--
-- Name: footer_text_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE footer_text_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_text_translations_id_seq OWNER TO aventura;

--
-- Name: footer_text_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE footer_text_translations_id_seq OWNED BY footer_text_translations.id;


--
-- Name: footer_texts; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE footer_texts (
    id integer NOT NULL,
    max_title character varying(255),
    max_subtitle character varying(255),
    max_text text,
    max_image character varying(255),
    photograph_title character varying(255),
    photograph_subtitle character varying(255),
    photograph_text text,
    photograph_image character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    max_image_file_name character varying(255),
    photograph_image_file_name character varying(255),
    background_image character varying(255),
    background_image_file_name character varying(255)
);


ALTER TABLE public.footer_texts OWNER TO aventura;

--
-- Name: footer_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE footer_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_texts_id_seq OWNER TO aventura;

--
-- Name: footer_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE footer_texts_id_seq OWNED BY footer_texts.id;


--
-- Name: home_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE home_translations (
    id integer NOT NULL,
    home_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    title character varying(255),
    who_one_title character varying(255),
    who_one_text text,
    who_two_title character varying(255),
    who_two_text text,
    who_video_link character varying(255),
    featured_caption_place character varying(255),
    featured_caption_activity character varying(255),
    promotion_text character varying(255)
);


ALTER TABLE public.home_translations OWNER TO aventura;

--
-- Name: home_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE home_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_translations_id_seq OWNER TO aventura;

--
-- Name: home_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE home_translations_id_seq OWNED BY home_translations.id;


--
-- Name: homes; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE homes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    title character varying(255),
    who_one_title character varying(255),
    who_one_text text,
    who_two_title character varying(255),
    who_two_text text,
    who_video_link character varying(255),
    featured_image character varying(255),
    featured_caption_place character varying(255),
    featured_caption_activity character varying(255),
    promotion_text character varying(255),
    pub1_id integer,
    pub2_id integer,
    featured_image_file_name character varying(255)
);


ALTER TABLE public.homes OWNER TO aventura;

--
-- Name: homes_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE homes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_id_seq OWNER TO aventura;

--
-- Name: homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE homes_id_seq OWNED BY homes.id;


--
-- Name: location_ratings; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE location_ratings (
    id integer NOT NULL,
    rate numeric DEFAULT 0.0,
    rater_amount integer DEFAULT 0,
    location_id integer
);


ALTER TABLE public.location_ratings OWNER TO aventura;

--
-- Name: location_ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE location_ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_ratings_id_seq OWNER TO aventura;

--
-- Name: location_ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE location_ratings_id_seq OWNED BY location_ratings.id;


--
-- Name: location_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE location_translations (
    id integer NOT NULL,
    location_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255),
    address character varying(255),
    website character varying(255),
    description text,
    link_text character varying(255)
);


ALTER TABLE public.location_translations OWNER TO aventura;

--
-- Name: location_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE location_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_translations_id_seq OWNER TO aventura;

--
-- Name: location_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE location_translations_id_seq OWNED BY location_translations.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE locations (
    id integer NOT NULL,
    name character varying(255),
    address character varying(255),
    phone character varying(255),
    charge_free_phone character varying(255),
    website character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    administrative_region_id integer,
    online boolean,
    pub_id integer,
    image character varying(255),
    link character varying(255),
    gps_longitude numeric,
    gps_latitude numeric,
    image_file_name character varying(255),
    city character varying(255),
    postal_code character varying(255),
    description text,
    link_text character varying(255),
    image_caption character varying(255)
);


ALTER TABLE public.locations OWNER TO aventura;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO aventura;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE locations_id_seq OWNED BY locations.id;


--
-- Name: locations_useful_infos; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE locations_useful_infos (
    id integer NOT NULL,
    location_id integer,
    useful_info_id integer
);


ALTER TABLE public.locations_useful_infos OWNER TO aventura;

--
-- Name: locations_useful_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE locations_useful_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_useful_infos_id_seq OWNER TO aventura;

--
-- Name: locations_useful_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE locations_useful_infos_id_seq OWNED BY locations_useful_infos.id;


--
-- Name: pub_types; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE pub_types (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.pub_types OWNER TO aventura;

--
-- Name: pub_types_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE pub_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pub_types_id_seq OWNER TO aventura;

--
-- Name: pub_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE pub_types_id_seq OWNED BY pub_types.id;


--
-- Name: pubs; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE pubs (
    id integer NOT NULL,
    image character varying(255),
    pub_type_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255),
    image_file_name character varying(255)
);


ALTER TABLE public.pubs OWNER TO aventura;

--
-- Name: pubs_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE pubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pubs_id_seq OWNER TO aventura;

--
-- Name: pubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE pubs_id_seq OWNED BY pubs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO aventura;

--
-- Name: season_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE season_translations (
    id integer NOT NULL,
    season_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);


ALTER TABLE public.season_translations OWNER TO aventura;

--
-- Name: season_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE season_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.season_translations_id_seq OWNER TO aventura;

--
-- Name: season_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE season_translations_id_seq OWNED BY season_translations.id;


--
-- Name: seasons; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE seasons (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.seasons OWNER TO aventura;

--
-- Name: seasons_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seasons_id_seq OWNER TO aventura;

--
-- Name: seasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE seasons_id_seq OWNED BY seasons.id;


--
-- Name: top_10; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_10 (
    id integer NOT NULL,
    text_top text,
    text_bottom text
);


ALTER TABLE public.top_10 OWNER TO aventura;

--
-- Name: top_10_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_10_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_10_id_seq OWNER TO aventura;

--
-- Name: top_10_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_10_id_seq OWNED BY top_10.id;


--
-- Name: top_activities; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_activities (
    id integer NOT NULL,
    text_top text,
    text_bottom text,
    pub_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.top_activities OWNER TO aventura;

--
-- Name: top_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_activities_id_seq OWNER TO aventura;

--
-- Name: top_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_activities_id_seq OWNED BY top_activities.id;


--
-- Name: top_activity_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_activity_translations (
    id integer NOT NULL,
    top_activity_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    text_top text,
    text_bottom text
);


ALTER TABLE public.top_activity_translations OWNER TO aventura;

--
-- Name: top_activity_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_activity_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_activity_translations_id_seq OWNER TO aventura;

--
-- Name: top_activity_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_activity_translations_id_seq OWNED BY top_activity_translations.id;


--
-- Name: top_event_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_event_translations (
    id integer NOT NULL,
    top_event_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    text_top text,
    text_bottom text
);


ALTER TABLE public.top_event_translations OWNER TO aventura;

--
-- Name: top_event_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_event_translations_id_seq OWNER TO aventura;

--
-- Name: top_event_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_event_translations_id_seq OWNED BY top_event_translations.id;


--
-- Name: top_events; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_events (
    id integer NOT NULL,
    text_top text,
    text_bottom text,
    pub_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.top_events OWNER TO aventura;

--
-- Name: top_events_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_events_id_seq OWNER TO aventura;

--
-- Name: top_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_events_id_seq OWNED BY top_events.id;


--
-- Name: top_location_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_location_translations (
    id integer NOT NULL,
    top_location_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    text_top text,
    text_bottom text
);


ALTER TABLE public.top_location_translations OWNER TO aventura;

--
-- Name: top_location_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_location_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_location_translations_id_seq OWNER TO aventura;

--
-- Name: top_location_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_location_translations_id_seq OWNED BY top_location_translations.id;


--
-- Name: top_locations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE top_locations (
    id integer NOT NULL,
    text_top text,
    text_bottom text,
    pub_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.top_locations OWNER TO aventura;

--
-- Name: top_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE top_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_locations_id_seq OWNER TO aventura;

--
-- Name: top_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE top_locations_id_seq OWNED BY top_locations.id;


--
-- Name: useful_info_translations; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE useful_info_translations (
    id integer NOT NULL,
    useful_info_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);


ALTER TABLE public.useful_info_translations OWNER TO aventura;

--
-- Name: useful_info_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE useful_info_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useful_info_translations_id_seq OWNER TO aventura;

--
-- Name: useful_info_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE useful_info_translations_id_seq OWNED BY useful_info_translations.id;


--
-- Name: useful_infos; Type: TABLE; Schema: public; Owner: aventura; Tablespace: 
--

CREATE TABLE useful_infos (
    id integer NOT NULL,
    name character varying(255),
    icon character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    icon_file_name character varying(255)
);


ALTER TABLE public.useful_infos OWNER TO aventura;

--
-- Name: useful_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: aventura
--

CREATE SEQUENCE useful_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useful_infos_id_seq OWNER TO aventura;

--
-- Name: useful_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aventura
--

ALTER SEQUENCE useful_infos_id_seq OWNED BY useful_infos.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY about_page_translations ALTER COLUMN id SET DEFAULT nextval('about_page_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY about_pages ALTER COLUMN id SET DEFAULT nextval('about_pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activities ALTER COLUMN id SET DEFAULT nextval('activities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activities_events ALTER COLUMN id SET DEFAULT nextval('activities_events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activities_locations ALTER COLUMN id SET DEFAULT nextval('activities_locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activities_seasons ALTER COLUMN id SET DEFAULT nextval('activities_seasons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activity_categories ALTER COLUMN id SET DEFAULT nextval('activity_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activity_category_translations ALTER COLUMN id SET DEFAULT nextval('activity_category_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activity_ratings ALTER COLUMN id SET DEFAULT nextval('activity_ratings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY activity_translations ALTER COLUMN id SET DEFAULT nextval('activity_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY administrative_regions ALTER COLUMN id SET DEFAULT nextval('administrative_regions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY event_index_translations ALTER COLUMN id SET DEFAULT nextval('event_index_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY event_indices ALTER COLUMN id SET DEFAULT nextval('event_indices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY event_ratings ALTER COLUMN id SET DEFAULT nextval('event_ratings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY event_translations ALTER COLUMN id SET DEFAULT nextval('event_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY events ALTER COLUMN id SET DEFAULT nextval('events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY events_seasons ALTER COLUMN id SET DEFAULT nextval('events_seasons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY footer_text_translations ALTER COLUMN id SET DEFAULT nextval('footer_text_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY footer_texts ALTER COLUMN id SET DEFAULT nextval('footer_texts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY home_translations ALTER COLUMN id SET DEFAULT nextval('home_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY homes ALTER COLUMN id SET DEFAULT nextval('homes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY location_ratings ALTER COLUMN id SET DEFAULT nextval('location_ratings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY location_translations ALTER COLUMN id SET DEFAULT nextval('location_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY locations ALTER COLUMN id SET DEFAULT nextval('locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY locations_useful_infos ALTER COLUMN id SET DEFAULT nextval('locations_useful_infos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY pub_types ALTER COLUMN id SET DEFAULT nextval('pub_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY pubs ALTER COLUMN id SET DEFAULT nextval('pubs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY season_translations ALTER COLUMN id SET DEFAULT nextval('season_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY seasons ALTER COLUMN id SET DEFAULT nextval('seasons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_10 ALTER COLUMN id SET DEFAULT nextval('top_10_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_activities ALTER COLUMN id SET DEFAULT nextval('top_activities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_activity_translations ALTER COLUMN id SET DEFAULT nextval('top_activity_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_event_translations ALTER COLUMN id SET DEFAULT nextval('top_event_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_events ALTER COLUMN id SET DEFAULT nextval('top_events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_location_translations ALTER COLUMN id SET DEFAULT nextval('top_location_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY top_locations ALTER COLUMN id SET DEFAULT nextval('top_locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY useful_info_translations ALTER COLUMN id SET DEFAULT nextval('useful_info_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aventura
--

ALTER TABLE ONLY useful_infos ALTER COLUMN id SET DEFAULT nextval('useful_infos_id_seq'::regclass);


--
-- Data for Name: about_page_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY about_page_translations (id, about_page_id, locale, created_at, updated_at, content) FROM stdin;
2	1	en	2013-12-06 03:53:23.829614	2014-01-23 15:56:08.706899	<p>Aventurapleinair.com&nbsp; certainly did not reinvent the wheel for his concept of directory.&nbsp;However , it just went to a whole new level! Indeed, outdoor enthusiasts , Quebecers or visitors, can now rely on a single tool to learn more about the activities, places and events. We chose to list all the outdoor activities that are not motorized , that is to say , walking oil arm in good Quebecers. <span>We are proud to present you 50 different activities.<br><br></span>Our website was created to optimize your searches in connection with the outdoors in the province. So we centralize the information for you , adding a visual touch , participative (top 10) and easy to navigate. <span>All the Aventura outdoor team is proud to offer a unique product and we count on you to share your comments and suggestions with us on all aspects of the open field.<br><br></span>Looking forward to share our passion with you !</p>
1	1	fr	2013-12-06 03:53:23.816245	2014-01-23 15:56:08.735942	<p>Le site aventurapleinair.com n'a certainement pas réinventé la roue pour son concept de répertoire. Par contre, on vient de passer à un tout autre niveau! En effet, les adeptes de plein air, Québécois ou visiteurs, pourront désormais se fier à un seul et même outil pour tout connaître sur les activités, les lieux et les évènements.Nous avons choisis de répertorier toutes les activités de plein air qui ne sont pas motorisées, c'est-à-dire, qui marchent à l'huile de bras en bon Québécois. Nous sommes fiers de vous en présenter 50 différentes !</p><p>Notre site web a été créé dans le but d'optimiser vos recherches en lien avec le plein air dans la province. On a donc centralisé l'information pour vous, en y ajoutant une touche visuelle, participative (top 10) et simple à naviguer. Toute l'équipe d'Aventura plein air est fière de pouvoir vous offrir un produit unique et nous comptons sur vous pour nous donner&nbsp;vos commentaires et&nbsp;vos suggestions pour tout ce qui touche le domaine du plein air.</p><p>Au plaisir de partager notre passion avec vous !</p><p><br></p><br><br><br>
\.


--
-- Name: about_page_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('about_page_translations_id_seq', 2, true);


--
-- Data for Name: about_pages; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY about_pages (id, content, created_at, updated_at) FROM stdin;
1	<p>Le site aventurapleinair.com n'a certainement pas réinventé la roue pour son concept de répertoire. Par contre, on vient de passer à un tout autre niveau! En effet, les adeptes de plein air, Québécois ou visiteurs, pourront désormais se fier à un seul et même outil pour tout connaître sur les activités, les lieux et les évènements.Nous avons choisis de répertorier toutes les activités de plein air qui ne sont pas motorisées, c'est-à-dire, qui marchent à l'huile de bras en bon Québécois. Nous sommes fiers de vous en présenter 50 différentes !</p><p>Notre site web a été créé dans le but d'optimiser vos recherches en lien avec le plein air dans la province. On a donc centralisé l'information pour vous, en y ajoutant une touche visuelle, participative (top 10) et simple à naviguer. Toute l'équipe d'Aventura plein air est fière de pouvoir vous offrir un produit unique et nous comptons sur vous pour nous donner&nbsp;vos commentaires et&nbsp;vos suggestions pour tout ce qui touche le domaine du plein air.</p><p>Au plaisir de partager notre passion avec vous !</p><p><br></p><br><br><br>	2013-12-06 03:53:23.719156	2014-01-23 15:56:08.702159
\.


--
-- Name: about_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('about_pages_id_seq', 1, true);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY active_admin_comments (id, resource_id, resource_type, author_id, author_type, body, created_at, updated_at, namespace) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activities (id, name, federation, website, particularity, description, other_infos, learn, equipment, created_at, updated_at, activity_category_id, video_link, online, pub_id, image, useful_links, image_file_name, image_caption_activity, image_caption_location, image_caption_text) FROM stdin;
6	Planche à neige	Association Québec Snowboard	www.quebecsnowboard.ca	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de planche à neige en 2014.<br>	Le snowboard est un sport qui a rapidement fait sa place chez les amateurs de sports de glisse au Québec. Avec les nombreuses montagnes que l'on retrouve un peu partout dans la province, il est facile de trouver un endroit pour le pratiquer adapté à son niveau. <br>	&nbsp;	Il n'est pas difficile de trouver un endroit pour apprendre à faire de la planche à neige au Québec : la plupart des centres de ski offrent des cours pouvant aller jusqu'à toute une journée pour faciliter l'apprentissage des personnes de tous âges. <br>	Planche à neige<br>Fixations<br>Lunettes de ski<br>Casque<br>Vêtements chauds<br>	2014-01-12 20:29:04.453539	2014-03-06 17:57:54.648786	8	xx	t	\N	\N	<a href="http://www.quebecsnowboard.ca" target="_blank">www.quebecsnowboard.ca</a><br>	snow.jpg	Xdachez.com	Demi-lune, Mont-Sainte-Anne	\N
8	Ski de fond 	Ski de fond Québec	www.skidefondquebec.ca	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de ski de fond en 2014.<br>	Cross country skiing is a sport that can be practiced almost anywhere. Whether it's to discover the fauna and flora, get fit or just enjoy the activity, you will find many places offering skiing classic and skate skiing.<br>	\N	It is possible to rent equipment in most cross country skiing centers. For those who want to improve their technique, some places also offer courses in classical and skate skiing.<br>	Skis de fond<br>Fixations<br>Bâtons de ski de fond<br>Vêtements chauds<br>	2014-01-12 20:49:45.611491	2014-03-06 17:58:19.499093	8	xx	t	\N	\N	\N	skidefond.jpg	Xdachez.com	Centre d'entraînement Myriam Bédard	\N
10	Patin à glace	Fédération de patinage de vitesse du Québec	www.fpvq.org	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de patin à glace en 2014.<br>	Le patin à glace se pratique dehors et est une des activités préférées des québécois. On peut la pratiquer sur les nombreuses patinoires de la région durant les heures de patinage libre (il existe 168 patinoires sur le territoire de la ville de québec) ou sur des anneaux et pistes de glace spécialement conçus à cet effet. Il existe plusieurs sortes de patins : lames nordiques, patins de vitesse, patins de hockey et patins artistique.<br>	&nbsp;<br>	Il existe des écoles de patin à glace, mais il est toutefois facile d'apprendre par soi-même. Il est souvent possible de louer des patins près des anneaux et pistes de patin. N'ayez pas peur d'utiliser une chaise pour faciliter votre équilibre sur la glace au besoin, on doit tous commencer quelque part!<br>	Patins à glace<br>Casque<br>Vêtements adaptés<br><br>	2014-01-12 21:03:48.137649	2014-03-06 19:34:59.887648	8	\N	t	\N	\N	&nbsp;	patinvitesse.jpg	Pentathlon des Neiges	Plaines d'Abraham	2013 crédit: Clément Presse
28	Ski à roulettes	Ski de fond Québec	https://www,skidefondquebec.ca	\N	\N	\N	\N	\N	2014-01-17 03:11:39.624006	2014-01-17 03:11:39.624006	8	\N	f	\N	\N	\N	\N	\N	\N	\N
5	Traîneau à chiens	Association des Mushers du Québec	www.mushing-quebec.org/menu.html	\N	\N	\N	\N	\N	2014-01-12 19:36:31.022617	2014-01-12 19:36:31.022617	10	\N	f	\N	\N	\N	\N	\N	\N	\N
2	Ski joëring	\N		\N	\N	\N	\N	\N	2013-12-20 14:59:06.972851	2014-01-12 19:37:03.1966	10	\N	f	\N	\N	\N	\N	\N	\N	\N
43	Kitesurf	Association des kitesurfers et véliplanchistes de Québec	www.akvq.ca/	\N	\N	\N	\N	\N	2014-01-17 03:47:33.038701	2014-01-17 03:47:33.038701	1	\N	f	\N	\N	\N	\N	\N	\N	\N
3	Canicross	Canicross Québec	www.canicrossquebec.org	\N	\N	\N	\N	\N	2013-12-20 15:05:07.929837	2014-01-12 19:46:25.092897	10	\N	f	\N	\N	<a href="http://www.canicrossquebec.org" target="_blank">www.canicrossquebec.org</a><br><a href="http://www.canicross.com" target="_blank">www.canicross.com</a><br>	\N	\N	\N	\N
4	Équitation	Fédération équestre du Québec	www.feq.qc.ca	\N	\N	\N	\N	\N	2014-01-12 19:32:11.788723	2014-01-12 20:33:47.182222	10	\N	f	\N	\N	<a href="http://www.feq.qc.ca/" target="_blank">www.feq.qc.ca</a><br>	\N	\N	\N	\N
22	Canot à glace	Circuit québécois de canot à glace	http://canotaglace.com	Le canot à glace doit être pratiqué de façon sécuritaire car s'aventurer sur les eaux gelées du fleuve Saint-Laurent peut être très dangereux. Vous devez donc avoir un barreur d'expérience (possibilité de louer ses services si vous ne connaissez personne). Le canot à glace se pratique principalement au Québec, mais aussi à quelques endroits en Ontario. C'est toutefois les deux seuls endroits connus sur la planète pour la pratique de ce sport, qui demande des conditions météorologiques particulières.&nbsp; Plusieurs techniques pour progresser sont particulières au canot à glace, c'est notamment le cas de la trottinette. Les canotiers peuvent pratiquer cette technique en dehors du fleuve sur un lac gelé par exemple ou encore dans la neige sur une grande surface.<br>	Anciennement, le canot à glace était un moyen de transport pour relier la rive-sud à la rive-nord ainsi que les nombreuses îles du Fleuve Saint-Laurent. Aujourd'hui, le canot à glace fait partie du patrimoine culturel des québécois et est aussi pratiquer comme loisir et compétition. Le canot à glace est reconnu comme un sport extrême.<br>	Au Québec, le canot à glace est aussi une discipline sportive avec un championnat provincial: la coupe des glaces ! Il y a, tous les ans, différentes courses avec possibilité d'accumuler des points pour le classement général. Entre autre, la très populaire course du Carnaval de Québec, présenté en 2014 pour la 60ème année consécutive. <br>	L'Association des coureurs en canot à glace propose une page utilise pour l'apprentissage du sport, voir le lien ci-bas.<br>	canot à glace<br>rame avec crampon<br>veste de sauvetage<br>paire de crampons pour les pieds<br>bas en néoprène<br>genouillères et jambières<br>mitaines néoprène<br>pagaie avec crampon<br>vêtements adaptés (ski de fond) <br>	2014-01-15 21:31:55.199023	2014-03-06 20:09:43.078432	1	\N	t	\N	\N	<a href="http://canotaglace.org/pratiquer-le-sport" target="_blank">http://canotaglace.org/pratiquer-le-sport</a><br>	Canotglace.jpg	Xdachez.com	Canot à glace	\N
19	Raquette	Fédération québécoise de la marche	http://www.fqmarche.qc.ca/	\N	\N	\N	\N	\N	2014-01-15 21:11:49.078398	2014-01-23 16:08:56.789591	4	\N	f	\N	\N	\N	\N	\N	\N	\N
11	Triathlon	Triathlon Québec	http://www.triathlonquebec.org/	\N	\N	\N	\N	\N	2014-01-15 20:53:01.911618	2014-01-15 21:01:21.533785	7	\N	f	\N	\N	\N	\N	\N	\N	\N
12	Course d'aventure	\N		\N	\N	\N	\N	\N	2014-01-15 20:56:51.770762	2014-01-15 21:01:46.666667	7	\N	f	\N	\N	\N	\N	\N	\N	\N
13	Triathlon d'hiver	Triathlon Québec	http://www.triathlonquebec.org/	\N	\N	\N	\N	\N	2014-01-15 21:00:42.5281	2014-01-15 21:02:18.845224	7	\N	f	\N	\N	\N	\N	\N	\N	\N
14	Compétition multi-sports	\N		\N	\N	\N	\N	\N	2014-01-15 21:04:03.85612	2014-01-15 21:04:03.85612	7	\N	f	\N	\N	\N	\N	\N	\N	\N
16	Course en sentier	\N		\N	\N	\N	\N	\N	2014-01-15 21:08:58.912266	2014-01-15 21:08:58.912266	4	\N	f	\N	\N	\N	\N	\N	\N	\N
20	Course en raquette	\N		\N	\N	\N	\N	\N	2014-01-15 21:13:15.924834	2014-01-15 21:13:15.924834	4	\N	f	\N	\N	\N	\N	\N	\N	\N
39	Kayak récréatif	Fédération Québécoise du canot et du kayak	http://www.canot-kayak.qc.ca	\N	\N	\N	\N	\N	2014-01-17 03:38:30.859844	2014-03-06 17:42:13.403701	1	\N	f	\N	\N	\N	\N	\N	\N	\N
27	Patin à roues alignées	Fédération de patinage de vitesse du Québec	http://www.fpvq.org/	\N	\N	\N	\N	\N	2014-01-17 03:07:07.63411	2014-01-17 03:07:07.63411	8	\N	f	\N	\N	\N	\N	\N	\N	\N
35	Astronomie	Fédération des astronomes amateurs du Québec	http://www.faaq.org/	\N	\N	\N	\N	\N	2014-01-17 03:34:16.435555	2014-01-17 03:57:33.401394	9	\N	f	\N	\N	\N	\N	\N	\N	\N
32	Escalade de rocher	Fédération Québécoise de montagne et d'escalade	http://www.fqme.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:28:05.329801	2014-01-17 03:28:05.329801	5	\N	f	\N	\N	\N	\N	\N	\N	\N
36	Canot	Fédération Québécoise du canot et du kayak	http://www.canot-kayak.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:35:34.0851	2014-01-17 03:35:34.0851	1	\N	f	\N	\N	\N	\N	\N	\N	\N
37	Kayak de mer	Fédération Québécoise du canot et du kayak	http://www.canot-kayak.qc.ca	\N	\N	\N	\N	\N	2014-01-17 03:36:58.221299	2014-01-17 03:36:58.221299	1	\N	f	\N	\N	\N	\N	\N	\N	\N
40	Rafting	Fédération québécoise de canoë-kayak d'eau vive	http://www.federationkayak.qc.ca	\N	\N	\N	\N	\N	2014-01-17 03:40:10.809864	2014-01-17 03:40:10.809864	1	\N	f	\N	\N	\N	\N	\N	\N	\N
38	Kayak de rivière	Fédération Québécoise de Canoë-Kayak d'eau vive	http://www.federationkayak.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:37:48.89585	2014-01-17 03:42:19.854851	1	\N	f	\N	\N	\N	\N	\N	\N	\N
41	Luge d'eau	Fédération Québécoise de Canoë-Kayak d'eau vive	http://www.federationkayak.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:43:19.813817	2014-01-17 03:43:19.813817	1	\N	f	\N	\N	\N	\N	\N	\N	\N
42	Planche à voile	Association des kitesurfers et véliplanchistes de Québec	www.akvq.ca/	\N	\N	\N	\N	\N	2014-01-17 03:45:31.555269	2014-01-17 03:45:31.555269	1	\N	f	\N	\N	\N	\N	\N	\N	\N
44	Plongée sous-marine	Fédération Québécoise des acitivtés subaquatiques	http://www.fqas.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:49:25.902564	2014-01-17 03:49:25.902564	1	\N	f	\N	\N	\N	\N	\N	\N	\N
45	Plongée en apnée	Fédération Québécoise des acitivtés subaquatiques	http://www.fqas.qc.ca	\N	\N	\N	\N	\N	2014-01-17 03:50:00.961678	2014-01-17 03:50:00.961678	1	\N	f	\N	\N	\N	\N	\N	\N	\N
46	Vélo de route	Fédération Québécoise des sports cyclistes	http://www.fqsc.net/	\N	\N	\N	\N	\N	2014-01-17 03:50:59.364825	2014-01-17 03:50:59.364825	6	\N	f	\N	\N	\N	\N	\N	\N	\N
47	Vélo de montagne	Fédération Québécoise des sports cyclistes	http://www.fqsc.net/	\N	\N	\N	\N	\N	2014-01-17 03:51:56.99723	2014-01-17 03:51:56.99723	6	\N	f	\N	\N	\N	\N	\N	\N	\N
48	Vélo de descente	Fédération Québécoise des sports cyclistes	http://www.fqsc.net/	\N	\N	\N	\N	\N	2014-01-17 03:52:44.059524	2014-01-17 03:52:44.059524	6	\N	f	\N	\N	\N	\N	\N	\N	\N
49	Vélo de cyclocross	Fédération Québécoise des sports cyclistes	http://www.fqsc.net/	\N	\N	\N	\N	\N	2014-01-17 03:53:30.45406	2014-01-17 03:53:30.45406	6	\N	f	\N	\N	\N	\N	\N	\N	\N
50	Pistes cyclables	Vélo Québec	http://www.velo.qc.ca/fr/accueil	\N	\N	\N	\N	\N	2014-01-17 03:54:44.904976	2014-01-17 03:54:44.904976	6	\N	f	\N	\N	\N	\N	\N	\N	\N
34	Spéléologie	Société québécoise de spéléologie	http://www.speleo.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:32:41.663408	2014-01-17 03:57:54.900206	9	\N	f	\N	\N	\N	\N	\N	\N	\N
33	Ornithologie	Regroupement QuébecOiseaux	http://www.quebecoiseaux.org/	\N	\N	\N	\N	\N	2014-01-17 03:31:16.536586	2014-01-17 03:58:13.548802	9	\N	f	\N	\N	\N	\N	\N	\N	\N
31	Observation de la flore	FloraQuebeca	http://www.floraquebeca.qc.ca/	\N	\N	\N	\N	\N	2014-01-17 03:22:17.962828	2014-01-17 03:58:34.634457	9	\N	f	\N	\N	\N	\N	\N	\N	\N
30	Observation de la faune	Les Pourvoiries du Québec	http://www.pourvoiries.com/	\N	\N	\N	\N	\N	2014-01-17 03:19:17.621194	2014-01-17 03:58:53.419951	9	\N	f	\N	\N	<a href="http://www.pourvoiries.com/activites-plein-air/plein-air/observation-de-la-faune.html" target="_blank">http://www.pourvoiries.com/activites-plein-air/plein-air/observation-de-la-faune.html</a><br><br>	\N	\N	\N	\N
17	Randonnée pédestre	Fédération québécoise de la marche	http://www.fqmarche.qc.ca/	\N	\N	\N	\N	\N	2014-01-15 21:09:44.94787	2014-01-23 16:14:39.126788	4	\N	f	\N	\N	\N	\N	\N	\N	\N
18	Trekking	Fédération québécoise de la marche	http://www.fqmarche.qc.ca/	\N	\N	\N	\N	\N	2014-01-15 21:10:22.518418	2014-01-23 16:29:49.264888	4	\N	f	\N	\N	\N	\N	\N	\N	\N
15	Course à pied	Fédération québécoise d'athlétisme	http://athletisme-quebec.ca/	\N	\N	\N	\N	\N	2014-01-15 21:08:13.650556	2014-01-23 16:35:02.631012	4	\N	f	\N	\N	\N	\N	\N	\N	\N
52	Geocaching	Association Géocaching Québec	http://www.geocaching-qc.com/	\N	\N	\N	\N	\N	2014-02-06 16:28:29.357556	2014-02-12 04:27:33.034875	7	\N	f	\N	\N	\N	\N	\N	\N	\N
7	Ski alpin	Fédération Québécoise de ski alpin	www.skiquebec.qc.ca	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de ski alpin en 2014.<br>	Le ski alpin n'a plus à faire ses preuves au Québec. Il est pratiqué par de nombreux adeptes années après années sur les nombreuses montagnes qu'offre la province. Il y en a pour tous les niveaux!<br>	\N	Il n'est pas difficile de trouver un endroit pour apprendre à faire du ski alpin au Québec : la plupart des centres de ski offrent des\r\n cours pouvant aller jusqu'à toute une journée pour faciliter \r\nl'apprentissage des personnes de tous âges. <br>	Skis<br>Fixations<br>Bâtons de ski<br>Lunettes de ski<br>Casque<br>Vêtements chauds<br><br>	2014-01-12 20:47:47.22903	2014-03-06 17:57:24.54244	8	\N	t	\N	\N	\N	ski.jpg	Xdachez.com	Massif de Charlevoix	\N
51	Fatbike	Fédération québécoise des sports cyclistes	http://www.fqsc.net/	<p>&nbsp;Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de fatbike en 2014 !</p>	Le Fatbike est de plus en plus à la mode au Québec et partout ailleurs. Arrivé sur les marchés depuis le début des années 2000, le fatbike a connu une hausse considérable dans les dernières années, spécialement chez les amateurs de vélo de montagne. Ce type de vélo, ayant des pneus très larges et des jantes de 80 à 100 mm. Originalement conçu pour se déplacer dans la neige et dans le sable, le fatbike est maintenant vendu et commercialisé comme un véritable vélo tout terrain. Il peut être autant utilisé l'été que l'hiver. Au Québec, on commence même à voir des centres officiels pour la pratique de ce sport. D'ici quelques saisons, on peut très certainement s'attendre à voir des centres offrant la location de ces vélos. Pour l'instant, le fatbike se pratique principalement dans des centres de ski de fond (piste de skate) ainsi que dans les sentiers de raquettes. Toutefois, il est très important de respecter les règlements des établissements concernant la circulation dans leurs sentiers pour les fatbike.	\N	<p>Il existe déjà plusieurs détaillants spécialisés dans les fatbike. On peut s'attendre à en voir de plus en plus en 2014. Les grandes compagnies de l'industrie du vélo de montagne se lancent dans ce marché. C'est notamment le cas de compagnies tel que Trek, Kona, On One et même Specialized.</p>	<p>- Fatbike</p><p>- Vêtements techniques (ski de fond)</p><p>- Casque de vélo</p><p>- Bonnes bottes ou chaussures d'hiver de sport (couvres-chaussures si possible)</p>	2014-01-21 22:05:14.628728	2014-03-06 20:23:09.172783	6	.	t	\N	\N	<p><a href="http://www.vmqca.qc.ca/chroniquesdegilles/" target="_blank">http://www.vmqca.qc.ca/chroniquesdegilles/</a></p><p><a href="http://destinationvt.com/fat-biking/" target="_blank">http://destinationvt.com/fat-biking/</a></p><p><a href="https://www.imba.com/blog/hansi-johnson/my-impressions-and-thoughts-midwest-fat-bike-access-and-grooming-summit" target="_blank">https://www.imba.com/blog/hansi-johnson/my-impressions-and-thoughts-midwest-fat-bike-access-and-grooming-summit</a></p><p><a href="http://blogues.allezy.net/" target="_blank">http://blogues.allezy.net/</a></p><p><a href="http://fat-bike.com/tag/canada/" target="_blank">http://fat-bike.com/tag/canada/</a></p><p><a href="https://www.imba.com/resources/land-protection/fat-bikes" target="_blank">https://www.imba.com/resources/land-protection/fat-bikes</a></p><p><a href="http://fatbikes.com" target="_blank">http://fatbikes.com</a></p><p><a href="http://www.weelz.fr/fr/velo-urbain/2013/08/21/2014-annee-du-fat-bike/" target="_blank">http://www.weelz.fr/fr/velo-urbain/2013/08/21/2014-annee-du-fat-bike/</a></p><p></p>	IMG_2307.jpg	Crédit photo: Gilles Morneau	\N	\N
23	Centre d'entraînement de vélo intérieur	Fédération Québécoise des sports cyclistes	http://www.fqsc.net/	Les centres intérieurs proposent différents services intéressants. On peut tout simplement se présenter pour une séance de cardio-vélo seul ou en groupe, avec un coach ou sans coach. On peut également y apporter son vélo ou louer un espace de rangement et utiliser une base d'entraînement adapté à son type de vélo et pédaler devant un simulateur. Finalement, les centres offrent des vélos modifiés sur simulateur devant des écrans géants où vous pourrez voir toutes les statistiques sur votre entraînement. Vous pourrez également faire des courses contre d'autres personnes qui s'entraînent en même temps que vous.<br>	Le cyclisme se présente sous plusieurs formes. Que ce soit sur la route, en montant une montagne ou en la descendant, dans la boue, cela demande une excellente condition physique. Les cyclistes de haut niveau s'entraînent sur leur vélo à l'année. Ceux qui en ont les moyens roulent sur des circuits ici au Canada et aux États-Unis durant l'été mais l'hiver venu, ils vont se réfugier dans des endroits plus chaud pour rouler à l'extérieur. Pour les autres, il y a des alternatives intéressantes. Dans une autre page, nous parlons du fat bike, sport de plus en plus populaire qui sert d'entraînement pour l'été. Il y a également les centres de vélos intérieurs<br>	Un centre intérieur représente donc une alternative très intéressante pour continuer votre entraînement 12 mois par année et ne pas perdre la forme.<br>	Visiter les centres d'entraînement près de chez vous pour plus d'informations. À noter que la plupart des gyms possèdent quelques vélos pour ce type d'entraînement et parfois même des séances de groupe avec un entraîneur privé.<br>	Vélo (si nécessaire)<br>Souliers de vélo + pédales <br>Pneu d'entraînement<br>Serviettes<br>Vêtement adéquat<br>	2014-01-15 21:33:08.986561	2014-03-06 20:06:43.251564	6	\N	f	\N	\N	\N	\N	\N	\N	\N
26	Escalade intérieur	Fédération Québécoise de montagne et d'escalade	http://www.fqme.qc.ca/	L'avantage des centres d'escalade intérieurs, c'est qu'on peut y pratiquer le sport à n'importe quel moment, en toute sécurité, et de manière sociale. Les niveaux de difficultés sont variés les possibilités de voies sont infinies puisque les prises sont interchangeables. <br>	L'escalade au Québec a connu une grande progression avec les années. Au départ, l'escalade en milieu naturel était réservé aux mordus des parois rocheuses et aventuriers aguerris. Aujourd'hui, avec les centres intérieurs, et toutes les installations à travers la province, l'escalade est beaucoup plus accessible et bien encadré grâce à la Fédération Québécoise de montagne et d'escalade. <br><br>L'escalade se pratique sur différentes surfaces: le rocher (différents types de roches), sur la glace, ainsi qu'à l'intérieur sur une structure artificielle d'escalade. Durant l'hiver, la plupart des grimpeurs s'entraînent à l'intérieur ou peuvent faire des séances sur glace. La technique sur la glace est toutefois bien différente.<br><br><br><span class="wysiwyg-font-size-small"></span><br><br><br>	&nbsp;	Si vous n'avez jamais pratiqué l'escalade auparavant, il vous est essentiel de commencer par une séance dans un centre intérieur. Notamment par de l'escalade de bloc qui se pratique sans corde et avec un niveau de difficulté variable permettant aux débutants d'y aller en respectant les étapes de l'apprentissage. De plus, vous aurez à suivre une formation afin de pouvoir grimpé en premier de cordée. Vous y apprendrez à maîtriser les différents noeuds, ajuster votre baudrier, les techniques de grimpe, les notions de sécurité etc. Une fois vos techniques au point et un minimum d'expérience acquis, vous pourrez être initier à l'escalade de rocher.<br><br><br>	Outils d'assurage<br>Mousquetons<br>Dégaines <br>Sangles<br>Coinceurs<br>Casque d'escalade<br>Protections fixes<br>Baudrier<br>Magnésie<br>Chausson d'escalade<br>Corde dynamique<br><p><br></p>\r\n<p><br></p><br>	2014-01-15 21:36:03.721208	2014-03-06 17:48:50.760485	5	x	t	\N	\N	<a href="http://www.eneq.info" target="_blank">http://www.eneq.info</a><br><a href="http://www.fqme.qc.ca" target="_blank">http://www.fqme.qc.ca</a><br><a href="http://www.escaladequebec.com/" target="_blank">http://www.escaladequebec.com/</a><br><br><br>	escaladeint.jpg	Xdachez.com	Escalade de rocher	\N
9	Télémark	Télémark Québec	www.telemarkquebec.qc.ca	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de télémark en 2014.<br>	L<b></b>e télémark est un ensemble de techniques de ski de fond adapté \r\nau ski de descente avec le talon non fixé au ski, ce qui permet \r\nd'exécuter ce qu'on appelle «virages télémark». Le virage \r\ntélémark s'effectue avec un fléchissement de la jambe intérieure. C'est \r\nl'une des plus anciennes techniques de ski.<br>	&nbsp;<br>	Le télémark est un sport qui requiert une très bonne base technique pour être apprécié. L'apprentissage peut être long et est suggéré d'être fait avec des cours, mais les amateurs de poudreuse trouveront que ce sport en vaut clairement la peine!<br>	Skis de télémark<br>Bâtons de télémark<br>Fixations<br>Casque<br>Lunettes de ski<br>Vêtements chauds<br>	2014-01-12 20:53:24.091795	2014-03-06 21:00:34.627829	8	\N	f	\N	\N	\N	\N	\N	\N	\N
29	Snowkite	Association des kitesurfers et véliplanchistes de Québec	www.akvq.ca/	Dans notre section événements, vous pourrez consulter sous peu la liste des événements de snowkite en 2014!<br>	Le snowkite est le pendant du kitesurf en sport d'hiver, la planche étant remplacée par une planche à neige ou des skis<a href="http://fr.wikipedia.org/wiki/Ski" target="_blank"></a>. On le pratique sur une surface enneigée énorme comme un champ et on se propulse à l'aide d'une voile spécialisée. Les adeptes de ce sport extrême peuvent atteindre des vitesses dépassant les 70&nbsp;km/h selon la puissance des vents.<br>	\N	Il existe des écoles de snowkite à travers la province qui offrent des cours pour tous les niveaux. Il est fortement recommandé de commencer ce sport en apprenant de professionnels étant donné les dangers de sa pratique. Un autre avantage des écoles est que vous n'aurez pas à acheter votre équipement dès le départ, car il peut être très dispendieux. <br>	Skis ou planche à neige<br>Voile<br>Harnais<br>Casque<br><br>	2014-01-17 03:14:44.435531	2014-03-06 20:43:39.788554	8	\N	f	\N	\N	<a href="http://kitezone.ca/" target="_blank">http://kitezone.ca/</a><br><br><br><br><br>	\N	\N	\N	\N
25	Escalade de glace	Fédération Québécoise de montagne et d'escalade	http://www.fqme.qc.ca/	<p>L'escalade de glace est une évolution de l'alpinisme vers la fin du XXème siècle. Est ensuite venu l'invention des crampons et des piolets pour faciliter la vie des grimpeurs. Cela à également permis d'ouvrir des voies beaucoup plus difficiles et techniques.</p><p><br>Il existe plusieurs variétés de glace. Au Québec, nous sommes chanceux d'avoir autant de sites pour pratiquer ce sport extrême. Nous avons même des sites avec des difficultés propices à recevoir des compétitions internationales. Que ce soit des chutes, des filets gelés ou encore des piliers, ces surfaces glacées sont changeantes avec la température et le terrain. On peut avoir de la glace molle ou de la glace pourrie, de la glace bleue, noire, grise, en champignon, en chou-fleur, cassante, friable, des séracs, du givre, des cristaux, etc. <br></p><br>	L'escalade au Québec a connu une grande progression avec les années. Au \r\ndépart, l'escalade en milieu naturel était réservé aux mordus des parois\r\n rocheuses et aventuriers aguerris. Aujourd'hui, avec les centres \r\nintérieurs, et toutes les installations à travers la province, \r\nl'escalade est beaucoup plus accessible et bien encadré grâce à la \r\nFédération Québécoise de montagne et d'escalade. <br><br>L'escalade se pratique sur différentes surfaces: le \r\nrocher (différents types de roches), sur la glace, ainsi qu'à \r\nl'intérieur sur une structure artificielle d'escalade. Durant l'hiver, \r\nla plupart des grimpeurs s'entraînent à l'intérieur ou peuvent faire des\r\n séances sur glace. La technique sur la glace est toutefois bien \r\ndifférente.<br>	Voir le lien plus bas pour le guide des cascades de glace du Québec<br>	Si vous n'avez jamais pratiqué l'escalade auparavant, il vous est \r\nessentiel de commencer par une séance dans un centre intérieur. \r\nNotamment par de l'escalade de bloc qui se pratique sans corde et avec \r\nun niveau de difficulté variable permettant aux débutants d'y aller en \r\nrespectant les étapes de l'apprentissage. De plus, vous aurez à suivre \r\nune formation afin de pouvoir grimpé en premier de cordée. Vous y \r\napprendrez à maîtriser les différents noeuds, ajuster votre baudrier, \r\nles techniques de grimpe, les notions de sécurité etc. Une fois vos \r\ntechniques au point et un minimum d'expérience acquis, vous pourrez être\r\n initier à l'escalade de rocher. À noter que des cours pour débutant sont aussi offerts directement dans les parrois de glace sous la supervision de profesionnels accrédités et sur des lieux reconnus par la fédération.<br>	Outils d'assurage<br>Mousquetons<br>Dégaines<br>Sangles<br>Coinceurs<br>Casque \r\nd'escalade<br>Protections \r\nfixes<br>Baudrier<br>Crampons<br>Bottes<br>Piolet<br>Corde dynamique<br>Broches à glace<br><br><br>	2014-01-15 21:34:33.2885	2014-03-06 18:32:38.673839	5	\N	t	\N	\N	Guide des parois: région de Québec<br><a href="http://www.escaladequebec.com/cgq/maj/Quebec2012.pdf" target="_blank">http://www.escaladequebec.com/cgq/maj/Quebec2012.pdf</a><br><br>	escaladeglace.jpg	Xdachez.com	Escalade de glace	\N
24	Vélo d'hiver	Fédération Québécoise des sports cyclistes	http://www.fqsc.net/	En hiver, il y a tout pleins de détails à prendre en compte avant de se déplacer en vélo. Voici quelques exemples: durée d'ensoleillement, conduite des cyclistes, conduite automobile, conditions météorologiques, choix du vélo, entreposage, choix des accessoires, etc.&nbsp; <br><br>- Comme les journées sont moins longues en hiver, vous êtes plus à risque d'être en déplacement le matin très tôt ou le soir après 16h et qu'il fasse noir. Il est donc important de prévoir de l'éclairage pour être visible et bien voir la route. (Lumière rouge clignotante à l'arrière, lumière blanche clignotante à l'avant et lumière fixé au casque (avant/arrière si possible)).<br>-&nbsp; La conduite est un autre élément important. En effet, vous circulerez des surfaces enneigées, glacées et même détrempées. Vous devez donc adapter votre conduite: rouler moins vite, baisser la selle, être encore plus vigilent, faire attention aux automobilistes, répartir le poids en accrochant des sacoches à votre vélo pour baisser votre centre de gravité et éviter d'avoir le dos mouillé à cause d'un sac à dos, etc. Les automobilistes ne s'attendent pas toujours à voir des cyclistes sur la route l'hiver, il est donc très important d'être bien visible et d'adopter une conduite exemplaire en respectant le code de la route.<br>- Le vent, le froid, la neige et le verglas sont des conditions hors de votre contrôle et pour lesquelles vous devrez être prêts. Les engelures font partis du vélo d'hiver, bien que vous devrez les prévenir au maximum. Prévoyez des hot pads, des lunettes de skis pour couvrir les yeux, des bonnes mitaines ou des chauffes-mains, de bonnes bottes et des couvre-chaussures, etc.<br>- Le choix du vélo et son entreposage sont deux facteurs importants. Si vous pensez laisser le vélo dehors tout l'hiver, la plupart des vieux vélos de montagne feront l'affaire. Il faut toutefois adapter les pneus pour avoir un maximum de traction et d'adhérence. Il existe des pneus cloutés pour les conditions plus froides et glacées mais des bons pneus cramponés feront l'affaire par temps plus doux. Ne les gonflez pas à bloc, ça sera moins dangereux pour rouler. Une fois qu'il est à l'extérieur, éviter de le rentrer inutilement car le gel/dégel affectera plusieurs pièces dont le cadre, la chaîne, les câbles et les cassettes.<br>- Finalement, choisissez les bons accessoires pour l'hiver. Pour les cadenas à combinaisons ou avec clés, important de bien les huiler et de se traîner du liquide anti-gel tout d'un coup qu'il reste collé. <br>	Le cyclisme utilitaire est très populaire en zone urbaine en été. Il est devenu également un moyen de transport en hiver avec le temps. Les cyclistes voulant braver la météo québécoise et ses conditions extrêmes doivent donc être bien préparés pour sortir dehors. On compte plus de 50 000 cyclistes 4 saisons au Québec en 2014.<br>	Vous pouvez circuler sur les routes du Québec, attention de respecter le code de la route. Soyez prudent et bien visible.<br>	Il existe plusieurs blogues et plusieurs boutiques de sports où vous pourrez demander conseils pour apprendre à pratiquer le vélo d'hiver de manière sécuritaire et agréable. Vous pourrez même avoir des formations gratuites sur le cyclisme hivernal notamment à la COOP Roue-Libre de l'Université Laval. Écrivez-nous pour plus de détails.<br>	Vélo adapté<br>Casque de vélo<br>Vêtements chauds (ski de fond)<br>Bottes au couvre-chaussures<br>Sacoches <br>Réflecteurs &amp; lumières<br>	2014-01-15 21:33:46.540005	2014-03-06 19:38:23.805416	6	\N	t	\N	\N	<a href="http://www.velo.qc.ca/fr/Velo-Quebec-pour-la-pratique-du-velo-hiver" target="_blank">http://www.velo.qc.ca/fr/Velo-Quebec-pour-la-pratique-du-velo-hiver</a><br><br>	velohiver.jpg	Crédit photo: Nellie Brière	Vélo d'hiver	\N
\.


--
-- Data for Name: activities_events; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activities_events (id, activity_id, event_id) FROM stdin;
3	10	2
5	8	2
\.


--
-- Name: activities_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activities_events_id_seq', 5, true);


--
-- Name: activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activities_id_seq', 52, true);


--
-- Data for Name: activities_locations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activities_locations (id, activity_id, location_id) FROM stdin;
3	8	2
4	9	1
5	10	1
6	28	1
7	51	2
8	51	31
9	51	15
10	51	12
11	6	32
12	6	1
13	6	33
14	6	34
15	6	45
21	8	18
22	8	11
23	8	6
24	8	16
25	8	13
26	8	9
27	8	22
28	8	25
29	8	24
30	8	20
31	8	27
32	8	28
33	8	29
34	8	31
35	8	1
36	8	23
37	8	21
38	8	19
39	8	15
40	8	14
41	8	10
42	8	7
43	8	3
44	8	30
45	8	4
46	8	12
47	8	53
48	7	32
49	7	1
50	7	33
51	7	34
52	7	17
53	7	45
54	6	17
56	26	48
57	26	44
58	26	47
59	9	32
60	9	34
61	9	17
62	9	45
63	25	31
64	25	51
65	10	18
66	10	25
67	10	20
68	10	19
69	10	15
70	10	12
71	10	48
72	10	54
73	24	12
74	24	48
75	23	48
76	22	12
77	22	55
78	22	54
79	29	12
\.


--
-- Name: activities_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activities_locations_id_seq', 79, true);


--
-- Data for Name: activities_seasons; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activities_seasons (id, season_id, activity_id) FROM stdin;
3	4	52
4	3	52
5	4	51
6	3	51
7	4	10
8	4	6
9	4	7
10	4	8
11	4	26
12	3	26
13	3	39
14	4	9
15	4	25
16	4	24
17	4	23
18	3	23
19	4	22
20	4	29
\.


--
-- Name: activities_seasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activities_seasons_id_seq', 20, true);


--
-- Data for Name: activity_categories; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activity_categories (id, name, created_at, updated_at) FROM stdin;
1	Activités nautiques et aquatiques	2013-12-03 02:19:57.922109	2013-12-09 03:43:54.666356
4	Activités pédestres	2013-12-09 03:48:01.850924	2013-12-09 03:48:01.850924
5	Activités d'escalade	2013-12-09 03:49:01.928431	2013-12-09 03:49:01.928431
6	Activités cyclistes	2013-12-09 03:49:26.097228	2013-12-09 03:49:26.097228
7	Activités multi-sports	2013-12-09 03:50:24.239475	2013-12-09 03:50:24.239475
8	Activités de glisse	2013-12-09 03:52:17.973381	2013-12-09 03:52:17.973381
9	Activitiés d'observation	2013-12-09 03:54:24.090538	2013-12-09 04:03:35.205864
10	Activités attelés	2013-12-09 04:05:34.028296	2013-12-09 04:05:34.028296
\.


--
-- Name: activity_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activity_categories_id_seq', 10, true);


--
-- Data for Name: activity_category_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activity_category_translations (id, activity_category_id, locale, created_at, updated_at, name) FROM stdin;
2	1	en	2013-12-03 02:19:57.936662	2013-12-09 03:43:54.669213	Water-related activities
1	1	fr	2013-12-03 02:19:57.927837	2013-12-09 03:43:54.670932	Activités nautiques et aquatiques
6	4	fr	2013-12-09 03:48:01.855758	2013-12-09 03:48:01.857737	Activités pédestres
5	4	en	2013-12-09 03:48:01.853839	2013-12-09 03:48:19.121477	Pedestrian activities
7	5	en	2013-12-09 03:49:01.930279	2013-12-09 03:49:01.930279	Climbing activities
8	5	fr	2013-12-09 03:49:01.931507	2013-12-09 03:49:01.932886	Activités d'escalade
9	6	en	2013-12-09 03:49:26.09904	2013-12-09 03:49:26.09904	Cycling activities
10	6	fr	2013-12-09 03:49:26.100415	2013-12-09 03:49:26.101676	Activités cyclistes
11	7	en	2013-12-09 03:50:24.242709	2013-12-09 03:50:24.242709	Multi-sports activities
12	7	fr	2013-12-09 03:50:24.244346	2013-12-09 03:50:24.245636	Activités multi-sports
13	8	en	2013-12-09 03:52:17.97622	2013-12-09 03:52:17.97622	Board sports
14	8	fr	2013-12-09 03:52:17.977994	2013-12-09 03:52:17.979809	Activités de glisse
15	9	en	2013-12-09 03:54:24.093498	2013-12-09 03:54:24.093498	Observation activities
16	9	fr	2013-12-09 03:54:24.095378	2013-12-09 04:03:35.208151	Activitiés d'observation
17	10	en	2013-12-09 04:05:34.029956	2013-12-09 04:05:34.029956	Animal-powered activities
18	10	fr	2013-12-09 04:05:34.031015	2013-12-09 04:05:34.032109	Activités attelés
\.


--
-- Name: activity_category_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activity_category_translations_id_seq', 18, true);


--
-- Data for Name: activity_ratings; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activity_ratings (id, rate, rater_amount, activity_id) FROM stdin;
2	5.0	1	10
3	5.0	2	51
4	5.0	1	6
5	5.0	1	7
6	5.0	2	26
7	5.0	1	8
8	5.0	1	25
9	5.0	1	24
10	5.0	1	22
\.


--
-- Name: activity_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activity_ratings_id_seq', 10, true);


--
-- Data for Name: activity_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY activity_translations (id, activity_id, locale, created_at, updated_at, name, federation, particularity, description, other_infos, learn, equipment, useful_links, video_link, image_caption_activity, image_caption_location, image_caption_text) FROM stdin;
79	41	fr	2014-01-17 03:43:19.870513	2014-01-17 03:43:19.873444	Luge d'eau	Fédération Québécoise de Canoë-Kayak d'eau vive										
66	35	en	2014-01-17 03:34:16.449247	2014-01-17 03:34:16.449247	Astronomy	Fédération des astronomes amateurs du Québec										
80	42	en	2014-01-17 03:45:31.620647	2014-01-17 03:45:31.620647	Windsurfing	Association des kitesurfers et véliplanchistes de Québec										
67	35	fr	2014-01-17 03:34:16.453994	2014-01-17 03:34:16.45665	Astronomie	Fédération des astronomes amateurs du Québec										
68	36	en	2014-01-17 03:35:34.239	2014-01-17 03:35:34.239	Canoeing	Fédération Québécoise du canot et du kayak										
69	36	fr	2014-01-17 03:35:34.276286	2014-01-17 03:35:34.297572	Canot	Fédération Québécoise du canot et du kayak										
70	37	en	2014-01-17 03:36:58.294132	2014-01-17 03:36:58.294132	Sea kayaking	Fédération Québécoise du canot et du kayak										
71	37	fr	2014-01-17 03:36:58.311833	2014-01-17 03:36:58.319521	Kayak de mer	Fédération Québécoise du canot et du kayak										
75	39	fr	2014-01-17 03:38:30.868855	2014-01-17 03:38:30.871197	Kayak récréatif	Fédération Québécoise du canot et du kayak										
76	40	en	2014-01-17 03:40:10.816978	2014-01-17 03:40:10.816978	Rafting	Fédération québécoise de canoë-kayak d'eau vive										
77	40	fr	2014-01-17 03:40:10.820232	2014-01-17 03:40:10.822432	Rafting	Fédération québécoise de canoë-kayak d'eau vive										
72	38	en	2014-01-17 03:37:48.907247	2014-01-17 03:42:19.866477	Whitewater kayaking	Fédération Québécoise de Canoë-Kayak d'eau vive										
73	38	fr	2014-01-17 03:37:48.914891	2014-01-17 03:42:19.873061	Kayak de rivière	Fédération Québécoise de Canoë-Kayak d'eau vive										
78	41	en	2014-01-17 03:43:19.862243	2014-01-17 03:43:19.862243	Hydrospeed	Fédération Québécoise de Canoë-Kayak d'eau vive										
81	42	fr	2014-01-17 03:45:31.628449	2014-01-17 03:45:31.633661	Planche à voile	Association des kitesurfers et véliplanchistes de Québec										
82	43	en	2014-01-17 03:47:33.048032	2014-01-17 03:47:33.048032	Kitesurfing	Association des kitesurfers et véliplanchistes de Québec										
83	43	fr	2014-01-17 03:47:33.051576	2014-01-17 03:47:33.054073	Kitesurf	Association des kitesurfers et véliplanchistes de Québec										
84	44	en	2014-01-17 03:49:25.912488	2014-01-17 03:49:25.912488	Underwater diving	Fédération Québécoise des acitivtés subaquatiques										
85	44	fr	2014-01-17 03:49:25.915612	2014-01-17 03:49:25.918212	Plongée sous-marine	Fédération Québécoise des acitivtés subaquatiques										
86	45	en	2014-01-17 03:50:00.967357	2014-01-17 03:50:00.967357	Free diving	Fédération Québécoise des acitivtés subaquatiques										
87	45	fr	2014-01-17 03:50:00.969623	2014-01-17 03:50:00.971528	Plongée en apnée	Fédération Québécoise des acitivtés subaquatiques										
88	46	en	2014-01-17 03:50:59.37079	2014-01-17 03:50:59.37079	Road biking	Fédération Québécoise des sports cyclistes										
89	46	fr	2014-01-17 03:50:59.373103	2014-01-17 03:50:59.374523	Vélo de route	Fédération Québécoise des sports cyclistes										
92	48	en	2014-01-17 03:52:44.066635	2014-01-17 03:52:44.066635	Downhill biking	Fédération Québécoise des sports cyclistes										
93	48	fr	2014-01-17 03:52:44.070077	2014-01-17 03:52:44.072711	Vélo de descente	Fédération Québécoise des sports cyclistes										
94	49	en	2014-01-17 03:53:30.459052	2014-01-17 03:53:30.459052	Cyclocross biking	Fédération Québécoise des sports cyclistes										
95	49	fr	2014-01-17 03:53:30.461047	2014-01-17 03:53:30.462987	Vélo de cyclocross	Fédération Québécoise des sports cyclistes										
96	50	en	2014-01-17 03:54:44.911119	2014-01-17 03:54:44.911119	Cycling paths	Vélo Québec										
97	50	fr	2014-01-17 03:54:44.91391	2014-01-17 03:54:44.916047	Pistes cyclables	Vélo Québec										
57	30	fr	2014-01-17 03:19:18.140974	2014-01-17 03:58:53.425822	Observation de la faune	Les Pourvoiries du Québec						<a href="http://www.pourvoiries.com/activites-plein-air/plein-air/observation-de-la-faune.html" target="_blank">http://www.pourvoiries.com/activites-plein-air/plein-air/observation-de-la-faune.html</a><br><br>				
55	29	fr	2014-01-17 03:14:44.454284	2014-03-06 20:40:11.099387	Snowkite	Association des kitesurfers et véliplanchistes de Québec	Dans notre section événements, vous pourrez consulter sous peu la liste des événements de snowkite en 2014!<br>	Le snowkite est le pendant du kitesurf en sport d'hiver, la planche étant remplacée par une planche à neige ou des skis<a href="http://fr.wikipedia.org/wiki/Ski" target="_blank"></a>. On le pratique sur une surface enneigée énorme comme un champ et on se propulse à l'aide d'une voile spécialisée. Les adeptes de ce sport extrême peuvent atteindre des vitesses dépassant les 70&nbsp;km/h selon la puissance des vents.<br>		Il existe des écoles de snowkite à travers la province qui offrent des cours pour tous les niveaux. Il est fortement recommandé de commencer ce sport en apprenant de professionnels étant donné les dangers de sa pratique. Un autre avantage des écoles est que vous n'aurez pas à acheter votre équipement dès le départ, car il peut être très dispendieux. <br>	Skis ou planche à neige<br>Voile<br>Harnais<br>Casque<br><br>	<a href="http://kitezone.ca/" target="_blank">http://kitezone.ca/</a><br><br><br><br><br>				
74	39	en	2014-01-17 03:38:30.865764	2014-03-06 17:42:13.411459	Kayak récréatif	Fédération Québécoise du canot et du kayak										
11	7	fr	2014-01-12 20:47:47.257543	2014-03-06 17:57:24.547766	Ski alpin	Fédération Québécoise de ski alpin	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de ski alpin en 2014.<br>	Le ski alpin n'a plus à faire ses preuves au Québec. Il est pratiqué par de nombreux adeptes années après années sur les nombreuses montagnes qu'offre la province. Il y en a pour tous les niveaux!<br>		Il n'est pas difficile de trouver un endroit pour apprendre à faire du ski alpin au Québec : la plupart des centres de ski offrent des\r\n cours pouvant aller jusqu'à toute une journée pour faciliter \r\nl'apprentissage des personnes de tous âges. <br>	Skis<br>Fixations<br>Bâtons de ski<br>Lunettes de ski<br>Casque<br>Vêtements chauds<br><br>			Xdachez.com	Massif de Charlevoix	
4	2	fr	2013-12-20 14:59:06.986079	2013-12-20 14:59:06.988305	Ski joëring											
3	2	en	2013-12-20 14:59:06.982649	2013-12-20 15:00:16.783827	Skijoring											
6	3	fr	2013-12-20 15:05:07.937489	2013-12-20 15:05:07.939224	Canicross							<a href="http://www.canicrossquebec.org/" target="_blank">http://www.canicrossquebec.org/</a> <br><a href="http://www.canicross.com/" target="_blank">http://www.canicross.com</a><br>				
29	16	fr	2014-01-15 21:08:58.951497	2014-01-15 21:08:58.955161	Course en sentier											
8	5	en	2014-01-12 19:36:31.050016	2014-01-12 19:36:31.055509	Traîneau à chiens	Association des Mushers du Québec										
32	18	en	2014-01-15 21:10:22.546968	2014-01-23 16:29:49.271026	Trekking	Fédération québécoise de la marche										
5	3	en	2013-12-20 15:05:07.935485	2014-01-12 19:39:45.82558	Canicross	Canicross Québec						<a href="http://www.canicrossquebec.org" target="_blank">www.canicrossquebec.org</a><br><a href="http://www.canicross.com" target="_blank">www.canicross.com</a><br>				
44	24	en	2014-01-15 21:33:46.575201	2014-03-06 19:38:23.809751	Winter biking	Fédération Québécoise des sports cyclistes	<span>In winter, there are a lot of details to consider before moving in bicycle. <span>Here are some examples: sunshine duration, cyclist's driving, \r\ndrivers, weather, choice of bike, storage, choice of accessories, etc. .<br><br></span>-\r\n As the days are shorter in winter , you are more likely to be traveling\r\n in the early mornings or evenings after 16h while it is dark. It is therefore important to provide lighting to be visible and see the road. <span>(Red light flashing in the rear, flashing white light on the front and light fixed to the helmet (front / rear if possible).<br></span>- Driving is another important element. Indeed, we drive snowy, icy and even soaked surfaces. So\r\n you must adjust your driving : drive slowly, lower the saddle, be more\r\n vigilant, pay attention to motorists, distribute your weight by hanging \r\nbags to your bike to lower your center of gravity and avoid getting wet \r\nback because of a backpack, etc. . <span>Motorists do not always expect to see cyclists on the road in the \r\nwinter, so it is very important to be visible and adopt exemplary \r\nconduct by respecting the highway code.<br></span>- The wind, cold, snow and ice conditions are beyond your control and for which you will be ready. Frostbite are part of winter biking, although you will have to prevent them. <span>Bring hot pads, ski goggles to cover the eyes, good gloves or hands-heaters, good boots, shoe covers, etc. .<br></span>- The choice of bike and storage are two important factors. If you do leave the bike outside all winter, most of the old mountain bikes will do. It should have fit tires for maximum traction and grip. There are studded tires for colder and icy conditions, but crampons will do for milder weather . Do not inflate to block, it will be safer to ride. <span>Once it is outsid, avoid unnecessary returns inside because the freeze / thaw affect several parts including the frame, chain, cables and \r\ncassettes.<br></span>- Finally, choose the right accessories for the winter. For locks with a combination or key, it is important to oil your material and bring anti-freeze liquid if suddenly it freezes.</span><br>	<span>Utilitarian cycling is very popular in urban areas in summer. It also became a means of transport in winter time. Cyclists wanting to brave Quebec'S weather and extreme conditions must be well prepared to go outside. There are more than 50,000 cyclists four seasons in the province in 2014.</span><br>	<span>You can travel on all the roads of Quebec, careful to respect the highway code. Be careful and well visible.</span><br>	<div><div><div><div></div></div></div></div>   <div><div><span>There are several blogs and several sports shops where you can ask advice to learn to practice enjoyable and safe winter cycling. You can even get free training on winter cycling in some places, including the COOP Roue-Libre Laval University. Email us for more details.</span></div></div><br>	Adapted bike<br>Bicycle helmet<br>Hot clothes<br><span>Boots overshoes</span><br>Bags<br>Reflectors and lights<br><br>					
7	4	en	2014-01-12 19:32:11.833108	2014-01-12 20:33:47.443593	Équitation	Fédération équestre du Québec										
40	22	en	2014-01-15 21:31:55.205614	2014-03-06 20:09:43.085422	Ice canoeing							<a href="http://canotaglace.org/pratiquer-le-sport" target="_blank">http://canotaglace.org/pratiquer-le-sport</a><br>		Xdachez.com	Ice canoeing	
34	19	en	2014-01-15 21:11:49.089551	2014-01-23 16:08:56.795127	Snowshoeing	Fédération québécoise de la marche										
18	11	en	2014-01-15 20:53:01.931274	2014-01-15 20:53:01.931274	Triathlon	Triathlon Québec										
19	11	fr	2014-01-15 20:53:01.940796	2014-01-15 20:53:01.943677	Triathlon	Triathlon Québec										
20	12	en	2014-01-15 20:56:51.79258	2014-01-15 20:56:51.79258	Adventure racing											
21	12	fr	2014-01-15 20:56:51.797801	2014-01-15 20:56:51.80078	Course d'aventure											
22	13	en	2014-01-15 21:00:42.55479	2014-01-15 21:00:42.55479	Winter triathlon	Triathlon Québec										
23	13	fr	2014-01-15 21:00:42.560202	2014-01-15 21:00:42.562739	Triathlon d'hiver	Triathlon Québec										
24	14	en	2014-01-15 21:04:03.87509	2014-01-15 21:04:03.87509	Multi-sports competition											
25	14	fr	2014-01-15 21:04:03.880155	2014-01-15 21:04:03.884862	Compétition multi-sports											
100	52	en	2014-02-06 16:28:29.369908	2014-02-06 16:28:29.369908	Geocaching	Association Géocaching Québec										\N
28	16	en	2014-01-15 21:08:58.938407	2014-01-15 21:08:58.938407	Trail running											
26	15	en	2014-01-15 21:08:13.657998	2014-01-23 16:35:02.637372	Running	Fédération québécoise d'athlétisme										
30	17	en	2014-01-15 21:09:44.95899	2014-01-23 16:14:39.132075	Hiking	Fédération québécoise de la marche										
36	20	en	2014-01-15 21:13:15.956226	2014-01-15 21:13:15.956226	Snowshoe running											
37	20	fr	2014-01-15 21:13:15.967199	2014-01-15 21:13:15.973002	Course en raquette											
60	32	en	2014-01-17 03:28:05.350575	2014-01-17 03:28:05.350575	Rock climbing	Fédération Québécoise de montagne et d'escalade										
90	47	en	2014-01-17 03:51:57.003228	2014-01-17 03:51:57.003228	Mountain biking	Fédération Québécoise des sports cyclistes										
50	27	en	2014-01-17 03:07:07.749616	2014-01-17 03:07:07.749616	Rollerblading	Fédération de patinage de vitesse du Québec										
51	27	fr	2014-01-17 03:07:07.770873	2014-01-17 03:07:07.778517	Patin à roues alignées	Fédération de patinage de vitesse du Québec										
52	28	en	2014-01-17 03:11:39.678988	2014-01-17 03:11:39.678988	Roller skiing	Ski de fond Québec										
53	28	fr	2014-01-17 03:11:39.698064	2014-01-17 03:11:39.713152	Ski à roulettes	Ski de fond Québec										
58	31	en	2014-01-17 03:22:17.96856	2014-01-17 03:22:17.96856	Flora Observation	FloraQuebeca										
56	30	en	2014-01-17 03:19:18.134707	2014-01-17 03:19:52.539461	Fauna observation	Les Pourvoiries du Québec						<a href="http://www.pourvoiries.com/activites-plein-air/plein-air/observation-de-la-faune.html" target="_blank">http://www.pourvoiries.com/activites-plein-air/plein-air/observation-de-la-faune.html</a>				
59	31	fr	2014-01-17 03:22:17.971256	2014-01-17 03:22:17.973146	Observation de la flore	FloraQuebeca										
61	32	fr	2014-01-17 03:28:05.358298	2014-01-17 03:28:05.361487	Escalade de rocher	Fédération Québécoise de montagne et d'escalade										
62	33	en	2014-01-17 03:31:16.625571	2014-01-17 03:31:16.625571	Birdwatching	Regroupement QuébecOiseaux										
63	33	fr	2014-01-17 03:31:16.652312	2014-01-17 03:31:16.670563	Ornithologie	Regroupement QuébecOiseaux										
64	34	en	2014-01-17 03:32:41.75104	2014-01-17 03:32:41.75104	Speleology	Société québécoise de spéléologie										
65	34	fr	2014-01-17 03:32:41.766863	2014-01-17 03:32:41.777402	Spéléologie	Société québécoise de spéléologie										
91	47	fr	2014-01-17 03:51:57.010153	2014-01-17 03:51:57.014321	Vélo de montagne	Fédération Québécoise des sports cyclistes										
35	19	fr	2014-01-15 21:11:49.09339	2014-01-23 16:08:56.797573	Raquette	Fédération québécoise de la marche										
31	17	fr	2014-01-15 21:09:44.964227	2014-01-23 16:14:39.13568	Randonnée pédestre	Fédération québécoise de la marche										
33	18	fr	2014-01-15 21:10:22.551297	2014-01-23 16:29:49.273798	Trekking	Fédération québécoise de la marche										
27	15	fr	2014-01-15 21:08:13.662034	2014-01-23 16:35:02.640554	Course à pied	Fédération québécoise d'athlétisme										
101	52	fr	2014-02-12 04:27:33.040749	2014-02-12 04:27:33.043933	Geocaching	Association Géocaching Québec										\N
9	6	en	2014-01-12 20:29:04.466046	2014-03-06 17:45:00.8208	Snowboard	Association Québec Snowboard	In our events section, you'll see shortly the event list for snowboard in 2014.<br>	<div><div><div><div></div></div></div></div>   <div><div>Snowboarding is a sport that has quickly made ​​its place among fans of winter sports in Quebec. With the many mountains that are found everywhere in the province, it is easy to find a place to practice adapted to his level.</div></div><br>		It is not difficult to find a place to learn this sport in Quebec: Most ski resorts offer courses up to a whole day to help teach people of all ages.<br>	Snowboard<br>Bindings<br>Ski glasses<br>Helmet<br>Hot clothes<br>	<a href="http://www.quebecsnowboard.ca" target="_blank">www.quebecsnowboard.ca</a><br>		Xdachez.com	Half pipe, Mont-Sainte-Anne	
13	8	fr	2014-01-12 20:49:45.632004	2014-03-06 17:58:19.503062	Ski de fond 	Ski de fond Québec	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de ski de fond en 2014.<br>	Le ski de fond est un sport qui peut se pratiquer presque n'importe où en nature. Que ça soit pour découvrir la faune et la flore, se mettre en forme ou tout simplement pour pratiquer l'activité, vous trouverez de nombreux endroits qui offrant du ski de fond style classique et ski de pas de patin.<br>		Il est possible de louer de l'équipement dans la plupart des centres de ski de fond. Pour ceux qui voudront améliorer leur technique, certains endroits offrent également des cours de style classique et ski de pas de patin.<br>	Skis de fond<br>Fixations<br>Bâtons de ski de fond<br>Vêtements chauds<br>		xx	Xdachez.com	Centre d'entraînement Myriam Bédard	
10	7	en	2014-01-12 20:47:47.24955	2014-03-06 17:46:03.40303	Alpine skiing	Fédération Québécoise de ski alpin	In our events section, you'll see shortly the list of events for alpine skiing in 2014.<br>	<div><div><div><div></div></div></div></div>   <div><div>Alpine skiing has no more to prove in Quebec. It is practiced by many enthusiasts year after year on the many mountains offered by the province. There is something for all levels!</div></div><br>		It is not difficult to find a place to learn alpine skiing in Quebec: Most ski resorts offer courses up to a whole day to help teach people of all ages.<br>	Skis<br>Bindings<br>Ski poles<br>Ski glasses<br>Helmet<br>Hot clothes<br>			Xdachez.com	Massif de Charlevoix	
102	6	fr	2014-03-06 15:13:44.16561	2014-03-06 17:57:54.652568	Planche à neige	Association Québec Snowboard	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de planche à neige en 2014.<br>	Le snowboard est un sport qui a rapidement fait sa place chez les amateurs de sports de glisse au Québec. Avec les nombreuses montagnes que l'on retrouve un peu partout dans la province, il est facile de trouver un endroit pour le pratiquer adapté à son niveau. <br>	&nbsp;	Il n'est pas difficile de trouver un endroit pour apprendre à faire de la planche à neige au Québec : la plupart des centres de ski offrent des cours pouvant aller jusqu'à toute une journée pour faciliter l'apprentissage des personnes de tous âges. <br>	Planche à neige<br>Fixations<br>Lunettes de ski<br>Casque<br>Vêtements chauds<br>	<a href="http://www.quebecsnowboard.ca" target="_blank">www.quebecsnowboard.ca</a><br>	xx	Xdachez.com	Demi-lune, Mont-Sainte-Anne	\N
12	8	en	2014-01-12 20:49:45.627556	2014-03-06 17:47:09.625513	Cross-country skiing	Ski de fond Québec	<div><div><div><div></div></div></div></div>   <div><div>In our events section, you'll see shortly the events list for cross country skiing in 2014.</div></div><br>	Cross country skiing is a sport that can be practiced almost anywhere. Whether it's to discover the fauna and flora, get fit or just enjoy the activity, you will find many places offering skiing classic and skate skiing.<br>		It is possible to rent equipment in most cross country skiing centers. For those who want to improve their technique, some places also offer courses in classical and skate skiing.<br>	Cross country skis<br>Bindings<br>Cross country ski poles<br><br>		x	Xdachez.com	Centre d'entraînement Myriam Bédard	
48	26	en	2014-01-15 21:36:03.72866	2014-03-06 18:32:23.820127	Indoor climbing	Fédération Québécoise de montagne et d'escalade	<div><div><div><div></div></div></div></div>   <div><div>The advantage of indoor climbing centers is that you can practice this sport at any time, safely, and in a social way. The difficulty levels are varied and the possibilities of climbing ways are endless since the plugs are interchangeable.</div></div><br>	<div><div><div><div></div></div></div></div>   <div><div>Mountain climbing in Quebec experienced a large increase over the years. Initially, climbing in natural environment was reserved for rock fans and adventurers. Today, with the indoor centers and the different facilities across the province, climbing is much more accessible and well supported by the Quebec Federation of mountain climbing. Climbing is practiced on different surfaces: the rock (different rock types), ice, and inside on an artificial climbing structure. During winter, most climbers train indoors or can do on-ice sessions. However, the technique for ice climbing is quite different.</div></div><br>		If you've never practiced climbing before, it is essential that you start with a session in an indoor center. Including by bouldering is practiced without a rope and with varying degrees of difficulty for beginners to go in accordance with the stages of learning. In addition, you will have to undergo training in order to climb on top rope. You will learn to master the various nodes, adjust your harness, climbing techniques, the notions of security and so on. Once your technical development and a minimum of acquired experience, you may be initiated into rock climbing.<br>	Belaying tools<br>Carabiners<br>Draws<br>Webbing<br>Nuts<br>Climbing helmet<br>Protections<br>Sling<br>Magnesia<br>Climbing shoes<br>Dynamic rope<br><p><br></p><br><br><br><br><br><br>					
49	26	fr	2014-01-15 21:36:03.733478	2014-03-06 17:48:50.766176	Escalade intérieur	Fédération Québécoise de montagne et d'escalade	L'avantage des centres d'escalade intérieurs, c'est qu'on peut y pratiquer le sport à n'importe quel moment, en toute sécurité, et de manière sociale. Les niveaux de difficultés sont variés les possibilités de voies sont infinies puisque les prises sont interchangeables. <br>	L'escalade au Québec a connu une grande progression avec les années. Au départ, l'escalade en milieu naturel était réservé aux mordus des parois rocheuses et aventuriers aguerris. Aujourd'hui, avec les centres intérieurs, et toutes les installations à travers la province, l'escalade est beaucoup plus accessible et bien encadré grâce à la Fédération Québécoise de montagne et d'escalade. <br><br>L'escalade se pratique sur différentes surfaces: le rocher (différents types de roches), sur la glace, ainsi qu'à l'intérieur sur une structure artificielle d'escalade. Durant l'hiver, la plupart des grimpeurs s'entraînent à l'intérieur ou peuvent faire des séances sur glace. La technique sur la glace est toutefois bien différente.<br><br><br><span class="wysiwyg-font-size-small"></span><br><br><br>	&nbsp;	Si vous n'avez jamais pratiqué l'escalade auparavant, il vous est essentiel de commencer par une séance dans un centre intérieur. Notamment par de l'escalade de bloc qui se pratique sans corde et avec un niveau de difficulté variable permettant aux débutants d'y aller en respectant les étapes de l'apprentissage. De plus, vous aurez à suivre une formation afin de pouvoir grimpé en premier de cordée. Vous y apprendrez à maîtriser les différents noeuds, ajuster votre baudrier, les techniques de grimpe, les notions de sécurité etc. Une fois vos techniques au point et un minimum d'expérience acquis, vous pourrez être initier à l'escalade de rocher.<br><br><br>	Outils d'assurage<br>Mousquetons<br>Dégaines <br>Sangles<br>Coinceurs<br>Casque d'escalade<br>Protections fixes<br>Baudrier<br>Magnésie<br>Chausson d'escalade<br>Corde dynamique<br><p><br></p>\r\n<p><br></p><br>	<a href="http://www.eneq.info" target="_blank">http://www.eneq.info</a><br><a href="http://www.fqme.qc.ca" target="_blank">http://www.fqme.qc.ca</a><br><a href="http://www.escaladequebec.com/" target="_blank">http://www.escaladequebec.com/</a><br><br><br>	x	Xdachez.com	Escalade de rocher	
47	25	fr	2014-01-15 21:34:33.309664	2014-03-06 18:13:10.135822	Escalade de glace	Fédération Québécoise de montagne et d'escalade	<p>L'escalade de glace est une évolution de l'alpinisme vers la fin du XXème siècle. Est ensuite venu l'invention des crampons et des piolets pour faciliter la vie des grimpeurs. Cela à également permis d'ouvrir des voies beaucoup plus difficiles et techniques.</p><p><br>Il existe plusieurs variétés de glace. Au Québec, nous sommes chanceux d'avoir autant de sites pour pratiquer ce sport extrême. Nous avons même des sites avec des difficultés propices à recevoir des compétitions internationales. Que ce soit des chutes, des filets gelés ou encore des piliers, ces surfaces glacées sont changeantes avec la température et le terrain. On peut avoir de la glace molle ou de la glace pourrie, de la glace bleue, noire, grise, en champignon, en chou-fleur, cassante, friable, des séracs, du givre, des cristaux, etc. <br></p><br>	L'escalade au Québec a connu une grande progression avec les années. Au \r\ndépart, l'escalade en milieu naturel était réservé aux mordus des parois\r\n rocheuses et aventuriers aguerris. Aujourd'hui, avec les centres \r\nintérieurs, et toutes les installations à travers la province, \r\nl'escalade est beaucoup plus accessible et bien encadré grâce à la \r\nFédération Québécoise de montagne et d'escalade. <br><br>L'escalade se pratique sur différentes surfaces: le \r\nrocher (différents types de roches), sur la glace, ainsi qu'à \r\nl'intérieur sur une structure artificielle d'escalade. Durant l'hiver, \r\nla plupart des grimpeurs s'entraînent à l'intérieur ou peuvent faire des\r\n séances sur glace. La technique sur la glace est toutefois bien \r\ndifférente.<br>	Voir le lien plus bas pour le guide des cascades de glace du Québec<br>	Si vous n'avez jamais pratiqué l'escalade auparavant, il vous est \r\nessentiel de commencer par une séance dans un centre intérieur. \r\nNotamment par de l'escalade de bloc qui se pratique sans corde et avec \r\nun niveau de difficulté variable permettant aux débutants d'y aller en \r\nrespectant les étapes de l'apprentissage. De plus, vous aurez à suivre \r\nune formation afin de pouvoir grimpé en premier de cordée. Vous y \r\napprendrez à maîtriser les différents noeuds, ajuster votre baudrier, \r\nles techniques de grimpe, les notions de sécurité etc. Une fois vos \r\ntechniques au point et un minimum d'expérience acquis, vous pourrez être\r\n initier à l'escalade de rocher. À noter que des cours pour débutant sont aussi offerts directement dans les parrois de glace sous la supervision de profesionnels accrédités et sur des lieux reconnus par la fédération.<br>	Outils d'assurage<br>Mousquetons<br>Dégaines<br>Sangles<br>Coinceurs<br>Casque \r\nd'escalade<br>Protections \r\nfixes<br>Baudrier<br>Crampons<br>Bottes<br>Piolet<br>Corde dynamique<br>Broches à glace<br><br><br>	Guide des parois: région de Québec<br><a href="http://www.escaladequebec.com/cgq/maj/Quebec2012.pdf" target="_blank">http://www.escaladequebec.com/cgq/maj/Quebec2012.pdf</a><br><br>		Xdachez.com	Escalade de glace	
14	9	en	2014-01-12 20:53:24.109164	2014-03-06 18:14:24.078088	Telemark	Télémark Québec	In our events section, you'll see shortly the list of events for telemark in 2014.<br>	Telemark is a set of corss country skiing techniques suitable for alpine skiing, with the heel not fixed to the ski, which allows you to perform what is called "telemark turns." The telemark turn is done with a flexed domestic leg. This is one of the oldest techniques of skiing.<br>		<div><div><div><div></div></div></div></div>   <div><div>Telemark is a sport that requires a good technical basis to be appreciated. Learning can be long and is suggested to be done with classes, but powder lovers will find this sport clearly worth it!</div></div><br>	Telemark skis<br>Telemark poles<br>Telemark bindings<br>Helmet<br>Ski glasses<br>Hot clothes<br>					
15	9	fr	2014-01-12 20:53:24.113902	2014-03-06 18:14:48.799093	Télémark	Télémark Québec	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de télémark en 2014.<br>	L<b></b>e télémark est un ensemble de techniques de ski de fond adapté \r\nau ski de descente avec le talon non fixé au ski, ce qui permet \r\nd'exécuter ce qu'on appelle «virages télémark». Le virage \r\ntélémark s'effectue avec un fléchissement de la jambe intérieure. C'est \r\nl'une des plus anciennes techniques de ski.<br>	&nbsp;<br>	Le télémark est un sport qui requiert une très bonne base technique pour être apprécié. L'apprentissage peut être long et est suggéré d'être fait avec des cours, mais les amateurs de poudreuse trouveront que ce sport en vaut clairement la peine!<br>	Skis de télémark<br>Bâtons de télémark<br>Fixations<br>Casque<br>Lunettes de ski<br>Vêtements chauds<br>					
46	25	en	2014-01-15 21:34:33.305368	2014-03-06 18:32:38.678761	Ice climbing	Fédération Québécoise de montagne et d'escalade	<span>Ice climbing is an evolution of mountaineering in the late twentieth century. Then came the invention of crampons and ice axes to facilitate the lives of climbers. It also opened to much more difficult and technical routes. There are several varieties of ice. In Quebec, we are fortunate to have so many sites to practice this extreme sport. We even have sites with difficulties conducive to receive international competitions. Whether it falls, frozen fillets or pillars, these icy surfaces are changing with temperature and terrain. You can have the soft ice or rotten ice, ice blue, black, gray, mushroom, cauliflower, brittle, crumbly, seracs, ice, crystals, etc..</span><br>	<div><div>Mountain climbing in Quebec experienced a large increase over \r\nthe years. Initially, climbing in natural environment was reserved for \r\nrock fans and adventurers. Today, with the indoor centers and the \r\ndifferent facilities across the province, climbing is much more \r\naccessible and well supported by the Quebec Federation of mountain \r\nclimbing. Climbing is practiced on different surfaces: the rock \r\n(different rock types), ice, and inside on an artificial climbing \r\nstructure. During winter, most climbers train indoors or can do on-ice \r\nsessions. However, the technique for ice climbing is quite different.</div></div><br>		If you've never practiced climbing before, it is essential that you \r\nstart with a session in an indoor center. Including by bouldering is \r\npracticed without a rope and with varying degrees of difficulty for \r\nbeginners to go in accordance with the stages of learning. In addition, \r\nyou will have to undergo training in order to climb on top rope. You \r\nwill learn to master the various nodes, adjust your harness, climbing \r\ntechniques, the notions of security and so on. Once your technical \r\ndevelopment and a minimum of acquired experience, you may be initiated \r\ninto rock climbing.<br>	Belaying tools<br>Carabiners<br>Draws<br>Webbing<br>Nuts<br>Climbing helmet<br>Protections<br>Sling<br>Cleats<br>Boots<br>Picks<br>Dynamic rope<br>Ice screws<br><br>			Xdachez.com	Ice climbing	
45	24	fr	2014-01-15 21:33:46.591852	2014-03-06 19:01:45.380353	Vélo d'hiver	Fédération Québécoise des sports cyclistes	En hiver, il y a tout pleins de détails à prendre en compte avant de se déplacer en vélo. Voici quelques exemples: durée d'ensoleillement, conduite des cyclistes, conduite automobile, conditions météorologiques, choix du vélo, entreposage, choix des accessoires, etc.&nbsp; <br><br>- Comme les journées sont moins longues en hiver, vous êtes plus à risque d'être en déplacement le matin très tôt ou le soir après 16h et qu'il fasse noir. Il est donc important de prévoir de l'éclairage pour être visible et bien voir la route. (Lumière rouge clignotante à l'arrière, lumière blanche clignotante à l'avant et lumière fixé au casque (avant/arrière si possible)).<br>-&nbsp; La conduite est un autre élément important. En effet, vous circulerez des surfaces enneigées, glacées et même détrempées. Vous devez donc adapter votre conduite: rouler moins vite, baisser la selle, être encore plus vigilent, faire attention aux automobilistes, répartir le poids en accrochant des sacoches à votre vélo pour baisser votre centre de gravité et éviter d'avoir le dos mouillé à cause d'un sac à dos, etc. Les automobilistes ne s'attendent pas toujours à voir des cyclistes sur la route l'hiver, il est donc très important d'être bien visible et d'adopter une conduite exemplaire en respectant le code de la route.<br>- Le vent, le froid, la neige et le verglas sont des conditions hors de votre contrôle et pour lesquelles vous devrez être prêts. Les engelures font partis du vélo d'hiver, bien que vous devrez les prévenir au maximum. Prévoyez des hot pads, des lunettes de skis pour couvrir les yeux, des bonnes mitaines ou des chauffes-mains, de bonnes bottes et des couvre-chaussures, etc.<br>- Le choix du vélo et son entreposage sont deux facteurs importants. Si vous pensez laisser le vélo dehors tout l'hiver, la plupart des vieux vélos de montagne feront l'affaire. Il faut toutefois adapter les pneus pour avoir un maximum de traction et d'adhérence. Il existe des pneus cloutés pour les conditions plus froides et glacées mais des bons pneus cramponés feront l'affaire par temps plus doux. Ne les gonflez pas à bloc, ça sera moins dangereux pour rouler. Une fois qu'il est à l'extérieur, éviter de le rentrer inutilement car le gel/dégel affectera plusieurs pièces dont le cadre, la chaîne, les câbles et les cassettes.<br>- Finalement, choisissez les bons accessoires pour l'hiver. Pour les cadenas à combinaisons ou avec clés, important de bien les huiler et de se traîner du liquide anti-gel tout d'un coup qu'il reste collé. <br>	Le cyclisme utilitaire est très populaire en zone urbaine en été. Il est devenu également un moyen de transport en hiver avec le temps. Les cyclistes voulant braver la météo québécoise et ses conditions extrêmes doivent donc être bien préparés pour sortir dehors. On compte plus de 50 000 cyclistes 4 saisons au Québec en 2014.<br>	Vous pouvez circuler sur les routes du Québec, attention de respecter le code de la route. Soyez prudent et bien visible.<br>	Il existe plusieurs blogues et plusieurs boutiques de sports où vous pourrez demander conseils pour apprendre à pratiquer le vélo d'hiver de manière sécuritaire et agréable. Vous pourrez même avoir des formations gratuites sur le cyclisme hivernal notamment à la COOP Roue-Libre de l'Université Laval. Écrivez-nous pour plus de détails.<br>	Vélo adapté<br>Casque de vélo<br>Vêtements chauds (ski de fond)<br>Bottes au couvre-chaussures<br>Sacoches <br>Réflecteurs &amp; lumières<br>	<a href="http://www.velo.qc.ca/fr/Velo-Quebec-pour-la-pratique-du-velo-hiver" target="_blank">http://www.velo.qc.ca/fr/Velo-Quebec-pour-la-pratique-du-velo-hiver</a><br><br>		Crédit photo: Nellie Brière	Vélo d'hiver	
41	22	fr	2014-01-15 21:31:55.208717	2014-03-06 20:09:43.088486	Canot à glace	Circuit québécois de canot à glace	Le canot à glace doit être pratiqué de façon sécuritaire car s'aventurer sur les eaux gelées du fleuve Saint-Laurent peut être très dangereux. Vous devez donc avoir un barreur d'expérience (possibilité de louer ses services si vous ne connaissez personne). Le canot à glace se pratique principalement au Québec, mais aussi à quelques endroits en Ontario. C'est toutefois les deux seuls endroits connus sur la planète pour la pratique de ce sport, qui demande des conditions météorologiques particulières.&nbsp; Plusieurs techniques pour progresser sont particulières au canot à glace, c'est notamment le cas de la trottinette. Les canotiers peuvent pratiquer cette technique en dehors du fleuve sur un lac gelé par exemple ou encore dans la neige sur une grande surface.<br>	Anciennement, le canot à glace était un moyen de transport pour relier la rive-sud à la rive-nord ainsi que les nombreuses îles du Fleuve Saint-Laurent. Aujourd'hui, le canot à glace fait partie du patrimoine culturel des québécois et est aussi pratiquer comme loisir et compétition. Le canot à glace est reconnu comme un sport extrême.<br>	Au Québec, le canot à glace est aussi une discipline sportive avec un championnat provincial: la coupe des glaces ! Il y a, tous les ans, différentes courses avec possibilité d'accumuler des points pour le classement général. Entre autre, la très populaire course du Carnaval de Québec, présenté en 2014 pour la 60ème année consécutive. <br>	L'Association des coureurs en canot à glace propose une page utilise pour l'apprentissage du sport, voir le lien ci-bas.<br>	canot à glace<br>rame avec crampon<br>veste de sauvetage<br>paire de crampons pour les pieds<br>bas en néoprène<br>genouillères et jambières<br>mitaines néoprène<br>pagaie avec crampon<br>vêtements adaptés (ski de fond) <br>	<a href="http://canotaglace.org/pratiquer-le-sport" target="_blank">http://canotaglace.org/pratiquer-le-sport</a><br>		Xdachez.com	Canot à glace	
54	29	en	2014-01-17 03:14:44.447669	2014-03-06 20:43:39.79533	Snowkite	Association des kitesurfers et véliplanchistes de Québec	Dans notre section événements, vous pourrez consulter sous peu la liste des événements de snowkite en 2014!<br>	Le snowkite est le pendant du kitesurf en sport d'hiver, la planche étant remplacée par une planche à neige ou des skis<a href="http://fr.wikipedia.org/wiki/Ski" target="_blank"></a>. On le pratique sur une surface enneigée énorme comme un champ et on se propulse à l'aide d'une voile spécialisée. Les adeptes de ce sport extrême peuvent atteindre des vitesses dépassant les 70&nbsp;km/h selon la puissance des vents.<br>		Il existe des écoles de snowkite à travers la province qui offrent des cours pour tous les niveaux. Il est fortement recommandé de commencer ce sport en apprenant de professionnels étant donné les dangers de sa pratique. Un autre avantage des écoles est que vous n'aurez pas à acheter votre équipement dès le départ, car il peut être très dispendieux. <br>	Skis ou planche à neige<br>Voile<br>Harnais<br>Casque<br><br>	<a href="http://kitezone.ca/" target="_blank">http://kitezone.ca/</a><br><br><br><br><br>				
43	23	fr	2014-01-15 21:33:08.99655	2014-03-06 19:29:08.826943	Centre d'entraînement de vélo intérieur	Fédération Québécoise des sports cyclistes	Les centres intérieurs proposent différents services intéressants. On peut tout simplement se présenter pour une séance de cardio-vélo seul ou en groupe, avec un coach ou sans coach. On peut également y apporter son vélo ou louer un espace de rangement et utiliser une base d'entraînement adapté à son type de vélo et pédaler devant un simulateur. Finalement, les centres offrent des vélos modifiés sur simulateur devant des écrans géants où vous pourrez voir toutes les statistiques sur votre entraînement. Vous pourrez également faire des courses contre d'autres personnes qui s'entraînent en même temps que vous.<br>	Le cyclisme se présente sous plusieurs formes. Que ce soit sur la route, en montant une montagne ou en la descendant, dans la boue, cela demande une excellente condition physique. Les cyclistes de haut niveau s'entraînent sur leur vélo à l'année. Ceux qui en ont les moyens roulent sur des circuits ici au Canada et aux États-Unis durant l'été mais l'hiver venu, ils vont se réfugier dans des endroits plus chaud pour rouler à l'extérieur. Pour les autres, il y a des alternatives intéressantes. Dans une autre page, nous parlons du fat bike, sport de plus en plus populaire qui sert d'entraînement pour l'été. Il y a également les centres de vélos intérieurs<br>	Un centre intérieur représente donc une alternative très intéressante pour continuer votre entraînement 12 mois par année et ne pas perdre la forme.<br>	Visiter les centres d'entraînement près de chez vous pour plus d'informations. À noter que la plupart des gyms possèdent quelques vélos pour ce type d'entraînement et parfois même des séances de groupe avec un entraîneur privé.<br>	Vélo (si nécessaire)<br>Souliers de vélo + pédales <br>Pneu d'entraînement<br>Serviettes<br>Vêtement adéquat<br>					
16	10	en	2014-01-12 21:03:48.161878	2014-03-06 19:34:59.891972	Ice skating	Fédération de patinage de vitesse du Québec	<div><div><div><div></div></div></div></div>   <div><div>In our events section, you'll see shortly the list of events for ice skating in 2014.</div></div><br>	Ice skating is practiced outside and is on of the province's favorite winter activities. It can be practiced on one of the many rinks in the region during the hours of free skating (there are 168 rinks in the territory of the city of Quebec) or rings and ice tracks specially designed for this purpose. There are several kinds of skates: Nordic blades, speed skates, hockey skates and speed skates.<br>		<div><div><div><div></div></div></div></div>   <div><div>There are schools of ice skating, however, it is easy to learn by yourself. It is often possible to rent skates near rings and skating tracks. Do not be afraid to use a chair to help your balance on the ice if necessary, we all have to start somewhere!</div></div><br>	Skates					
17	10	fr	2014-01-12 21:03:48.167003	2014-03-06 19:34:59.894022	Patin à glace	Fédération de patinage de vitesse du Québec	Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de patin à glace en 2014.<br>	Le patin à glace se pratique dehors et est une des activités préférées des québécois. On peut la pratiquer sur les nombreuses patinoires de la région durant les heures de patinage libre (il existe 168 patinoires sur le territoire de la ville de québec) ou sur des anneaux et pistes de glace spécialement conçus à cet effet. Il existe plusieurs sortes de patins : lames nordiques, patins de vitesse, patins de hockey et patins artistique.<br>	&nbsp;<br>	Il existe des écoles de patin à glace, mais il est toutefois facile d'apprendre par soi-même. Il est souvent possible de louer des patins près des anneaux et pistes de patin. N'ayez pas peur d'utiliser une chaise pour faciliter votre équilibre sur la glace au besoin, on doit tous commencer quelque part!<br>	Patins à glace<br>Casque<br>Vêtements adaptés<br><br>	&nbsp;		Pentathlon des Neiges	Plaines d'Abraham	2013 crédit: Clément Presse
42	23	en	2014-01-15 21:33:08.992951	2014-03-06 20:06:43.255267	Indoor bike training center	Fédération Québécoise des sports cyclistes	<div><div><div><div></div></div></div></div>   <div><div><span>Domestic centers offer various interesting services. One can simply stand for a cardio workout bike alone or in groups, with or without a. You can also bring your bike or rent a storage space and use a training base suitable for the type of bike and pedaling to a simulator. Finally, the centers offer modified simulator before giant screens where you can see all the statistics on your workout bikes. You can also race against others who train at the same time as you.</span></div></div><br>	<span>Cycling comes in many forms. Whether on the road, climbing a mountain or in the down in the mud, it requires excellent physical condition. Cyclists of high level train on their bikes year round. Those who have the means run on circuits here in Canada and the United States during the summer, but come winter, they take refuge in warmer places to ride outside. For others, there are interesting alternatives. In another page, we talk about fat bike, sport more popular that serves as training for the summer. There are also the centers of internal bicycle</span><br>	<div><div><div><div></div></div></div></div>   <div><div><span>An interior centre represents a very interesting alternative to continue your training 12 months a year and do not lose shape.</span></div></div><br>	<span>Visit a center near you for more information. Note that most gyms have some bikes for this type of workout and sometimes group sessions with a personal trainer.</span><br>	Bicycle (if needed)<br>Bike shoes and pedals<br>Training tire<br>Towels<br>Adequate clothing<br>					
98	51	en	2014-01-21 22:05:14.647562	2014-03-06 20:23:09.176345	Fatbike	Fédération québécoise des sports cyclistes	<p>&nbsp;Dans notre section évènements, vous pourrez consulter sous peu la liste des évènements de fatbike en 2014 !</p>	Le Fatbike est de plus en plus à la mode au Québec et partout ailleurs. Arrivé sur les marchés depuis le début des années 2000, le fatbike a connu une hausse considérable dans les dernières années, spécialement chez les amateurs de vélo de montagne. Ce type de vélo, ayant des pneus très larges et des jantes de 80 à 100 mm. Originalement conçu pour se déplacer dans la neige et dans le sable, le fatbike est maintenant vendu et commercialisé comme un véritable vélo tout terrain. Il peut être autant utilisé l'été que l'hiver. Au Québec, on commence même à voir des centres officiels pour la pratique de ce sport. D'ici quelques saisons, on peut très certainement s'attendre à voir des centres offrant la location de ces vélos. Pour l'instant, le fatbike se pratique principalement dans des centres de ski de fond (piste de skate) ainsi que dans les sentiers de raquettes. Toutefois, il est très important de respecter les règlements des établissements concernant la circulation dans leurs sentiers pour les fatbike.		<p>Il existe déjà plusieurs détaillants spécialisés dans les fatbike. On peut s'attendre à en voir de plus en plus en 2014. Les grandes compagnies de l'industrie du vélo de montagne se lancent dans ce marché. C'est notamment le cas de compagnies tel que Trek, Kona, On One et même Specialized.</p>	<p>- Fatbike</p><p>- Vêtements techniques (ski de fond)</p><p>- Casque de vélo</p><p>- Bonnes bottes ou chaussures d'hiver de sport (couvres-chaussures si possible)</p>	<p><a href="http://www.vmqca.qc.ca/chroniquesdegilles/" target="_blank">http://www.vmqca.qc.ca/chroniquesdegilles/</a></p><p><a href="http://destinationvt.com/fat-biking/" target="_blank">http://destinationvt.com/fat-biking/</a></p><p><a href="https://www.imba.com/blog/hansi-johnson/my-impressions-and-thoughts-midwest-fat-bike-access-and-grooming-summit" target="_blank">https://www.imba.com/blog/hansi-johnson/my-impressions-and-thoughts-midwest-fat-bike-access-and-grooming-summit</a></p><p><a href="http://blogues.allezy.net/" target="_blank">http://blogues.allezy.net/</a></p><p><a href="http://fat-bike.com/tag/canada/" target="_blank">http://fat-bike.com/tag/canada/</a></p><p><a href="https://www.imba.com/resources/land-protection/fat-bikes" target="_blank">https://www.imba.com/resources/land-protection/fat-bikes</a></p><p><a href="http://fatbikes.com" target="_blank">http://fatbikes.com</a></p><p><a href="http://www.weelz.fr/fr/velo-urbain/2013/08/21/2014-annee-du-fat-bike/" target="_blank">http://www.weelz.fr/fr/velo-urbain/2013/08/21/2014-annee-du-fat-bike/</a></p><p></p>		Crédit photo: Gilles Morneau		
99	51	fr	2014-01-21 22:05:14.663704	2014-03-06 20:23:09.179408	Fatbike	Fédération québécoise des sports cyclistes	<p>&nbsp;Dans notre section événements, vous pourrez consulter sous peu la liste des évènements de fatbike en 2014 !</p>	Le Fatbike est de plus en plus à la mode au Québec et partout ailleurs. Arrivé sur les marchés depuis le début des années 2000, le fatbike a connu une hausse considérable dans les dernières années, spécialement chez les amateurs de vélo de montagne. Ce type de vélo, ayant des pneus très larges et des jantes de 80 à 100 mm. Originalement conçu pour se déplacer dans la neige et dans le sable, le fatbike est maintenant vendu et commercialisé comme un véritable vélo tout terrain. Il peut être autant utilisé l'été que l'hiver. Au Québec, on commence même à voir des centres officiels pour la pratique de ce sport. D'ici quelques saisons, on peut très certainement s'attendre à voir des centres offrant la location de ces vélos. Pour l'instant, le fatbike se pratique principalement dans des centres de ski de fond (piste de skate) ainsi que dans les sentiers de raquettes. Toutefois, il est très important de respecter les règlements des établissements concernant la circulation dans leurs sentiers pour les fatbike.		<p>Il existe déjà plusieurs détaillants spécialisés dans les fatbike. On peut s'attendre à en voir de plus en plus en 2014. Les grandes compagnies de l'industrie du vélo de montagne se lancent dans ce marché. C'est notamment le cas de compagnies tel que Trek, Kona, On One et même Specialized.</p>	<p>- Fatbike</p><p>- Vêtements techniques (ski de fond)</p><p>- Casque de vélo</p><p>- Bonnes bottes ou chaussures d'hiver de sport (couvres-chaussures si possible)</p>	<p><a href="http://www.vmqca.qc.ca/chroniquesdegilles/" target="_blank">http://www.vmqca.qc.ca/chroniquesdegilles/</a></p><p><a href="http://destinationvt.com/fat-biking/" target="_blank">http://destinationvt.com/fat-biking/</a></p><p><a href="https://www.imba.com/blog/hansi-johnson/my-impressions-and-thoughts-midwest-fat-bike-access-and-grooming-summit" target="_blank">https://www.imba.com/blog/hansi-johnson/my-impressions-and-thoughts-midwest-fat-bike-access-and-grooming-summit</a></p><p><a href="http://blogues.allezy.net/" target="_blank">http://blogues.allezy.net/</a></p><p><a href="http://fat-bike.com/tag/canada/" target="_blank">http://fat-bike.com/tag/canada/</a></p><p><a href="https://www.imba.com/resources/land-protection/fat-bikes" target="_blank">https://www.imba.com/resources/land-protection/fat-bikes</a></p><p><a href="http://fatbikes.com" target="_blank">http://fatbikes.com</a></p><p><a href="http://www.weelz.fr/fr/velo-urbain/2013/08/21/2014-annee-du-fat-bike/" target="_blank">http://www.weelz.fr/fr/velo-urbain/2013/08/21/2014-annee-du-fat-bike/</a></p><p></p>	.	Crédit photo: Gilles Morneau		
\.


--
-- Name: activity_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('activity_translations_id_seq', 102, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	cloutier_16@hotmail.com	$2a$10$FZbBP94Ao6dleSoNwoTWju/ZCrkDAWPNySiD6ovPbbpelUVpeAr7a	\N	\N	2014-01-21 15:03:05.278127	7	2014-02-12 14:27:07.546743	2014-01-21 15:03:05.33484	166.62.187.47	166.62.187.47	2013-12-03 02:19:58.879945	2014-02-12 14:27:07.550542
2	info@aventurapleinair.com	$2a$10$Ugdg1bvTCbSAaRvrwHeJR.oxgWOROnBg6n614J.oWuGmzbDijbdbi	\N	\N	2014-03-05 23:27:13.022069	36	2014-03-06 20:27:56.902863	2014-03-06 14:46:32.994897	166.62.187.47	66.130.221.164	2013-12-06 03:56:35.122626	2014-03-06 20:27:56.904184
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('admin_users_id_seq', 2, true);


--
-- Data for Name: administrative_regions; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY administrative_regions (id, name, created_at, updated_at) FROM stdin;
2	Bas-Saint-Laurent	2013-12-09 01:17:01.965152	2013-12-09 01:17:01.965152
3	Saguenay-Lac-Saint-Jean	2013-12-09 01:17:38.387516	2013-12-09 01:17:38.387516
4	Mauricie	2013-12-09 01:17:49.992672	2013-12-09 01:17:49.992672
5	Estrie	2013-12-09 01:17:58.782671	2013-12-09 01:17:58.782671
6	Montréal	2013-12-09 01:18:10.429672	2013-12-09 01:18:10.429672
7	Outaouais	2013-12-09 01:18:27.737414	2013-12-09 01:18:27.737414
8	Abitibi-Témiscamingue	2013-12-09 01:18:45.348968	2013-12-09 01:18:45.348968
9	Côte-Nord	2013-12-09 01:18:59.506762	2013-12-09 01:18:59.506762
10	Nord-du-Québec	2013-12-09 01:19:14.598584	2013-12-09 01:19:14.598584
11	Gaspésie-îles-de-la-Madeleine	2013-12-09 01:19:31.194136	2013-12-09 01:19:31.194136
12	Chaudière-Appalaches	2013-12-09 01:19:50.716838	2013-12-09 01:19:50.716838
13	Laval	2013-12-09 01:20:01.25809	2013-12-09 01:20:01.25809
14	Lanaudière	2013-12-09 01:20:09.89306	2013-12-09 01:20:09.89306
15	Laurentides	2013-12-09 01:20:21.876491	2013-12-09 01:20:21.876491
16	Montérégie	2013-12-09 01:20:32.73735	2013-12-09 01:20:32.73735
17	Centre-du-Québec	2013-12-09 01:20:43.553361	2013-12-09 01:20:43.553361
1	Québec et Charlevoix	2013-12-03 02:19:58.121097	2014-01-17 04:00:58.561092
\.


--
-- Name: administrative_regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('administrative_regions_id_seq', 17, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY comments (id, comment, commentable_id, commentable_type, role, created_at, updated_at, user_name, user_email, activity_title, approved) FROM stdin;
4	Test, l'anneau est superbe !	10	Activity	comments	2014-01-14 22:18:51.205271	2014-01-22 00:41:30.600872	Maxime	max.pare@hotmail.com	Patin à glace	t
5	Quel évènement incroyable !	2	Event	comments	2014-02-12 05:40:56.087985	2014-02-12 05:41:38.049369	Maxime	max.pare@hotmail.com	Pentathlon des Neiges	t
6	Dans la Charlevoix, nous avons l'impression que nous allons arriver dans le fleuve St-Laurent.	32	Location	comments	2014-02-18 01:52:22.196463	2014-02-18 01:52:53.42025	Phil Fortier	phil_fortier@hotmail.com	Le Massif de Charlevoix	t
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('comments_id_seq', 6, true);


--
-- Data for Name: event_index_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY event_index_translations (id, event_index_id, locale, created_at, updated_at, text_top) FROM stdin;
2	1	en	2013-12-03 04:48:55.318488	2014-02-15 22:19:45.791423	<span>Regulaly visit the events section of our website. It contains&nbsp; majority sporting events in which are performed from one to five activities listed on the site. You can find information about the event regarding: dates, a brief description, the website of the event, contact information and description of the place where the event will be held. <br><br>Enjoy the events now !<br>Aventura's team<br></span>
1	1	fr	2013-12-03 04:48:55.311432	2014-02-24 19:33:23.367407	Consultez régulièrement la section évènements de notre site web. Elle renferme la majorité des évènements dans lesquels sont pratiqués de 1 à 5 activités répertoriés sur le site. Vous pourrez entre autres avoir les dates, une brève description, le site de l'évènement ainsi que les coordonnées et la description du lieux où se tiendra l'évènement.<br><br>Bonnes courses !<br>L'équipe Aventura<br>
\.


--
-- Name: event_index_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('event_index_translations_id_seq', 2, true);


--
-- Data for Name: event_indices; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY event_indices (id, text_top, created_at, updated_at) FROM stdin;
1	Consultez régulièrement la section évènements de notre site web. Elle renferme la majorité des évènements dans lesquels sont pratiqués de 1 à 5 activités répertoriés sur le site. Vous pourrez entre autres avoir les dates, une brève description, le site de l'évènement ainsi que les coordonnées et la description du lieux où se tiendra l'évènement.<br><br>Bonnes courses !<br>L'équipe Aventura<br>	2013-12-03 04:48:55.301164	2014-02-24 19:33:23.358517
\.


--
-- Name: event_indices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('event_indices_id_seq', 1, true);


--
-- Data for Name: event_ratings; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY event_ratings (id, rate, rater_amount, event_id) FROM stdin;
2	5.0	1	2
3	5.0	1	3
\.


--
-- Name: event_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('event_ratings_id_seq', 3, true);


--
-- Data for Name: event_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY event_translations (id, event_id, locale, created_at, updated_at, website, federation, interesting_stats, description, name, other_infos) FROM stdin;
3	2	en	2014-01-22 04:56:53.8243	2014-01-22 04:56:53.8243	\N	Triathlon Québec	<span>World biggest winter outdoor event !<br></span>	An event that is unique in the world, the pentathlon des neiges includes\r\n five disciplines which must be completed without interruption by an \r\nindividual or a team of two to five people.<br>	Pentathlon des Neiges	
4	2	fr	2014-01-22 04:56:53.849572	2014-02-15 19:41:19.649936	\N	Triathlon Québec	Plus grand évènement de plein air hivernal au monde!<br>	Le Pentathlon des neiges est un événement sportif unique au monde au \r\ncours duquel vous devez compléter en continu, seul, en tandem ou en équipe de 3 à 5\r\n personnes, les 5 disciplines suivantes : vélo, course, ski, patin et \r\nraquette.<br>	Pentathlon des Neiges	Journée santé et services sociaux<br>Défi des familles et amis Merrell<br>Tournoi invitation collégial RSEQ<br>Défi longue Distance<br>Tournoi invitation scolaire RSEQ<br>Défi universitaire et éducation aux adultes<br>Défi courte distance Merrell<br>Défi corporatif<br>Défi patin des plaines d'Abraham<br>Défi raquette<br><br>
6	3	fr	2014-02-15 19:54:01.236038	2014-02-15 19:54:01.238131	\N	Circuit québécois de canot à glace	Cette année, ce sera la 19ème édition du grand défi des glaces. <br>	Le Grand Défi Chez Victor sera la dernière course de la Coupe des Glaces. C'est un réel marathon d'endurance pour toutes les équipes qui y prendront part. Entre autre, la catégorie Élite-hommes fera 5 allers-retour de Québec à Lévis et ils ont un maximum de 2h30 pour compléter la compétition. <br>	Grand Défi Chez Victor	La compétition débutera dans le Bassin Louise, dans le Vieux-Port de Québec à 12h30 le samedi 1er Mars 2014. Voici les coordonnées pour vous y rendre:<br><br><span>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\tBassin Louise<br>\r\n\t\t\t\t\t\t170 Rue Dalhousie Québec, Québec <br>\r\n\t\t\t\t\t\tG1K 4C4\t\t\t\t\t</p></span><br><br>
5	3	en	2014-02-15 19:54:01.232395	2014-02-19 13:17:18.564054	\N	Circuit québécois de canot à glace	Cette année, ce sera la 19ème édition du grand défi des glaces. <br>	Le Grand Défi Chez Victor sera la dernière course de la Coupe des Glaces. C'est un réel marathon d'endurance pour toutes les équipes qui y prendront part. Entre autre, la catégorie Élite-hommes fera 5 allers-retour de Québec à Lévis et ils ont un maximum de 2h30 pour compléter la compétition. <br>	Grand Défi Chez Victor	La compétition débutera dans le Bassin Louise, dans le Vieux-Port de Québec à 12h30 le samedi 1er Mars 2014. Voici les coordonnées pour vous y rendre:<br><br><span>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\tBassin Louise<br>\r\n\t\t\t\t\t\t170 Rue Dalhousie Québec, Québec <br>\r\n\t\t\t\t\t\tG1K 4C4\t\t\t\t\t</p></span><br><br>
\.


--
-- Name: event_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('event_translations_id_seq', 6, true);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY events (id, date_start, date_end, website, federation, federation_website, interesting_stats, description, created_at, updated_at, name, online, location_id, other_infos, image, link, image_file_name, image_caption) FROM stdin;
2	2014-02-22	2014-03-08	http://www.pentathlondesneiges.com	Triathlon Québec	http://www.triathlonquebec.org/	Plus grand évènement de plein air hivernal au monde!<br>	Le Pentathlon des neiges est un événement sportif unique au monde au \r\ncours duquel vous devez compléter en continu, seul, en tandem ou en équipe de 3 à 5\r\n personnes, les 5 disciplines suivantes : vélo, course, ski, patin et \r\nraquette.<br>	2014-01-22 04:56:53.804945	2014-02-15 19:41:19.64255	Pentathlon des Neiges	t	12	Journée santé et services sociaux<br>Défi des familles et amis Merrell<br>Tournoi invitation collégial RSEQ<br>Défi longue Distance<br>Tournoi invitation scolaire RSEQ<br>Défi universitaire et éducation aux adultes<br>Défi courte distance Merrell<br>Défi corporatif<br>Défi patin des plaines d'Abraham<br>Défi raquette<br><br>	\N		892298_626474117389195_68249449_o.jpg	Pentathlon des Neiges
3	2014-03-01	2014-03-01	http://canotaglace.com/nextlescourses?view=courses&cid=16	Circuit québécois de canot à glace	http://canotaglace.com	Cette année, ce sera la 19ème édition du grand défi des glaces. <br>	Le Grand Défi Chez Victor sera la dernière course de la Coupe des Glaces. C'est un réel marathon d'endurance pour toutes les équipes qui y prendront part. Entre autre, la catégorie Élite-hommes fera 5 allers-retour de Québec à Lévis et ils ont un maximum de 2h30 pour compléter la compétition. <br>	2014-02-15 19:54:01.225472	2014-02-19 13:17:18.551798	Grand Défi Chez Victor	t	55	La compétition débutera dans le Bassin Louise, dans le Vieux-Port de Québec à 12h30 le samedi 1er Mars 2014. Voici les coordonnées pour vous y rendre:<br><br><span>\r\n\t\t\t\t\t<p>\r\n\t\t\t\t\t\tBassin Louise<br>\r\n\t\t\t\t\t\t170 Rue Dalhousie Québec, Québec <br>\r\n\t\t\t\t\t\tG1K 4C4\t\t\t\t\t</p></span><br><br>	\N		GRAND_DÉFI_CHEZ_VICTOR	Circuit Québécois de canot à glace
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('events_id_seq', 3, true);


--
-- Data for Name: events_seasons; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY events_seasons (id, season_id, event_id) FROM stdin;
2	4	2
6	4	3
\.


--
-- Name: events_seasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('events_seasons_id_seq', 6, true);


--
-- Data for Name: footer_text_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY footer_text_translations (id, footer_text_id, locale, created_at, updated_at, max_title, max_subtitle, max_text, photograph_title, photograph_subtitle, photograph_text) FROM stdin;
2	1	en	2013-12-03 02:19:58.44041	2013-12-03 02:29:12.884875	Maxime	The keen sportsman	For some cycling to other skiing, Maxime, he is fascinated by all outdoor activities. Student in the field of administration and tourism is the director of Aventura Outdoor enabling passionate to find all their favorite outdoor activities and plenty of information on sports events or even the most extraordinary places to practice their passion.	Photographer of talent	Live what you love...	Located in Montreal, Mathieu Dupuis combines passion and creativity to offer its customers expertise and experience of high-level digital photography ... He loves out of his comfort zone and put his creativity to the test. Rapidity and thoroughness mathieu vehicle values ​​that are dear to him. Photographer outside is at ease on all types of terrain. It has acquired a solid reputation over the years and offers expertise in digital art that brings enormously to our website Aventura Outdoor. A big thank you for the cooperation!
1	1	fr	2013-12-03 02:19:58.431511	2014-01-22 04:36:47.509621	Maxime	Le sportif passionné	Pour certains le cyclisme, pour d’autres le ski, Maxime, lui, est passionné par toutes les activités de plein air. Etudiant dans le domaine de l’administration et du tourisme il est le directeur d’Aventura Plein Air permettant aux passionnés de retrouver toutes leurs activités de plein air favorites et de nombreuses informations sur les événements sportifs ou encore les lieux les plus extraordinaires pour pratiquer leur passion.	Photographe de talent	Live what you love...	Etabli à Montréal, Mathieu Dupuis allie passion et créativité pour offrir à ses clients une expertise et une expérience de haut niveau en photographie numérique...Il adore sortir de sa zone de confort et mettre sa créativité à l’épreuve. Rapidité et rigueur mathieu véhicule des valeurs qui lui sont chères. Le photographe du dehors est à l’aise sur tous les types de terrains. Il a acquis une solide réputation au fil des années et offre une expertise en art numérique qui apporte énormément à notre site internet Aventura Plein Air. Un grand merci pour sa collaboration!
\.


--
-- Name: footer_text_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('footer_text_translations_id_seq', 2, true);


--
-- Data for Name: footer_texts; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY footer_texts (id, max_title, max_subtitle, max_text, max_image, photograph_title, photograph_subtitle, photograph_text, photograph_image, created_at, updated_at, max_image_file_name, photograph_image_file_name, background_image, background_image_file_name) FROM stdin;
1	Maxime	Le sportif passionné	Pour certains le cyclisme, pour d’autres le ski, Maxime, lui, est passionné par toutes les activités de plein air. Etudiant dans le domaine de l’administration et du tourisme il est le directeur d’Aventura Plein Air permettant aux passionnés de retrouver toutes leurs activités de plein air favorites et de nombreuses informations sur les événements sportifs ou encore les lieux les plus extraordinaires pour pratiquer leur passion.	\N	Photographe de talent	Live what you love...	Etabli à Montréal, Mathieu Dupuis allie passion et créativité pour offrir à ses clients une expertise et une expérience de haut niveau en photographie numérique...Il adore sortir de sa zone de confort et mettre sa créativité à l’épreuve. Rapidité et rigueur mathieu véhicule des valeurs qui lui sont chères. Le photographe du dehors est à l’aise sur tous les types de terrains. Il a acquis une solide réputation au fil des années et offre une expertise en art numérique qui apporte énormément à notre site internet Aventura Plein Air. Un grand merci pour sa collaboration!	\N	2013-12-03 02:19:58.426806	2014-02-17 23:08:33.707447	1507566_10152229090894750_650872164_n.jpg	0509b7ea-d478-11e2-a1cd-696ad9a755c8.jpg	\N	Mont-blanc.jpg
\.


--
-- Name: footer_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('footer_texts_id_seq', 1, true);


--
-- Data for Name: home_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY home_translations (id, home_id, locale, created_at, updated_at, title, who_one_title, who_one_text, who_two_title, who_two_text, who_video_link, featured_caption_place, featured_caption_activity, promotion_text) FROM stdin;
2	1	en	2013-12-03 02:19:58.323201	2014-02-04 04:04:47.05715	AVENTURA OUTDOOR QUEBEC	CONCEPT PRESENTATION	<ul><li>Find all the outdoor non-motorized activities in Quebec</li><li>Diversified places for all passions</li><li>A complete list of all events</li></ul><br><br>	AVENTURA OUTDOOR QUEBEC	<ul><li>Transmit passion for the outdoors</li><li>To discover the incredible province of Quebec</li></ul><br><br>	https://vimeo.com/82236508	Jacques Cartier National Park	Kayak Ride	Descritpif text advertising text advertising text descritpif publicitaireTexte descritpif descritpif publicitaireTexte descritpif descritpif publicitaireTexte.Texte descrit-pif publicitaireTexte descritpif text.
1	1	fr	2013-12-03 02:19:58.313911	2014-01-22 04:31:52.720594	AVENTURA PLEIN AIR QUÉBEC	PRESENTATION DU CONCEPT	<ul><li>Retrouvez toutes les activités de plein air non motorisées au Québec</li><li>Des lieux diversifiés pour pratiquer ses activités préférées </li><li>Une liste complète des évènements </li></ul>	AVENTURA PLEIN AIR QUÉBEC	<ul><li>Transmettre la passion du plein air</li><li>Faire découvrir la richesse de la province québécoise pour pratiquer ses activités de plein air</li></ul><br><br><br><br>	https://vimeo.com/82236508	Parc National Jacques Cartier	Promenade en kayak	test
\.


--
-- Name: home_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('home_translations_id_seq', 2, true);


--
-- Data for Name: homes; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY homes (id, created_at, updated_at, title, who_one_title, who_one_text, who_two_title, who_two_text, who_video_link, featured_image, featured_caption_place, featured_caption_activity, promotion_text, pub1_id, pub2_id, featured_image_file_name) FROM stdin;
1	2013-12-03 02:19:58.308815	2014-02-04 04:04:47.049409	AVENTURA PLEIN AIR QUÉBEC	PRESENTATION DU CONCEPT	<ul><li>Retrouvez toutes les activités de plein air non motorisées au Québec</li><li>Des lieux diversifiés pour pratiquer ses activités préférées </li><li>Une liste complète des évènements </li></ul>	AVENTURA PLEIN AIR QUÉBEC	<ul><li>Transmettre la passion du plein air</li><li>Faire découvrir la richesse de la province québécoise pour pratiquer ses activités de plein air</li></ul><br><br><br><br>	https://vimeo.com/82236508	\N	Parc National Jacques Cartier	Promenade en kayak	test	2	3	03.jpg
\.


--
-- Name: homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('homes_id_seq', 1, true);


--
-- Data for Name: location_ratings; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY location_ratings (id, rate, rater_amount, location_id) FROM stdin;
1	5.0	2	1
27	5.0	1	49
3	5.0	1	3
28	5.0	1	50
4	5.0	1	9
5	5.0	1	10
6	5.0	1	20
29	5.0	1	51
7	5.0	1	21
8	5.0	1	23
9	5.0	1	31
30	5.0	1	52
10	5.0	1	12
11	5.0	1	4
12	5.0	1	28
31	5.0	1	24
13	5.0	1	5
14	5.0	1	32
15	5.0	1	33
32	5.0	1	55
16	5.0	1	34
17	5.0	1	43
18	5.0	1	8
33	5.0	1	11
2	4.5	2	2
19	5.0	1	44
20	5.0	1	45
21	5.0	1	16
22	5.0	1	6
23	5.0	1	46
24	5.0	1	47
25	5.0	1	25
26	5.0	1	48
\.


--
-- Name: location_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('location_ratings_id_seq', 33, true);


--
-- Data for Name: location_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY location_translations (id, location_id, locale, created_at, updated_at, name, address, website, description, link_text) FROM stdin;
105	53	en	2014-02-14 20:11:08.425855	2014-03-03 16:30:48.750966	Parc linéaire de la rivière Beauport	69 rue Juchereau,	\N	<span>Located 15 minutes from Quebec City, the linear park Beauport River offers a footpath and cycle track. You can see many species of birds, a diverse wildlife and two cascades of 25m each ... an amazing landscape.</span><br>	Official website
106	53	fr	2014-02-14 20:11:08.428241	2014-03-03 16:30:48.7527	Parc linéaire de la rivière Beauport	69 rue Juchereau,	http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/parcs_bases_pleinair.aspx	Situé à 15 minutes de la ville de Québec, la parc linéaire de la rivière Beauport propose un sentier pédestre et une piste cyclable. Vous pourrez y voir de nombreuses espèce d'oiseaux, une nature diversifiée ainsi que deux cascades de 25 m…un paysage étonnant.<br>	Site web officiel
35	18	en	2014-01-21 23:25:48.798771	2014-02-09 21:51:40.738916	Base de plein air de Sainte-Foy	3180, rue Laberge	\N	<span>Sainte-Foy Outdoor Base offers many ways to enjoy winter; walking, tobogganing, snowshoeing, sledding, snow scooters and cross country skiing. Open daily from 9 am to 16 pm, until mid-March, weather permitting.</span><br>	
19	10	en	2014-01-21 17:51:23.282147	2014-02-09 22:10:16.570519	Centre Ski-Neuf	451 Boulevard Gauthier	\N	<span>Centre Ski-Neuf, in the town of Portneuf, welcomes you for your activities such as cross country skiing (24 km of trails), snowshoeing, hiking and ice skating. In addition, this site offers many events throughout the year.</span><br>	
45	23	en	2014-01-22 03:07:27.2535	2014-02-09 21:30:23.16594	Centre de ski de fond St-Augustin	237, Chemin du Lac	\N	<div><div><div><div><span>The cross country skiing center Saint-Augustin-de-Desmaures, located fifteen minutes from the city of Quebec, offers 5.5 kilometers of trails of a familial level. You can also have access to hiking trails.</span><br></div></div></div></div>	
7	4	en	2014-01-21 16:33:38.810385	2014-02-14 02:31:40.762751	Centre plein air Dansereau	50, rue Dansereau	\N	The Danserau centre lets you enjoy cross country skiing on 30 km of trails and 5 km of snowshoeing along the Jacques Cartier River. In summer, enjoy these trails for mountain biking and hiking.<br>	Official website
23	12	en	2014-01-21 21:34:41.148853	2014-02-14 02:56:58.377962	Plaines d'Abraham	835 Avenue Wilfrid-Laurier	\N	In the heart of Quebec, enjoy the winter in a unique historical place: the Plains of Abraham. Whether to cross-country skiing, snowshoeing, running, biking, skating or even walking around, this park welcomes you and also offers events throughout the year<br>	Official website
31	16	en	2014-01-21 22:29:41.73106	2014-02-14 02:41:25.012921	Centre plein air les Sources Joyeuses	141 Rang Ste-Madeleine	\N	Located in the heart of Charlevoix's crater, the Outdoor Centre Les Sources Merry offers the following winter activities: cross country skiing, snowshoeing, sledding, skating and walking. 53 km of trails for cross-country skiing, 17 km of snowshoe trails and 5.5 km of walking trails, there is something for all levels and all ages!<br>	Official website
5	3	en	2014-01-21 16:07:15.647492	2014-02-09 22:57:15.616932	Camp Mercier	94, Route 175	\N	<span>The Laurentides Wildlife Reserve, located between the regions of Quebec and Saguenay-Lac-Saint-Jean, is a huge area where you can practice your favorite outdoor activities such as hunting, fishing, watching black bears, mountain biking, kayaking, but also cross-country skiing, snowshoeing, hiking, ice skating ...</span><br>	
3	2	en	2014-01-12 19:10:25.031157	2014-02-14 03:04:36.776449	Sentiers du Moulin	99, Chemin du Moulin	http://www.sentiersdumoulin.com	The Sentiers du Moulin is 38 km of cross country skiing trails and almost 18 km of linear trail for snowshoeing. Located thirty minutes from Quebec City, this site also offers hiking, mountain biking and vollay-ball in the summer.<br>	Official website
13	7	en	2014-01-21 17:13:15.874236	2014-02-09 22:33:08.897168	Base de plein air La Découverte	1560, Rue de la Découverte	\N	<div><div><div><div></div></div></div></div>   <div><div>In Quebec City, the outdoor base La Découverte offers 55 km of cross-country skiing, snowshoe trails and hiking. By taking them, you can explore Mount Bélair and it's 485 meters of altitude! In summer, the outdoor center offers swimming, hiking, bird watching, playgrounds and more</div></div><br>	
27	14	en	2014-01-21 22:16:52.594052	2014-02-09 22:01:10.805413	Sentiers des Caps de Charlevoix	2, rue Leclerc 	\N	<span>With 27 km of linear paths, and at the top of the massif of Charlevoix, the Sentier des Caps de Charlevoix is ideal for all lovers of skiing and snowshoeing. Some trails overlook the river and you will enjoy a view and unstoppable thanks to the altitude, trails are among the first to open and last to close at the end of the season.</span><br>	
21	11	en	2014-01-21 20:54:26.046225	2014-02-09 22:07:12.408065	Gîte de l'Écureuil	1352, rang du Gîte	\N	<span>Located about an hour from the city of Quebec, the site welcomes you to make your outdoor activities in winter and summer. You have the choice: cross country skiing, snowshoeing, dog sledding, sliding... but also climbing, canoeing, hiking, board paddle, raft, golf, or even visiting the cave Le Trou du Diable.</span><br>	
48	24	fr	2014-01-22 03:19:38.672482	2014-02-09 21:27:29.779487	Parc de la Rivière 	1307, Avenue des Loisirs Est		Situé dans l'Ancienne Lorette, le Parc de la Rivière vous propose plus de 7 kilomètres de sentiers de randonnée pédestre, de ski et de vélo. Les sentiers côtoient la rivière Lorette dans la plus grande forêt urbaine de la région.<br>	
37	19	en	2014-01-22 00:02:33.063308	2014-02-09 21:45:28.462957	Centre plein air de Beauport	95, rue de la Sérénité	\N	Beauport Outdoor Centre will seduce you in all seasons. In winter, cross country skiers, snowshoers, skating and walkers will find 20 km of trails, 1.3 km of which are lit until 9 p.m, 3 km of snowshoe trails, 600m of skating trails lit until 21h, and 1km walking trail through the trees. In summer, the campsite is open and offers activities such as volleyball, supervised swimming pool, playgrounds for children, hiking and mountain biking ...<br><br>	
41	21	en	2014-01-22 01:56:57.292413	2014-02-09 21:36:19.102634	Domaine de Maizerets	2000 Boulevard Montmorency	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Located in the heart of Limoilou, Domaine Maizerets consists of three sectors, the historical heart, the wooded area oand the arboretum. You will find many facilities and activities: cross-country skiing trails, snowshoeing and walking, a skating rink, picnic areas ...</span></div></div><br>	
43	22	en	2014-01-22 02:06:13.691624	2014-02-09 21:34:08.875165	 Centre de ski de fond de Cap-Rouge	4600, rue Saint-Félix, secteur du Golf	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Center Cross Country Ski Cap-Rouge, located in Sainte Foy, offers twelve kilometers of tracks (unsupervised). The center is open daily from 9 am to 16 pm when the snow cover is sufficient.</span></div></div><br>	
47	24	en	2014-01-22 03:19:38.670576	2014-02-09 21:27:29.775582	Parc de la Rivière 	1307, Avenue des Loisirs Est	\N	Located in L'Ancienne Lorette, The Parc de la Rivière Proposes more than 7 kilometers of trails for hikers, cross country skiers and bikers. The trails are around the Lorette river, inside the region's biggest urban forest.<br>	
9	5	en	2014-01-21 16:49:18.60253	2014-02-09 22:43:49.926198	Centre plein air les Portes de l'Enfer	423, rue principale	\N	<span>Less than an hour east of Quebec, the Outdoor Centre Les Portes de L'Enfer lets you enjoy trails of cross country skiing of over 30 km in total (18 km linear) in the wilderness. In the centre, open every day, you can also enjoy snowshoe trails (5 km) and slides.</span><br>	
62	31	fr	2014-01-22 04:29:41.876348	2014-02-06 15:46:59.515376	Vallée Bras-du-Nord	100 Avenue Saint Jacques	http://www.valleebrasdunord.com/	Située sur la Rive-Nord du fleuve Saint-Laurent dans la région de Portneuf, la Vallée Bras-du-Nord est idéale pour tous les amateurs de randonnée, vélo de montagne, canots et kayak, raquette de montagne, canyoning et randonnée équestre. Offrant un paysage magnifique, de montagnes, falaises, une rivière et une chute, ce lieu unique propose également différents types d'hébergements (campings, refuges, village de yourtes, chalets...)<br>	
53	27	en	2014-01-22 03:35:59.913519	2014-01-22 03:35:59.913519	Les sentiers l'Amical	306, chemin Principal est	\N		\N
54	27	fr	2014-01-22 03:35:59.91805	2014-01-22 03:35:59.92082	Les sentiers l'Amical	306, chemin Principal est	http://sainthilarion.ca		\N
49	25	en	2014-01-22 03:28:15.489299	2014-02-06 16:24:15.570633	Parc Chauveau	3175, avenue Chauveau	\N	Along the St-Charles river, the Parc Chauveau greets you for your hikesm lunches, and according to the season for soccer, geocaching, fishing, cross country skiing, snowshoeing and more<br>	
57	29	en	2014-01-22 04:19:23.758978	2014-01-22 04:19:23.758978	Cité Joie	28 chemin des Cascades	\N		\N
58	29	fr	2014-01-22 04:19:23.764327	2014-01-22 04:19:23.767247	Cité Joie	28 chemin des Cascades	http://www.citejoie.com		\N
60	30	fr	2014-01-22 04:24:42.185381	2014-02-06 16:12:00.959418	Domaine Notre-Dame	83 Route Grand-Capsa	http://www.domainenotredame.com	Situé à 20 minutes du centre ville de Québec, le domaine Notre Dame est à la fois un centre de plein air familial et un lieu de rencontre privilégié pour les gens d'affaires. Ce lieu unique et convivial propose des activités de plein air pour petits et grands, avec en hiver glissades, patin sur le lac, raquettes, ski de fond... et en été des jeux d'eaux, volleyball de plage, pétanque, sentiers pédestre... De plus, les possibilités d'hébergement sont nombreux et on y trouve même un service de restauration.<br>	
55	28	en	2014-01-22 04:09:07.130993	2014-02-14 02:47:32.07976	Centre de ski de fond Robert Giguère	55, rue des Érables	\N	A 20 minutes drive from Quebec city, the Robert Giguère center offers cross country ski and snowshoes trails of beginner to intermediate levels. You can follow the St-Anne river and admire the Mont Saint-Anne with the 8 kilometers of trails of cross country ski and the 3 kilometers of snowshoes trails. This ideal family site if free for kids less than 14 years old.<br>	Official website
65	33	en	2014-01-27 21:36:59.646569	2014-03-02 20:29:33.70525	Centre de ski Le Relais	1084, Boulevard du Lac	\N	<span>The ski center Le Relais offers its 29 ski slopes, 25 of which are lit at night, and his snowpark. Located 20 minutes from downtown Quebec City, the Relais offers events throughout the winter, including competitions in freestyle held in the snowpark.</span><br>	
69	35	en	2014-02-03 16:45:05.158641	2014-03-02 20:37:14.05366	Secrets Nordiques	100 rue Beau-mont	\N	<span>Located in the ski resort of Mont Sainte-Anne, half an hour from Quebec Nordiques Secrets lets you discover dog sledding, ski-Jöring (pulled by a dog, you can be skiing, snow scootering or snowscouting) and snowshoeing.</span><br>	
71	36	en	2014-02-03 16:49:10.098422	2014-03-02 20:38:35.856911	Aventures Inukshuk	131 Route De Duchesnay	\N	<span>Inukshuk Adventures offers activities such as dogsledding, snowmobiling but also a large maze for the whole family and an activity of wildlife watching and more particularly thw watching of the black bear.</span><br>	
75	38	en	2014-02-03 16:55:34.89618	2014-03-03 00:37:34.128827	Chenil La Poursuite	 1925A, Chemin Lambert	\N	<span>Located in Lévis, just 15 minutes from downtown Quebec, Chenil La Poursuite specializes in dog sledding. Just enjoy this activity through different and maintained wooded trails and also enjoy the place for your snowshoeing and make slides tube ... Chenil La Poursuite offers different packages and different type of accommodation if you want to stay overnight. </span><br>	
79	40	en	2014-02-03 17:03:06.116467	2014-03-03 00:42:43.303499	Expédition Mi-loup	186 Côte Lafleur	\N	<span>Located 20 minutes from downtown Quebec, Auberge Le P'tit Bonheur offers different activities to enjoy this winter, such as dog sledding, snowmobiling, ice fishing and snowshoeing offered in a wooded setting. The site offers different packages and different types of accommodation (private room, teepee, igloo ...).</span><br>	
81	41	en	2014-02-03 17:07:00.601188	2014-03-03 00:44:42.632665	Les Randonnées Boréales	17 rang St Thomas	\N	<span>Les Randonnées Boréales, these are dog sledding trips and guided hikes in the heart of the wilderness of Charlevoix. Located 2 hours east of Quebec City, the site also offers accommodation in lodgings and food services.</span><br>	
83	42	en	2014-02-03 17:09:42.670143	2014-03-03 00:46:50.112416	Le Chenil du Sportif	65 Rang Sainte Marie	\N	Le Chenil du Sportif offers dogsled tours in the heart of the forests of Charlevoix. The site, located about 1h30 Quebec offers trips ranging from hiking to half-day to multi-day expeditions.<br>	
85	43	en	2014-02-03 17:16:59.520092	2014-03-03 00:48:32.045422	Descente Malbaie	316 Rue Principale	\N	<span>At Descent Malbaie, located 2 hours from Quebec City, enjoy dogsledding for half day, full day or even multi-day trips. The site offers different packages for all your needs.</span><br>	
59	30	en	2014-01-22 04:24:42.182618	2014-02-06 16:12:00.953329	Domaine Notre-Dame	83 Route Grand-Capsa	\N	Located 20 minutes from Quebec city's downtown, the Domaine Notre-Dame is both a familial outdoor activities center and priviledged buisness person's meeting point. This unique and convivial location proposes outdoor activities for everyone, with slides, ice skating, snowshoeing and cross country skiing in winter, and water games, beach volleyball, hiking and petanque in the summer. They also offer possibilities of lodging and a restaurant. <br>	
61	31	en	2014-01-22 04:29:41.864792	2014-02-06 15:46:59.512781	Vallée Bras-du-Nord	100 Avenue Saint Jacques	http://www.valleebrasdunord.com/	Located on the North side of the St-Lawrence river in the region of Portneuf, the Vallée Bras-du-Nord is ideal for those who love hiking, mountain biking, cannoeing, kayaking, snowshoeing, cannyonning and horseback riding. Offering a magnificent landscape, mountains, cliffs, rivers and waterfalls, they also propose different type of lodging, like camping sites, refuges, cabins and yurts.<br>	
50	25	fr	2014-01-22 03:28:15.491925	2014-02-06 16:24:15.575114	Parc Chauveau	3175, avenue Chauveau	http://www.ville.quebec.qc.ca	Aux abords de la rivière Saint Charles, le Parc Chauveau vous accueille tout au lond de l'année pour vos randonnées pédestres, vos pique-niques, et en fonction des saisons pour le soccer, le géocaching, la pêche, le ski de fond et la raquette…<br>	
46	23	fr	2014-01-22 03:07:27.255466	2014-02-09 21:30:23.17259	Centre de ski de fond St-Augustin	237, Chemin du Lac	http://www.ville.st-augustin.qc.ca	Le Centre de ski de fond de Saint-Augustin-de-Desmaures, situé à un quart d'heure de la ville de Québec, offre 5,5 kilomètres de pistes de niveau familial. Vous pouvez également avoir accès aux sentiers de randonnée pédestre.<br>	
44	22	fr	2014-01-22 02:06:13.693875	2014-02-09 21:34:08.879126	 Centre de ski de fond de Cap-Rouge	4600, rue Saint-Félix, secteur du Golf	http://www.ville.quebec.qc.ca	Le Centre de ski de fond de Cap-Rouge, situé à Sainte Foy vous propose douze kilomètres de pistes (non surveillées). Le centre est accessible tous les jours de 9 h à 16 h dès que le couvert de neige est suffisant.<br>	
42	21	fr	2014-01-22 01:56:57.29841	2014-02-09 21:36:19.106556	Domaine de Maizerets	2000 Boulevard Montmorency	http://www.domainemaizerets.com/	Situé au cœur de Limoilou, le Domaine de Maizerets se compose de trois secteurs; le cœur historique, le boisé et le secteur de l'arboretum. Vous y trouverez de nombreux aménagements et activités: des sentiers de ski de fond, de raquettes et de marche, une patinoire, des aires de pique-nique...<br>	
39	20	en	2014-01-22 01:48:57.862752	2014-02-09 21:38:52.225784	Centre plein air Castor	C.P. 1000, Succ. Forces, Ed. 610	\N	<div><div><div><div></div></div></div></div>   <div><div><span>The Outdoor Centre Castor, located fifteen minutes from Quebec City offers a variety of activities. In winter, you can enjoy the 80 km of trails for cross-country skiing, snowshoeing (11km of trails for beginners and experienced), slides, and skating. In summer the center offers activities such as golf, biking, hunting and fishing (22 lakes and two rivers).</span></div></div><br>	
40	20	fr	2014-01-22 01:48:57.866334	2014-02-09 21:38:52.22996	Centre plein air Castor	C.P. 1000, Succ. Forces, Ed. 610	http://www.centrecastor.com	Le Centre plein air Castor, situé à un quart d'heure de la ville de Québec vous propose des activités variées. En hiver, vous pouvez ainsi profiter des 80 km de sentiers de ski de fond, des sentiers de ski de randonnée, de raquette (11km de sentier pour débutants et expérimentés), glissade, et patins. En été le centre vous propose des activités telles que le golf, le vélo ainsi que la chasse et la pêche (22 lacs et 2 rivières).<br>	
38	19	fr	2014-01-22 00:02:33.067468	2014-02-09 21:45:28.465253	Centre plein air de Beauport	95, rue de la Sérénité	http://www.centrepleinairbeauport.ca	Le Centre plein air de Beauport saura vous séduire en toutes saisons. En hiver, les amateurs de ski de fond, de raquettes, de patinage et de marche seront comblés avec 20 km de sentiers de ski de fond, dont 1.3 km sont éclairés jusqu'à 21h, 3 km de pistes de raquette, 600m de sentier de patins éclairé jusqu'à 21h, et 1km de sentier de marche silllonnant à travers les arbres. En été, le camping est ouvert et vous propose des activités telles que le volleyball, une piscine surveillée, des aires de jeux pour enfants, des pistes de randonnées pédestre et de vélo de montagne...<br>	
36	18	fr	2014-01-21 23:25:48.801762	2014-02-09 21:51:40.742701	Base de plein air de Sainte-Foy	3180, rue Laberge	https://www.ville.quebec.qc.ca	La base de plein air de Sainte-Foy vous propose de nombreuses façons de profiter de l'hiver; marche, glissade, raquettes, traîneau,&nbsp; trotinette des neiges et ski de fond. Ouverte tous les jours, de 9 h à 16 h, jusqu'à la mi-mars si le temps le permet.<br>	
33	17	en	2014-01-21 23:06:08.582286	2014-02-09 21:53:36.873853	Mont Grand-Fonds	1000, chemin des Loisirs	\N	<div><div><div><div></div></div></div></div>   <div><div><span>In Mont Grand-Fonds La Malbaie, you can enjoy skiing, cross-country skiing trails (140 km and 44 km skating), sliding and snowshoeing. In addition, the site offers many events and shows throughout the year (races, ice sculpture competition ...)</span></div></div><br>	
34	17	fr	2014-01-21 23:06:08.584636	2014-02-09 21:53:36.879447	Mont Grand-Fonds	1000, chemin des Loisirs	http://www.montgrandfonds.com	Au Mont Grand-Fonds La Malbaie, vous pourrez profiter de pistes de ski alpin, de pistes de ski de fond (140 km et 44 km de pas de patin), de glissade et de sentiers de raquette. De plus, le site propose de nombreux événements et spectacles tout au long de l'années (courses, concours de sculpture sur glace...)<br>	
109	55	en	2014-02-15 20:15:37.680056	2014-03-03 16:33:04.286414	Bassin Louise	170 Rue Dalhousie	\N	<span>The Bassin Louise in Quebec, home to the Marina Port of Quebec and the Marche du Vieux-Port, is a popular place for walkers, which also offers a bike path punctuated by rest areas and green spaces.</span><br>	Official website
56	28	fr	2014-01-22 04:09:07.133212	2014-02-14 02:47:32.082108	Centre de ski de fond Robert Giguère	55, rue des Érables	http://www.villedebeaupre.com	À 25 minutes de Québec, le centre de ski Robert Giguère vous propose des sentiers de ski de fond et de raquette de niveaux facile et intermédiaire. Vous pourrez longer la rivière Sainte-Anne et admirer le Mont Sainte-Anne avec 8 km de piste de ski de fond et 3 km de piste de raquettes. Ce site, idéal pour la famille, est gratuit pour les enfants de moins de 14 ans.<br>	Site web officiel
29	15	en	2014-01-21 22:24:44.229432	2014-02-09 21:59:39.627894	Station touristique Duchesnay	140, montée de l’Auberge	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Located 30 minutes from Quebec City and along the St. Joseph Lake, the Duchesnay resort offers a multitude of activities in every season. You can to choose from, and depending on the season, ice skating, skiing hok, ice fishing, dog sledding, hiking, biking or surfing with a paddle ...</span></div></div><br>	
30	15	fr	2014-01-21 22:24:44.23127	2014-02-09 21:59:39.63144	Station touristique Duchesnay	140, montée de l’Auberge	http://www.sepaq.com/ct/duc/	Situé à 30 minutes de la ville de Québec et au bord du lac Saint-Joseph, la station touristique Duchesnay propose une myriade d'activités en toute saison. Vous pourrez au choix, et en fonction de la saison, faire du patinage, du ski hok, de la pêche blanche, du traîneau à chiens, de la randonnée pédestre, du vélo ou encore du surf debout à la pagaie...<br>	
28	14	fr	2014-01-21 22:16:52.595944	2014-02-09 22:01:10.810196	Sentiers des Caps de Charlevoix	2, rue Leclerc 	http://www.sentierdescaps.com/	Avec 27 km de sentiers linéaires, et situé au sommet du massif de Charlevoix, le Sentier des Caps de Charlevoix est idéal pour tous les amateurs de ski de fond et de raquette. Certains sentiers surplombe le fleuve et vous permettront de profiter d'une vue imparable et grâce à l'altitude, les sentiers sont parmi les premiers à ouvrir et les derniers à fermer à la fin de saison.<br>	
110	55	fr	2014-02-15 20:15:37.682498	2014-03-03 16:33:04.288109	Bassin Louise	170 Rue Dalhousie,	http://www.portquebec.ca	Le Bassin Louise à Québec, qui abrite la Marina du port de Québec et le Marche du Vieux-Port, est un endroit apprécié des promeneurs, qui propose également une piste cyclable ponctuée d’aires de repos et d’espaces verts.<br>	Site web officiel
25	13	en	2014-01-21 21:42:56.572247	2014-02-09 22:03:27.471629	Réserve faunique de Portneuf	229, rue du Lac Vert	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Located a little less than an hour northwest of Quebec, the wildlife reserve is ideal in any season for outdoor enthusiasts. Whether for cross country skiing, sledding, snowshoeing, ice fishing, hiking, biking, wildlife viewing, the cueuillette forest, canoe-camping ... or simply visit and picnic, just make your activities in this accessible and unique place.</span></div></div><br>	
26	13	fr	2014-01-21 21:42:56.574289	2014-02-09 22:03:27.475991	Réserve faunique de Portneuf	229, rue du Lac Vert	http://www.sepaq.com/rf/por/	Située à un peu moins d'une heure au nord-ouest de Québec, la réserve faunique de Portneuf est idéale en toute saison pour les amateurs de plein air. Que ce soit pour le ski de fond, pour la glissade, la raquette, la pêche blanche, la randonnée pédestre, le vélo, l'observation de la faune, la cueuillette en forêt, le canot-camping... ou simplement visiter et pique-niquer, venez réaliser vos activités dans ce cadre accessible et unique.<br>	
22	11	fr	2014-01-21 20:54:26.048828	2014-02-09 22:07:12.409979	Gîte de l'Écureuil	1352, rang du Gîte	http://www.natureportneuf.com	Situé à environ une heure de la ville de Québec, ce site vous accueille pour réaliser vos activités de plein air en hiver et en été. Vous avez le choix : ski de fond, raquettes, chiens de traîneau, glissades… mais aussi escalade, canot, randonnée, planche à pagaie, radeau pneumatique, golf, ou même visite de la grotte Le Trou du Diable.<br>	
20	10	fr	2014-01-21 17:51:23.283869	2014-02-09 22:10:16.574936	Centre Ski-Neuf	451 Boulevard Gauthier	http://www.villedeportneuf.com	Le centre Ski-Neuf dans la ville de Portneuf vous accueille pour vos activités de ski de fond (24 km de sentiers), raquette, marche et patin à glace. De plus, ce site propose de nombreux événements tout au long de l'année.<br>	
17	9	en	2014-01-21 17:46:45.2443	2014-02-09 22:12:55.060395	Forêt Montmorency	103rd Kilometer on Route 175	\N	<span>The Montmorency forest welcomes you all year round for your outdoor desires. In winter, discover the snowshoe-skiing or enjoy cross country skiing, snowshoeing, skating, sledding ... And summer, just watch the wildlife with a guide,or other activities like hiking, fishing, canoeing, mountain biking ...</span><br>	
18	9	fr	2014-01-21 17:46:45.247164	2014-02-09 22:12:55.064603	Forêt Montmorency	Kilomètre 103 de la route 175	http://www.fm.ulaval.ca/accueil.asp	La forêt Montmorency vous accueille en toute saison pour vos envies de plein air. En hiver, découvrez le ski-raquette ou les activités de ski de fond, raquette, patin, glissade... Et en été, venez observer la faune avec un guide, faire de la randonnée pédestre, de la pêche, du canot, du vélo de montagne...<br>	
15	8	en	2014-01-21 17:35:40.699046	2014-02-09 22:15:52.516583	Centre Nature St-Basile	1 Avenue Centre-Nature	\N	The Nature St-Basile center offers skiing, snowshoeing and hiking trails that crosses maples and mixed woods, and are along the Rivière Chaude, providing a varied and picturesque landscape. In winter, you can also enjoy the slides tube and ski slope, ice rink, and the "wear pants" (ice down) for childrens!<br>	
16	8	fr	2014-01-21 17:35:40.70122	2014-02-09 22:15:52.518748	Centre Nature St-Basile	1 Avenue Centre-Nature	http://www.lecentrenature.com/	Le centre Nature St-Basile vous propose des pistes de ski de fond, raquettes et randonnée pédestre qui traversent érablières et forêts mixtes et qui longent la rivière Chaude, vous offrant ainsi un paysage varié et pittoresque. En hiver, vous pourrez également profiter des glissades sur chambre à air et remonte-pente, de la patinoire, et le "use culotte" (descente glacée) pour les plus petits !<br>	
24	12	fr	2014-01-21 21:34:41.151784	2014-02-14 02:56:58.380824	Plaines d'Abraham	835 Avenue Wilfrid-Laurier	http://www.ccbn-nbc.gc.ca/	En plein cœur de Québec, venez profiter de l'hiver dans un lieu historique unique: les Plaines d'Abraham. Que ce soit pour faire du ski de fond, de la raquette,&nbsp; de la course à pied, vélo ou patin ou même vous promener, ce parc vous accueille et vous propose aussi des événements tout au long de l'année.<br>	Site web officiel
107	54	en	2014-02-14 20:15:06.341495	2014-03-03 16:32:09.29782	Parc linéaire de la rivière Saint-Charles	332 Rue Domagaya	\N	<span>The Linear Park of Saint-Charles River, Quebec, is a magnificent hiking trail of 32 km along the Saint-Charles River from its mouth at the Old Port, to its source, Lake St. Charles. Throughout the course, bridges and gateways allow you to move from one side to the other of the river. The park also offers other winter and summer activities, skiing, snowshoeing, skating, biking, canoeing, kayaking, fishing, guided hiking ...</span><br>	Official website
108	54	fr	2014-02-14 20:15:06.344455	2014-03-03 16:32:09.299696	Parc linéaire de la rivière Saint-Charles	332 Rue Domagaya	http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/parc_lineaire/index.aspx	Le Parc linéaire de la rivière Saint-Charles, à Québec, est un magnifique sentier pédestre long de 32 km qui longe la rivière Saint-Charles, de son embouchure au Vieux-Port, jusqu’à sa source, le lac Saint-Charles. Tout au long du parcours, des ponts et passerelles vous permettent de passer d'une rive à l'autre de la rivière. Le parc vous propose également d'autres activités d'hiver et d'été; ski de fond, raquettes, patin, vélo, canot-kayak, pêche, randonnée guidée...<br>	Site web officiel
14	7	fr	2014-01-21 17:13:15.876065	2014-02-09 22:33:08.900143	Base de plein air La Découverte	1560, Avenue de la Montagne Ouest	http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/raquettes_ski_fiche.aspx?entID=269	Dans la ville de Québec, la base de plein air La Découverte vous offre 55 km de pistes de ski de fond, des sentiers de raquette et de randonnée pédestre. En les empruntant, vous pourrez découvrir le mont Bélair à 485 m d'altitude ! En été, la base de plein air vous propose la baignade, les randonnées pédestres l'observation des oiseaux, les aires de jeux polyvalents...<br>	
10	5	fr	2014-01-21 16:49:18.606852	2014-02-09 22:43:49.928776	Centre plein air les Portes de l'Enfer	200, 5e Rang	http://www.natureportneuf.com	A moins d'une heure à l'est de Québec, au Centre de plein air les Portes de l'Enfer, vous pourrez profiter des pistes de ski de fond de plus de 30 km au total (18 km de linéaire) dans un décor sauvage. Ce centre, ouvert tous les jours, vous permet de profiter aussi des pistes de raquette (de 5 km) et des glissades.<br>	
6	3	fr	2014-01-21 16:07:15.657975	2014-02-09 22:57:15.620941	Camp Mercier	94, Route 175	http://www.sepaq.com/rf/lau/camp-mercier/	La réserve faunique des Laurentides, située entre les régions de Québec et du Saguenay-Lac-Saint-Jean, est un immense territoire sur lequel vous pourrez exercer vos activités de plein air favorites; la chasse, la pêche, l'observation de l'ours noir, le vélo de montagne, le kayak mais aussi le ski de fond, la raquette, la randonnée pédestre, la patinoire...<br>	
12	6	fr	2014-01-21 17:03:02.172874	2014-02-14 03:08:13.268719	Centre ski de fond Charlesbourg	375, Rue de l'Aventure	http://www.skidefondcharlesbourg.com/	Au centre de ski de fond de Charlesbourg, vous aurez le choix entre 15 pistes de ski de fond de longueurs et difficultés variées, d'une trentaine de kilomètres au total. En les empruntant, découvrez des forêts de connifères, longez la rivière des Sept Ponts, parcourez des érablières-hêtrières, profitez d'un point de vue magnifique... Découvrez également les pistes de raquette (15 km) et de randonnée hivernale (18 km) !<br>	Site web officiel
1	1	en	2013-12-03 04:44:50.818745	2014-02-14 03:10:57.417562	Mont-Saint-Anne	2000, boulevard du Beau Pré	http://www.mont-sainte-anne.com/	<div><div><div><div></div></div></div></div>   <div><div><span>Located 30 minutes from Quebec City, Mont Sainte-Anne offers activities such as alpine skiing, with slopes and lifts, cross-country skiing (200 km of trails in classic, 191 km for skating! ), snowshoeing (37 km of trail) and an ice rink. Various sporting events are also held throughout the year.<br></span></div></div><br>	Official website
91	46	en	2014-02-14 05:30:38.299466	2014-03-03 00:53:58.275962	La Promenade Samuel-De Champlain	2795 Boulevard Champlain	\N	<span>In Quebec City, and along the St. Lawrence River, Samuel de Champlain promenade is ideal for cyclists and walkers.</span><br>	Official website
92	46	fr	2014-02-14 05:30:38.310006	2014-03-03 00:53:58.277947	La Promenade Samuel-De Champlain	2795 Boulevard Champlain	http://www.ville.quebec.qc.ca/apropos/portrait/400e/legs/promenade.aspx	À Québec, et longeant le fleuve Saint Laurent, la promenade Samuel de Champlain est idéale pour les cyclistes et promeneurs.<br>	Site web officiel
8	4	fr	2014-01-21 16:33:38.812156	2014-02-14 02:31:40.766409	Centre plein air Dansereau	50, rue Dansereau	http://centredansereau.com/	Le Centre Dansereau vous fait profiter des pistes de ski de fond sur 30 km , raquette sur 5 km qui longent la rivière Jacques Cartier. En été, profitez de ces pistes pour faire du vélo de montagne et de la randonnée pédestre.<br>	Site web officiel
32	16	fr	2014-01-21 22:29:41.733327	2014-02-14 02:41:25.016555	Centre plein air les Sources Joyeuses	141 Rang Ste-Madeleine	http://www.lessourcesjoyeuses.com	Aménagé au coeur du cratère de Charlevoix, le Centre de plein air Les Sources Joyeuses vous propose les activités hivernales suivantes: ski de fond, raquette, glissade, patin et marche. Avec 53 km de sentiers de ski de fond, 17 km de sentiers de raquette et 5.5 km de sentiers de marche, il y en a pour tous les niveaux et tous les âges !<br>	Site web officiel
4	2	fr	2014-01-12 19:10:25.042429	2014-02-14 03:04:36.778542	Sentiers du Moulin	99 Chemin du Moulin	http://www.sentiersdumoulin.com	Les Sentiers du Moulin, ce sont 38 km de piste de ski de fond entretenus et presque 18 km de piste linéaire de raquette. Situé à une trentaine de minutes de la ville de Québec, ce site vous propose également des randonnées pédestres, du vélo de montagne et du vollay-ball en été.<br>	Site web officiel
11	6	en	2014-01-21 17:03:02.170663	2014-02-14 03:08:13.266721	Centre ski de fond Charlesbourg	375, Rue de l'Aventure	\N	In the cross country skiing center Charlesbourg, you have the choice between 15 ski trails different lengths and varying difficulty, some thirty kilometers in total. By riding them, discover all sorts of forests, follow the river Seven Bridges and enjoy a magnificent view... Discover the snowshoe trails (15 km) and winter hiking trails(18 km)!<br>	Official website
2	1	fr	2013-12-03 04:44:50.823032	2014-02-14 03:10:57.419289	Mont Sainte-Anne	2000, boulevard du Beau Pré	http://www.mont-sainte-anne.com/	<table>\r\n <tbody><tr>\r\n\r\n  <td>Situé à\r\n  30 minutes de la ville de Québec, le Mont Sainte-Anne vous propose des\r\n  activités telles que le ski alpin, avec des pistes et remontées mécaniques,\r\n  du ski de fond (200 km de sentiers en classique, 191 km pour le pas de patin ), de\r\n  la raquette (37 km de sentier) et une patinoire. Divers événements sportifs\r\n  sont également organisés tout au long de l'année.</td>\r\n\r\n </tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n\r\n<br>	Site web officiel
95	48	en	2014-02-14 05:44:44.887567	2014-03-03 00:56:25.988251	Laval University	2300, rue de la Terrasse 	\N	<div><div><div><div></div></div></div></div>   <div><div><span>PEPS on the campus of Laval University, offers indoor climbing. Whether you are a beginner or experienced, you will find the facilities adapted to your level and your desires (walls, boulders and caves) ...</span></div></div><br>	Official website
97	49	en	2014-02-14 05:49:19.79069	2014-03-03 00:58:36.599786	Canyon St. Anne	206 Québec route 138	\N	<span>Located half an hour from Quebec City, Canyon Sainte-Anne offers facilities such as suspension bridges, permitting walks out of the ordinary in the heart of nature, along the Sainte Anne river and passing over the abyss. Activities are also available on the site such as kid's games, zip lines and vias ferrata.</span><br>	Official website
99	50	en	2014-02-14 05:55:43.65103	2014-03-03 16:25:59.29077	Cap Tourmente	570, chemin du Cap-Tourmente	\N	<span>Cap Tourmente, part of the eight National Wildlife Canada, is an ideal place for observing wildlife, including the snow geese.</span><br>	Official website
101	51	en	2014-02-14 06:07:26.838833	2014-03-03 16:27:11.730656	Montmorency Falls	2490 Avenue Royale	\N	<div><div><div><div></div></div></div></div>   <div><div><span>The Parc de la Chute-Montmorency is located just minutes from Quebec City. Montmorency Falls rises to 83 m in an impressive landscape. Discover it on foot, by car or from the gourmet restaurant. Available in any season, the site is also illuminated at night.</span></div></div><br>	Official website
63	32	en	2014-01-27 21:30:27.994027	2014-03-02 20:27:32.03458	Le Massif de Charlevoix	1350, rue Principale	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Located an hour east of Quebec City and featuring ski slopes for all levels (including 55 km of slopes intermediate level), the Massif de Charlevoix will satisfy beginners and experts. Guests can also go snowshoeing, backcountry skiing, and sledding. For younger visitors, sone activities are proposed (ski school, mini patrol, treasure hunt ...). In addition, various events are held during the year.</span></div></div><br>	
64	32	fr	2014-01-27 21:30:27.998135	2014-03-02 20:27:32.060681	Le Massif de Charlevoix	1350, rue Principale	http://www.lemassif.com	Situé à une heure à l'est de la ville de Québec et disposant des pistes de ski pour tous niveaux (dont 55 km de piste de niveau intermédiaire), le Massif de Charlevoix saura combler débutants et experts. Vous pourrez également y faire de la raquette, du ski hors piste, et de la luge. Pour les plus petits, des activités sont proposées (école de glisse, mini patrouilleurs, chasse au trésor...). De plus, différents événements ont lieu au cours de l'année.<br>	
66	33	fr	2014-01-27 21:36:59.648688	2014-03-02 20:29:33.710123	Centre de ski Le Relais	1084, Boulevard du Lac	http://www.skirelais.com	Le centre de ski Le Relais met à votre disposition ses 29 pistes de ski, dont 25 sont éclairées en soirée, et son snowpark. Situé à 20 minutes du centre ville de Québec, le Relais propose des événements tout l'hiver, et notamment des compétitions freestyle au snowpark.<br>	
67	34	en	2014-01-27 21:44:16.130794	2014-03-02 20:33:47.582249	Ski Saint-Raymond	1226, rang Notre-Dame	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Ski Saint-Raymond, located 45 minutes north west of the city of Quebec, offers 8 tracks of all levels. Beginners will enjoy most of the tracks, conducive to learning, either with or without ski school (which offers courses for beginners or advanced). Most regulars will enjoy 2 tree skiing tracks, remained very wild. You can also enjoy the slides and different events that take place throughout the winter.</span></div></div><br>	
68	34	fr	2014-01-27 21:44:16.135878	2014-03-02 20:33:47.58687	Ski Saint-Raymond	1226, rang Notre-Dame	http://www.skisaintraymond.com	Ski Saint-Raymond, situé à 45 minutes au nord ouest de la ville de Québec, vous offre 8 pistes de tous les niveaux. Les débutants apprécieront la plupart des pistes, favorables à l'apprentissage des sports de glisse, que ce soit avec ou sans l'école de glisse (qui propose de cours pour débutants ou avancés). Les plus habitués pourront profiter des 2 sous-bois aménagés, restés très sauvages. Vous pouvez également profiter des glissades et des différents événement qui ont lieu au long de l'hiver.<br>	
70	35	fr	2014-02-03 16:45:05.163687	2014-03-02 20:37:14.056238	Secrets Nordiques	100 rue Beau-mont	http://www.lessecretsnordiques.com	Situé à la station de ski du Mont Sainte-Anne, à une demie heure de Québec, Secrets Nordiques vous propose de (re)découvrir le traîneau à chiens, le ski-Jöring (tracté par un chien, vous pouvez être en ski, en trottinette des neiges ou en snowscout) et la promenade en raquette.<br>	
72	36	fr	2014-02-03 16:49:10.10081	2014-03-02 20:38:35.860603	Aventures Inukshuk	131 Route De Duchesnay	http://www.aventureinukshuk.qc.ca	Aventures Inukshuk vous propose des activités de traîneau à chiens, de motoneige mais aussi un grand labyrinthe pour toute la famille et une activité d'observation de la faune et plus particulièrement de l'ours noir.<br>	
73	37	en	2014-02-03 16:52:37.943373	2014-03-02 20:40:54.942613	Aventures Nord-Bec	4, Chemin des Anémones	\N	<span>Aventures Nord-Bec, they are activities like&nbsp; sledding, walks with guides to observe the flora and fauna, snowshoeing ... Located half an hour from Quebec City, the site offers different packages and even accommodation options that will satisfy your cravings.</span><br>	
74	37	fr	2014-02-03 16:52:37.945403	2014-03-02 20:40:54.945226	Aventures Nord-Bec	4, Chemin des Anémones	http://www.traineaux-chiens.com	Aventures Nord-Bec, ce sont des activités de traîneau à chiens, des balades avec guides pour observer la faune et la flore, des promenades en raquettes… Situé à une demie heure de la ville de Québec, le site propose différents forfaits, et même des possibilités d'hébergement, qui sauront satisfaire vos envies.<br>	
76	38	fr	2014-02-03 16:55:34.898523	2014-03-03 00:37:34.133733	Chenil La Poursuite	 1925A, Chemin Lambert	http://www.chenillapoursuite.com	Situé à Lévis, à seulement 15 minutes du centre-ville de Québec, le Chenil La Poursuite est spécialisé dans le traîneau à chiens. Venez (re)découvrir cette activité au travers de différentes pistes entretenues et boisées, et profitez aussi du lieu pour vos randonnée en raquettes, faire des glissades sur chambre à air... Le Chenil propose différents forfaits et différents type d'hébergement si vous souhaitez vous loger...<br>	
77	39	en	2014-02-03 16:59:19.098603	2014-03-03 00:40:59.970852	Pourvoirie du Lac Beauport	33 Chemin de la Coulée	\N	<div><div><div><div></div></div></div></div>   <div><div><span>Pourvoirie Lac Beauport offers activities for every season. In winter, enjoy activities dogsledding, snowmobile rental, snowshoeing, sleigh rides, fishing or experience a night in a prospector tent or an igloo. In summer, come and go horse riding of fishing. <br></span></div></div><br>	
78	39	fr	2014-02-03 16:59:19.100767	2014-03-03 00:40:59.974556	Pourvoirie du Lac Beauport	33 Chemin de la Coulée	http://www.pourvoiriedulacbeauport.com/	La Pourvoirie du Lac Beauport vous propose des activités en toute saison. En hiver, profitez des activités de traîneau à chiens, de location de motoneige, de raquette, de carriole, de pêche ou faites l'expérience d'une nuit dans une tente de prospecteur ou un igloo. En été, venez y faire de l'équitation, de la pêche ou des randonnées de VTT.<br>	
80	40	fr	2014-02-03 17:03:06.118179	2014-03-03 00:42:43.307283	Expédition Mi-loup	186 Côte Lafleur	http://www.leptitbonheur.qc.ca/	Située à 20 minutes du centre ville de Québec, l'Auberge Le P'tit Bonheur vous offre différentes activités pour profiter de l'hiver. Traîneau à chien, motoneige, pêche blanche et raquette vous sont proposés dans un cadre boisé. Le site vous propose différents forfaits et différents types d'hébergement (chambre privée, tipi, igloo...). <br><br>	
82	41	fr	2014-02-03 17:07:00.603162	2014-03-03 00:44:42.638753	Les Randonnées Boréales	17 rang St Thomas	http://www.quebecweb.com/randonnees/	Les Randonnées Boréales, ce sont des excursions en traîneau à chiens et des randonnées pédestres guidées au cœur de la nature sauvage de Charlevoix. Situé à 2 heures à l'est de la ville de Québec, le site propose également des services d'hébergement en gîte et de restauration.<br>	
84	42	fr	2014-02-03 17:09:42.672236	2014-03-03 00:46:50.116232	Le Chenil du Sportif	65 Rang Sainte Marie	http://www.quebecweb.com/chenildusportif/	Le Chenil du Sportif, ce sont des activités de traîneau à chiens avec guide au cœur des forêts de Charlevoix. Le site, situé à environ 1h30 de Québec, vous propose des excursions qui vont de la randonnée à la demi-journée à l'expédition de plusieurs jours.<br>	
87	44	en	2014-02-10 01:51:52.210511	2014-03-03 00:51:35.898858	Roc Gyms	2350 Avenue du Colisée	\N	<span>Roc Gyms, located in Quebec, is the ideal place for lovers of climbing (indoor and outdoor). The site also propposes other activities such as via ferrata and zip line, ice climbing and mountaineering ...</span><br>	
86	43	fr	2014-02-03 17:16:59.522384	2014-03-03 00:48:32.048989	Descente Malbaie	316 Rue Principale	http://descentemalbaie.com	A la Descente Malbaie,&nbsp; située à 2h de la ville de Québec,vous profiterez des traîneaux à chiens pour des randonnées à la demi-journée, à la journée ou bien même des excursions de plusieurs jours. Le site vous propose différents forfaits pour toutes vos envies.<br>	
89	45	en	2014-02-12 19:31:15.160486	2014-03-03 00:52:44.860301	Station touristique Stoneham	600 Chemin du Hibou	\N	<span>The resort Stoneham, located 25 minutes from Quebec City, is ideal for lovers of winter sports, skiing, snowboarding ... A ski school is also available, as well as different packages and hosting services . Other activities are also available, geocaching, snowshoeing, ice skating ...</span><br>	Official website
90	45	fr	2014-02-12 19:31:15.185325	2014-03-03 00:52:44.861854	Station touristique Stoneham	600 Chemin du Hibou	http://www.ski-stoneham.com/	La station touristique Stoneham, située à 25 minute de la ville de Québec, est idéale pour les amateurs de sports de glisse; ski, planche à neige… Une école de glisse est également à votre disposition, ainsi que différents forfaits et services d'hébergement. D'autres activités sont également proposées; géocaching, raquette, patin à glace…<br>	Site web officiel
93	47	en	2014-02-14 05:36:05.434669	2014-03-03 00:55:03.705699	Délire, indoor climbing centre	2485 boul. Sainte-Anne	\N	<div><div><div><div></div></div></div></div>   <div><div><span>The Centre offers this climbing the highest climbing wall in Quebec. Introductory courses, a climbing school, and activities for children are offered (on interior walls and blocks), as well as introductions to ice climbing.</span></div></div><br>	Official website
94	47	fr	2014-02-14 05:36:05.437229	2014-03-03 00:55:03.708192	Centre d'escalade Délire	2485 boul. Sainte-Anne	http://www.delirescalade.com/	Le Centre d'escalade Délire vous offre le plus haut mur d'escalade à Québec. Des cours d'initiation, une école d'escalade, et des activités pour les enfants sont proposées (sur murs et blocs en intérieur), de même que des initiations à l'escalade de glace.<br><br>	Site web officiel
98	49	fr	2014-02-14 05:49:19.792597	2014-03-03 00:58:36.601633	Canyon Sainte-Anne	206 Québec route 138	http://www.canyonste-anne.qc.ca/	Situé à une demie heure de la ville de Québec, le Canyon Sainte-Anne met à votre disposition des installations telles que des ponts suspendus, passerelles...vous permettant ainsi des promenades hors du commun au cœur de la nature, longeant la rivière Sainte-Anne et passant au-dessus du gouffre. Des activités sont également proposées sur place, telles que des jeux, des vias ferrata et tyroliennes.<br>	Site web officiel
102	51	fr	2014-02-14 06:07:26.845688	2014-03-03 16:27:11.732152	Chutes Montmorency	2490 Avenue Royale	http://www.sepaq.com/ct/pcm/	Le Parc de la Chute-Montmorency est situé à quelques minutes de la ville de Québec. La chute Montmorency culmine à 83 m dans un paysage impressionnant. On la découvre à pied, en téléphérique ou depuis le restaurant gastronomique. Accessible en toute saison, le site est également illuminé la nuit.<br>	Site web officiel
88	44	fr	2014-02-10 01:51:52.213309	2014-03-03 00:51:35.901273	Roc Gyms	2350 Avenue du Colisée	http://aventurex.net/	Roc Gyms, situé à Québec, est le lieu idéal pour tous les amateurs d'escalade (en intérieur et en extérieur). Le site vous proppose également d'autres activités telles que la via ferrata et la tyrolienne, l'escalade de glace et l'alpinisme…<br>	Roc Gyms site web
96	48	fr	2014-02-14 05:44:44.89491	2014-03-03 00:56:25.990102	Université Laval	2300, rue de la Terrasse 	http://www.peps.ulaval.ca/programmation/activites-libres/escalade/hiver-2014/	Le PEPS, sur le campus de l'université Laval, vous propose de l'escalade, en cours ou en pratique libre, en intérieur. Que vous soyez débutant ou expérimentés, vous trouverez les installations adaptées à votre niveau et à vos envies (murs, blocs et cavernes)...<br>	Site web officiel
100	50	fr	2014-02-14 05:55:43.652468	2014-03-03 16:25:59.293749	Cap Tourmente	570, chemin du Cap-Tourmente	https://www.ec.gc.ca/ap-pa/default.asp?lang=Fr&n=0533BC0A-1	Le Cap Tourmente, faisant partie des huit réserves nationales de faunes du Canada, est un endroit idéal pour l'observation de la faune, et notamment des oies des neiges. ACTIVITES ?<br>	Site web officiel
103	52	en	2014-02-14 19:58:24.210868	2014-03-03 16:29:00.456897	Bois-de-Coulonge Park	1215, Grande Allée Ouest	\N	<span>In Quebec City, the Parc du Bois-de-Coulonge is ideal to observe a typical urban woodlands wildlife. It is also a bird sanctuary which offers walkers a view of the river, an arboretum, a sugar shack, a playground for children ...</span><br>	Official website
104	52	fr	2014-02-14 19:58:24.21393	2014-03-03 16:29:00.459757	Parc du Bois-de-Coulonge	1215, Grande Allée Ouest	http://www.capitale.gouv.qc.ca/realisations/parcs-espaces-verts/parc-du-bois-de-coulonge.html	Dans la ville de Québec, le parc du Bois-de-Coulonge est idéal pour observer une faune typique des boisés urbains. C'est également un site ornithologique qui propose aux promeneurs une vue sur le fleuve, un arboretum, une cabane à sucre, une aire de jeux pour enfants...<br>	Site web officiel
\.


--
-- Name: location_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('location_translations_id_seq', 110, true);


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY locations (id, name, address, phone, charge_free_phone, website, created_at, updated_at, administrative_region_id, online, pub_id, image, link, gps_longitude, gps_latitude, image_file_name, city, postal_code, description, link_text, image_caption) FROM stdin;
18	Base de plein air de Sainte-Foy	3180, rue Laberge	418.641.6282		https://www.ville.quebec.qc.ca	2014-01-21 23:25:48.790184	2014-02-09 21:51:40.73545	1	t	\N	\N	https://www.ville.quebec.qc.ca/citoyens/loisirs_sports/equipements_loisirs/base_plein_air_sainte_foy/	-71.33295	46.787722	1555492_10152238194274750_1987564870_n.jpg	Québec	G1X 4B3	La base de plein air de Sainte-Foy vous propose de nombreuses façons de profiter de l'hiver; marche, glissade, raquettes, traîneau,&nbsp; trotinette des neiges et ski de fond. Ouverte tous les jours, de 9 h à 16 h, jusqu'à la mi-mars si le temps le permet.<br>	\N	\N
11	Gîte de l'Écureuil	1352, rang du Gîte	418.339.3102		http://www.natureportneuf.com	2014-01-21 20:54:26.040135	2014-02-09 22:07:12.40278	1	t	\N	\N	http://www.natureportneuf.com/down/623.pdf	-72.232341	46.698709	1555492_10152238194274750_1987564870_n.jpg	Saint-Casimir	G0A 3L0	Situé à environ une heure de la ville de Québec, ce site vous accueille pour réaliser vos activités de plein air en hiver et en été. Vous avez le choix : ski de fond, raquettes, chiens de traîneau, glissades… mais aussi escalade, canot, randonnée, planche à pagaie, radeau pneumatique, golf, ou même visite de la grotte Le Trou du Diable.<br>	\N	\N
2	Sentiers du Moulin	99 Chemin du Moulin	418.849.9652		http://www.sentiersdumoulin.com	2014-01-12 19:10:25.013233	2014-02-14 03:04:36.770691	1	t	\N	\N	http://pages.ccapcable.com/sentiers/04_tarifs.html	-71.269587	46.983414	1608822_10152238121549750_386060513_n.jpg	Lac-Beauport, Qc	G3B 0E1	Les Sentiers du Moulin, ce sont 38 km de piste de ski de fond entretenus et presque 18 km de piste linéaire de raquette. Situé à une trentaine de minutes de la ville de Québec, ce site vous propose également des randonnées pédestres, du vélo de montagne et du vollay-ball en été.<br>	Site web officiel	Maxime Paré
6	Centre ski de fond Charlesbourg	375, Rue de l'Aventure	418.849.9054		http://www.skidefondcharlesbourg.com/	2014-01-21 17:03:02.1654	2014-02-14 03:08:13.263499	1	t	\N	\N	http://www.skidefondcharlesbourg.com/tarifs.htm	-71.300492	46.905936	Ski-de-fond-Charlesbourg-OFFICIEL.jpg	Québec	G2M 1N3	Au centre de ski de fond de Charlesbourg, vous aurez le choix entre 15 pistes de ski de fond de longueurs et difficultés variées, d'une trentaine de kilomètres au total. En les empruntant, découvrez des forêts de connifères, longez la rivière des Sept Ponts, parcourez des érablières-hêtrières, profitez d'un point de vue magnifique... Découvrez également les pistes de raquette (15 km) et de randonnée hivernale (18 km) !<br>	Site web officiel	Centre ski de fond Charlesbourg
16	Centre plein air les Sources Joyeuses	141 Rang Ste-Madeleine	418.665.4858		http://www.lessourcesjoyeuses.com	2014-01-21 22:29:41.725907	2014-02-14 02:41:25.005935	1	t	\N	\N	http://www.lessourcesjoyeuses.com/tarifs.html	-70.206206	47.628821	Centre-plein-air-Sources-joyeuses-OFFICIEL	Charlevoix	G5A 2T2	Aménagé au coeur du cratère de Charlevoix, le Centre de plein air Les Sources Joyeuses vous propose les activités hivernales suivantes: ski de fond, raquette, glissade, patin et marche. Avec 53 km de sentiers de ski de fond, 17 km de sentiers de raquette et 5.5 km de sentiers de marche, il y en a pour tous les niveaux et tous les âges !<br>	Site web officiel	Centre plein air les Sources Joyeuses
13	Réserve faunique de Portneuf	229, rue du Lac Vert	418.323.2021		http://www.sepaq.com/rf/por/	2014-01-21 21:42:56.567863	2014-02-09 22:03:27.467504	1	t	\N	\N	http://www.sepaq.com/rf/por/information.dot	-72.168274	47.0072	btn_delete2.png	Rivière-à-Pierre	G0A 3A0	Située à un peu moins d'une heure au nord-ouest de Québec, la réserve faunique de Portneuf est idéale en toute saison pour les amateurs de plein air. Que ce soit pour le ski de fond, pour la glissade, la raquette, la pêche blanche, la randonnée pédestre, le vélo, l'observation de la faune, la cueuillette en forêt, le canot-camping... ou simplement visiter et pique-niquer, venez réaliser vos activités dans ce cadre accessible et unique.<br>	\N	\N
9	Forêt Montmorency	Kilomètre 103 de la route 175	418.656.2034		http://www.fm.ulaval.ca/accueil.asp	2014-01-21 17:46:45.239319	2014-02-09 22:12:55.055995	1	t	\N	\N	http://www.fm.ulaval.ca/tarifs/tarifs.asp	-71.147891	47.320253	1555492_10152238194274750_1987564870_n.jpg	Saint-Ferréol-les-Neiges	G0A 3R0	La forêt Montmorency vous accueille en toute saison pour vos envies de plein air. En hiver, découvrez le ski-raquette ou les activités de ski de fond, raquette, patin, glissade... Et en été, venez observer la faune avec un guide, faire de la randonnée pédestre, de la pêche, du canot, du vélo de montagne...<br>	\N	\N
22	 Centre de ski de fond de Cap-Rouge	4600, rue Saint-Félix, secteur du Golf	418.641.6282		http://www.ville.quebec.qc.ca	2014-01-22 02:06:13.686698	2014-02-09 21:34:08.871746	1	t	\N	\N	http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/raquettes_ski_fiche.aspx?entID=271	-71.362322	46.738691	1555492_10152238194274750_1987564870_n.jpg	Québec	G1Y 3B4	Le Centre de ski de fond de Cap-Rouge, situé à Sainte Foy vous propose douze kilomètres de pistes (non surveillées). Le centre est accessible tous les jours de 9 h à 16 h dès que le couvert de neige est suffisant.<br>	\N	\N
25	Parc Chauveau	3175, avenue Chauveau	418.641.6263		http://www.ville.quebec.qc.ca	2014-01-22 03:28:15.484351	2014-02-06 16:24:15.566539	1	t	\N	\N	http://www.ville.quebec.qc.ca/docs/publications/419_publication_2_749.pdf	-71.338436	46.837674	1555492_10152238194274750_1987564870_n.jpg	Québec	G2C 1A3	Aux abords de la rivière Saint Charles, le Parc Chauveau vous accueille tout au lond de l'année pour vos randonnées pédestres, vos pique-niques, et en fonction des saisons pour le soccer, le géocaching, la pêche, le ski de fond et la raquette…<br>	\N	\N
24	Parc de la Rivière 	1307, Avenue des Loisirs Est	418.872.9811		\N	2014-01-22 03:19:38.666363	2014-02-09 21:27:29.771505	1	t	\N	\N	http://lancienne-lorette.org/fr/citoyen/service_des_loisirs/infrastructures_de_loisirs/parc_de_la_riviere/parcours_de_randonnee.php	-71.361567	46.806923	1555492_10152238194274750_1987564870_n.jpg	L'Ancienne-Lorette	G2E 6A9	Situé dans l'Ancienne Lorette, le Parc de la Rivière vous propose plus de 7 kilomètres de sentiers de randonnée pédestre, de ski et de vélo. Les sentiers côtoient la rivière Lorette dans la plus grande forêt urbaine de la région.<br>	\N	\N
20	Centre plein air Castor	C.P. 1000, Succ. Forces, Ed. 610	418.844.3272		http://www.centrecastor.com	2014-01-22 01:48:57.855388	2014-02-09 21:38:52.221955	1	t	\N	\N	http://www.centrecastor.com/index.php/tarifications-du-ski	-71.464497	46.911608	1555492_10152238194274750_1987564870_n.jpg	Saint-Gabriel-de-Valcartier	G0A 4Z0	Le Centre plein air Castor, situé à un quart d'heure de la ville de Québec vous propose des activités variées. En hiver, vous pouvez ainsi profiter des 80 km de sentiers de ski de fond, des sentiers de ski de randonnée, de raquette (11km de sentier pour débutants et expérimentés), glissade, et patins. En été le centre vous propose des activités telles que le golf, le vélo ainsi que la chasse et la pêche (22 lacs et 2 rivières).<br>	\N	\N
27	Les sentiers l'Amical	306, chemin Principal est	418.633.1239		http://sainthilarion.ca	2014-01-22 03:35:59.905932	2014-01-22 03:35:59.905932	1	t	\N	\N	http://sainthilarion.ca/activites_saisons.html	-70.396069	47.574634	1555492_10152238194274750_1987564870_n.jpg	Saint-Hilarion	G0A 3V0	\N	\N	\N
28	Centre de ski de fond Robert Giguère	55, rue des Érables	418.827.8902		http://www.villedebeaupre.com	2014-01-22 04:09:07.125971	2014-02-14 02:47:32.075783	1	t	\N	\N	http://www.villedebeaupre.com/images/gestion/186402961731991.pdf	-70.88478	47.054627	Centre-robert-giguere--OFFICIEL.jpg	Beaupré	G0A 1E0	À 25 minutes de Québec, le centre de ski Robert Giguère vous propose des sentiers de ski de fond et de raquette de niveaux facile et intermédiaire. Vous pourrez longer la rivière Sainte-Anne et admirer le Mont Sainte-Anne avec 8 km de piste de ski de fond et 3 km de piste de raquettes. Ce site, idéal pour la famille, est gratuit pour les enfants de moins de 14 ans.<br>	Site web officiel	Centre de ski de fond Robert Giguère
29	Cité Joie	28 chemin des Cascades	418.849.7183		http://www.citejoie.com	2014-01-22 04:19:23.751973	2014-01-22 04:19:23.751973	1	t	\N	\N	http://www.citejoie.com/services/sentiers_de_raquette	-71.289241	46.990982	1555492_10152238194274750_1987564870_n.jpg	Lac-Beauport	G3B 0C4	\N	\N	\N
31	Vallée Bras-du-Nord	100 Avenue Saint Jacques	418.337.3635		http://www.valleebrasdunord.com/	2014-01-22 04:29:41.840921	2014-02-06 15:46:59.504207	1	t	\N	\N	http://www.valleebrasdunord.com/tarrification.html#acces	-71.845368	46.897137	1555492_10152238194274750_1987564870_n.jpg	Saint-Raymond	G3L 3Y1	Située sur la Rive-Nord du fleuve Saint-Laurent dans la région de Portneuf, la Vallée Bras-du-Nord est idéale pour tous les amateurs de randonnée, vélo de montagne, canots et kayak, raquette de montagne, canyoning et randonnée équestre. Offrant un paysage magnifique, de montagnes, falaises, une rivière et une chute, ce lieu unique propose également différents types d'hébergements (campings, refuges, village de yourtes, chalets...)<br>	\N	\N
32	Le Massif de Charlevoix	1350, rue Principale	418.632.5876 	877.536.2774	http://www.lemassif.com	2014-01-27 21:30:27.987031	2014-03-02 20:27:32.026076	1	t	5	\N	http://montagne.lemassif.com/	-70.569409	47.285328	090331-Helico110.jpg	Petite-Rivière-Saint-François, Québec	G0A 2L0	Situé à une heure à l'est de la ville de Québec et disposant des pistes de ski pour tous niveaux (dont 55 km de piste de niveau intermédiaire), le Massif de Charlevoix saura combler débutants et experts. Vous pourrez également y faire de la raquette, du ski hors piste, et de la luge. Pour les plus petits, des activités sont proposées (école de glisse, mini patrouilleurs, chasse au trésor...). De plus, différents événements ont lieu au cours de l'année.<br>	\N	
39	Pourvoirie du Lac Beauport	33 Chemin de la Coulée	418.849.4252		http://www.pourvoiriedulacbeauport.com/	2014-02-03 16:59:19.093959	2014-03-03 00:40:59.968085	1	t	\N	\N	http://www.pourvoiriedulacbeauport.com/traineau_chiens.html	-71.268432	46.947605	1555492_10152238194274750_1987564870_n.jpg	Lac-Beauport, Québec	G3B 1G6 	La Pourvoirie du Lac Beauport vous propose des activités en toute saison. En hiver, profitez des activités de traîneau à chiens, de location de motoneige, de raquette, de carriole, de pêche ou faites l'expérience d'une nuit dans une tente de prospecteur ou un igloo. En été, venez y faire de l'équitation, de la pêche ou des randonnées de VTT.<br>	\N	
41	Les Randonnées Boréales	17 rang St Thomas	418.439.2110		http://www.quebecweb.com/randonnees/	2014-02-03 17:07:00.596646	2014-03-03 00:44:42.629552	1	t	\N	\N	http://www.quebecweb.com/randonnees/forfaitf.htm	-70.380858	47.694222	1555492_10152238194274750_1987564870_n.jpg	 Notre-Dame-des-Monts, Québec	G0T 1L0	Les Randonnées Boréales, ce sont des excursions en traîneau à chiens et des randonnées pédestres guidées au cœur de la nature sauvage de Charlevoix. Situé à 2 heures à l'est de la ville de Québec, le site propose également des services d'hébergement en gîte et de restauration.<br>	\N	
1	Mont-Saint-Anne	2000, boulevard du Beau Pré	888.827.4579		http://www.mont-sainte-anne.com/	2013-12-03 04:44:50.811657	2014-02-14 03:10:57.414857	1	t	\N	\N	http://www.mont-sainte-anne.com/tarifshoraires/	-70.9031868	47.0752076	ANDRE-OLIVIER-HIVER-MSA.jpg	Beaupré	G0A 1E0	<table>\r\n <tbody><tr>\r\n\r\n  <td>Situé à\r\n  30 minutes de la ville de Québec, le Mont Sainte-Anne vous propose des\r\n  activités telles que le ski alpin, avec des pistes et remontées mécaniques,\r\n  du ski de fond (200 km de sentiers en classique, 191 km pour le pas de patin ), de\r\n  la raquette (37 km de sentier) et une patinoire. Divers événements sportifs\r\n  sont également organisés tout au long de l'année.</td>\r\n\r\n </tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n\r\n<br>	Site web officiel	André Olivier
33	Centre de ski Le Relais	1084, Boulevard du Lac	418.849.1851	1.866.373.5247	http://www.skirelais.com	2014-01-27 21:36:59.641872	2014-03-02 20:29:33.700804	1	t	\N	\N	http://www.skirelais.com/le-relais-ski-snow-section.php?id=77	-71.299538	46.942012	2014-01-15_19.32.08.jpg	Lac-Beauport, Qc	G3B 0X5	Le centre de ski Le Relais met à votre disposition ses 29 pistes de ski, dont 25 sont éclairées en soirée, et son snowpark. Situé à 20 minutes du centre ville de Québec, le Relais propose des événements tout l'hiver, et notamment des compétitions freestyle au snowpark.<br>	\N	
34	Ski Saint-Raymond	1226, rang Notre-Dame	418.337.2866		http://www.skisaintraymond.com	2014-01-27 21:44:16.007251	2014-03-02 20:33:47.578227	1	t	\N	\N	http://www.skisaintraymond.com/ski.asp?no=24109	-71.813873	46.912506	1555492_10152238194274750_1987564870_n.jpg	Saint-Raymond, Québec	G3L 1N4	Ski Saint-Raymond, situé à 45 minutes au nord ouest de la ville de Québec, vous offre 8 pistes de tous les niveaux. Les débutants apprécieront la plupart des pistes, favorables à l'apprentissage des sports de glisse, que ce soit avec ou sans l'école de glisse (qui propose de cours pour débutants ou avancés). Les plus habitués pourront profiter des 2 sous-bois aménagés, restés très sauvages. Vous pouvez également profiter des glissades et des différents événement qui ont lieu au long de l'hiver.<br>	\N	
36	Aventures Inukshuk	131 Route De Duchesnay	418.875.0770		http://www.aventureinukshuk.qc.ca	2014-02-03 16:49:10.093265	2014-03-02 20:38:35.853142	1	t	\N	\N	http://www.aventureinukshuk.qc.ca/traineau-a-chiens/la-ptite-vite	-71.642326	46.867483	1555492_10152238194274750_1987564870_n.jpg	Ste-Catherine-de-la-Jacques-Cartier, Québec	G3N 0J3	Aventures Inukshuk vous propose des activités de traîneau à chiens, de motoneige mais aussi un grand labyrinthe pour toute la famille et une activité d'observation de la faune et plus particulièrement de l'ours noir.<br>	\N	
42	Le Chenil du Sportif	65 Rang Sainte Marie	418.635.2592		http://www.quebecweb.com/chenildusportif/	2014-02-03 17:09:42.665023	2014-03-03 00:46:50.109488	1	t	\N	\N		-70.405418	47.516183	1555492_10152238194274750_1987564870_n.jpg	Les Éboulements, Québec	G0A 2M0	Le Chenil du Sportif, ce sont des activités de traîneau à chiens avec guide au cœur des forêts de Charlevoix. Le site, situé à environ 1h30 de Québec, vous propose des excursions qui vont de la randonnée à la demi-journée à l'expédition de plusieurs jours.<br>	\N	
23	Centre de ski de fond St-Augustin	237, Chemin du Lac	418.878.6344		http://www.ville.st-augustin.qc.ca	2014-01-22 03:07:27.249505	2014-02-09 21:30:23.162245	1	t	\N	\N	http://www.ville.st-augustin.qc.ca/elus-administration/actualite-municipale/2013/ski_de_fond	-71.412953	46.738829	1555492_10152238194274750_1987564870_n.jpg	Saint-Augustin-de-Desmaures	G3A 1W7	Le Centre de ski de fond de Saint-Augustin-de-Desmaures, situé à un quart d'heure de la ville de Québec, offre 5,5 kilomètres de pistes de niveau familial. Vous pouvez également avoir accès aux sentiers de randonnée pédestre.<br>	\N	\N
21	Domaine de Maizerets	2000 Boulevard Montmorency	418.641.6335		http://www.domainemaizerets.com/	2014-01-22 01:56:57.283221	2014-02-09 21:36:19.098856	1	t	\N	\N	http://www.domainemaizerets.com/services	-71.215911	46.836426	1555492_10152238194274750_1987564870_n.jpg	Québec	G1J 5E7	Situé au cœur de Limoilou, le Domaine de Maizerets se compose de trois secteurs; le cœur historique, le boisé et le secteur de l'arboretum. Vous y trouverez de nombreux aménagements et activités: des sentiers de ski de fond, de raquettes et de marche, une patinoire, des aires de pique-nique...<br>	\N	\N
19	Centre plein air de Beauport	95, rue de la Sérénité	418.641.6045	877-641-6113	http://www.centrepleinairbeauport.ca	2014-01-22 00:02:33.054516	2014-02-09 21:45:28.457642	1	t	\N	\N	http://www.centrepleinairbeauport.ca/hiver.htm	-71.178002	46.897006	1555492_10152238194274750_1987564870_n.jpg	Beauport	G1C 8G7	Le Centre plein air de Beauport saura vous séduire en toutes saisons. En hiver, les amateurs de ski de fond, de raquettes, de patinage et de marche seront comblés avec 20 km de sentiers de ski de fond, dont 1.3 km sont éclairés jusqu'à 21h, 3 km de pistes de raquette, 600m de sentier de patins éclairé jusqu'à 21h, et 1km de sentier de marche silllonnant à travers les arbres. En été, le camping est ouvert et vous propose des activités telles que le volleyball, une piscine surveillée, des aires de jeux pour enfants, des pistes de randonnées pédestre et de vélo de montagne...<br>	\N	\N
17	Mont Grand-Fonds	1000, chemin des Loisirs	877.665.0095		http://www.montgrandfonds.com	2014-01-21 23:06:08.577206	2014-02-09 21:53:36.869511	1	t	\N	\N	http://www.montgrandfonds.com/tarification_ski_de_fond.aspx	-70.111013	47.762212	1555492_10152238194274750_1987564870_n.jpg	La Malbaie	G5A 1Y8	Au Mont Grand-Fonds La Malbaie, vous pourrez profiter de pistes de ski alpin, de pistes de ski de fond (140 km et 44 km de pas de patin), de glissade et de sentiers de raquette. De plus, le site propose de nombreux événements et spectacles tout au long de l'années (courses, concours de sculpture sur glace...)<br>	\N	\N
15	Station touristique Duchesnay	140, montée de l’Auberge	418.875.2122	1.877.511.5885	http://www.sepaq.com/ct/duc/	2014-01-21 22:24:44.225337	2014-02-09 21:59:39.624533	1	t	\N	\N	http://www.sepaq.com/ct/duc/tarifs.dot	-71.611642	46.86265	1555492_10152238194274750_1987564870_n.jpg	Sainte-Catherine-de-la-Jacques-Cartier 	G3N 2Y6 	Situé à 30 minutes de la ville de Québec et au bord du lac Saint-Joseph, la station touristique Duchesnay propose une myriade d'activités en toute saison. Vous pourrez au choix, et en fonction de la saison, faire du patinage, du ski hok, de la pêche blanche, du traîneau à chiens, de la randonnée pédestre, du vélo ou encore du surf debout à la pagaie...<br>	\N	\N
14	Sentiers des Caps de Charlevoix	2, rue Leclerc 	418.823.1117	1.866.823.1117	http://www.sentierdescaps.com/	2014-01-21 22:16:52.589765	2014-02-09 22:01:10.801877	1	t	\N	\N	http://www.sentierdescaps.com/ski-de-fond-charlevoix/	-70.568109	47.307743	1555492_10152238194274750_1987564870_n.jpg	Saint-Tite-des-Caps	G0A4J0	Avec 27 km de sentiers linéaires, et situé au sommet du massif de Charlevoix, le Sentier des Caps de Charlevoix est idéal pour tous les amateurs de ski de fond et de raquette. Certains sentiers surplombe le fleuve et vous permettront de profiter d'une vue imparable et grâce à l'altitude, les sentiers sont parmi les premiers à ouvrir et les derniers à fermer à la fin de saison.<br>	\N	\N
10	Centre Ski-Neuf	451 Boulevard Gauthier	418.286.6966		http://www.villedeportneuf.com	2014-01-21 17:51:23.277984	2014-02-09 22:10:16.566652	1	t	\N	\N	http://www.villedeportneuf.com/portneuf.asp?no=94	-71.889066	46.712848	1555492_10152238194274750_1987564870_n.jpg	Notre-Dame-de-Portneuf	G0A 2Y0	Le centre Ski-Neuf dans la ville de Portneuf vous accueille pour vos activités de ski de fond (24 km de sentiers), raquette, marche et patin à glace. De plus, ce site propose de nombreux événements tout au long de l'année.<br>	\N	\N
8	Centre Nature St-Basile	1 Avenue Centre-Nature	418.329.3177		http://www.lecentrenature.com/	2014-01-21 17:35:40.694704	2014-02-09 22:15:52.510329	1	t	\N	\N	http://www.lecentrenature.com/tarifs.html	-71.826525	46.757411	1555492_10152238194274750_1987564870_n.jpg	Saint-Basile-de-Portneuf	G0A 3G0	Le centre Nature St-Basile vous propose des pistes de ski de fond, raquettes et randonnée pédestre qui traversent érablières et forêts mixtes et qui longent la rivière Chaude, vous offrant ainsi un paysage varié et pittoresque. En hiver, vous pourrez également profiter des glissades sur chambre à air et remonte-pente, de la patinoire, et le "use culotte" (descente glacée) pour les plus petits !<br>	\N	\N
7	Base de plein air La Découverte	1560, Avenue de la Montagne Ouest	418.641.6473		http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/raquettes_ski_fiche.aspx?entID=269	2014-01-21 17:13:15.870014	2014-02-09 22:33:08.894259	1	t	\N	\N	http://www.ville.quebec.qc.ca/docs/publications/421_publication_6_751.pdf	-71.454161	46.829	1555492_10152238194274750_1987564870_n.jpg	Québec	G3K 2K8	Dans la ville de Québec, la base de plein air La Découverte vous offre 55 km de pistes de ski de fond, des sentiers de raquette et de randonnée pédestre. En les empruntant, vous pourrez découvrir le mont Bélair à 485 m d'altitude ! En été, la base de plein air vous propose la baignade, les randonnées pédestres l'observation des oiseaux, les aires de jeux polyvalents...<br>	\N	\N
5	Centre plein air les Portes de l'Enfer	200, 5e Rang	418-285-9349		http://www.natureportneuf.com	2014-01-21 16:49:18.595545	2014-02-09 22:43:49.922503	1	t	3	\N	http://www.natureportneuf.com/default.asp?no=773	-72.07827	46.71121	1555492_10152238194274750_1987564870_n.jpg	Saint-Alban	G0A 3B0	A moins d'une heure à l'est de Québec, au Centre de plein air les Portes de l'Enfer, vous pourrez profiter des pistes de ski de fond de plus de 30 km au total (18 km de linéaire) dans un décor sauvage. Ce centre, ouvert tous les jours, vous permet de profiter aussi des pistes de raquette (de 5 km) et des glissades.<br>	\N	\N
3	Camp Mercier	94, Route 175	418.848.2422	800.665.6527	http://www.sepaq.com/rf/lau/camp-mercier/	2014-01-21 16:07:15.636334	2014-02-09 22:57:15.613076	1	t	\N	\N	http://www.sepaq.com/rf/lau/tarifs.dot#cat_64	-71.225251	47.233137	1555492_10152238194274750_1987564870_n.jpg	Réserve Faunique des Laurentides	G0A 4P0	La réserve faunique des Laurentides, située entre les régions de Québec et du Saguenay-Lac-Saint-Jean, est un immense territoire sur lequel vous pourrez exercer vos activités de plein air favorites; la chasse, la pêche, l'observation de l'ours noir, le vélo de montagne, le kayak mais aussi le ski de fond, la raquette, la randonnée pédestre, la patinoire...<br>	\N	\N
30	Domaine Notre-Dame	83 Route Grand-Capsa	418.875.2583		http://www.domainenotredame.com	2014-01-22 04:24:42.176479	2014-02-10 00:17:27.408178	1	t	\N	\N	http://www.domainenotredame.com/Tarifsforfaits/Forfaitshiver/tabid/93/Default.aspx	-71.541144	46.785968	1555492_10152238194274750_1987564870_n.jpg	Sainte-Catherine-de-la-Jacques-Cartier	G3N 1P6	Situé à 20 minutes du centre ville de Québec, le domaine Notre Dame est à la fois un centre de plein air familial et un lieu de rencontre privilégié pour les gens d'affaires. Ce lieu unique et convivial propose des activités de plein air pour petits et grands, avec en hiver glissades, patin sur le lac, raquettes, ski de fond... et en été des jeux d'eaux, volleyball de plage, pétanque, sentiers pédestre... De plus, les possibilités d'hébergement sont nombreux et on y trouve même un service de restauration.<br>	\N	\N
46	La Promenade Samuel-De Champlain	2795 Boulevard Champlain	800.442.0773		http://www.ville.quebec.qc.ca/apropos/portrait/400e/legs/promenade.aspx	2014-02-14 05:30:38.28114	2014-03-03 00:53:58.272451	1	t	\N	\N	http://www.ville.quebec.qc.ca/apropos/portrait/400e/legs/promenade.aspx	-71.258437	46.766469	PROMENADE-SAMUEL-DE-CHAMPLAIN-OFFICIEL	Quebec, Qc	G1T 1X9	À Québec, et longeant le fleuve Saint Laurent, la promenade Samuel de Champlain est idéale pour les cyclistes et promeneurs.<br>	Site web officiel	Robert Greffard
35	Secrets Nordiques	100 rue Beau-mont	 418.827.2227		http://www.lessecretsnordiques.com	2014-02-03 16:45:05.151641	2014-03-02 20:37:14.050802	1	t	\N	\N	http://www.lessecretsnordiques.com/traineau-secrets-nordiques.html	-70.905995	47.071766	1555492_10152238194274750_1987564870_n.jpg	Beaupré, Québec	G0A 1E0 	Situé à la station de ski du Mont Sainte-Anne, à une demie heure de Québec, Secrets Nordiques vous propose de (re)découvrir le traîneau à chiens, le ski-Jöring (tracté par un chien, vous pouvez être en ski, en trottinette des neiges ou en snowscout) et la promenade en raquette.<br>	\N	
4	Centre plein air Dansereau	50, rue Dansereau	418.873.4150		http://centredansereau.com/	2014-01-21 16:33:38.805988	2014-02-14 02:31:40.725639	1	t	\N	\N	http://centredansereau.com/tarifs.html	-71.694381	46.76173	Ski-Dansereau-officiel.jpg	Pont-Rouge	G3H 3G6	Le Centre Dansereau vous fait profiter des pistes de ski de fond sur 30 km , raquette sur 5 km qui longent la rivière Jacques Cartier. En été, profitez de ces pistes pour faire du vélo de montagne et de la randonnée pédestre.<br>	Site web officiel	Centre plein air Dansereau
12	Plaines d'Abraham	835 Avenue Wilfrid-Laurier	418.648.2586		http://www.ccbn-nbc.gc.ca/	2014-01-21 21:34:41.142785	2014-02-14 02:56:58.373103	1	t	\N	\N	http://www.ccbn-nbc.gc.ca/fr/activites/ski-fond-raquette/	-71.213235	46.80697	PLAINES-D'ABRAHAM-OFFICIEL.jpg	Québec	G1R 5H8	En plein cœur de Québec, venez profiter de l'hiver dans un lieu historique unique: les Plaines d'Abraham. Que ce soit pour faire du ski de fond, de la raquette,&nbsp; de la course à pied, vélo ou patin ou même vous promener, ce parc vous accueille et vous propose aussi des événements tout au long de l'année.<br>	Site web officiel	Maxime Paré
48	Université Laval	2300, rue de la Terrasse 	418.656.7377		http://www.peps.ulaval.ca/programmation/activites-libres/escalade/hiver-2014/	2014-02-14 05:44:44.880441	2014-03-03 00:56:25.985182	1	t	\N	\N	http://www.peps.ulaval.ca/programmation/activites-libres/escalade/hiver-2014/	-71.276909	46.784796	1555492_10152238194274750_1987564870_n.jpg	Québec, Qc	G1V 0A6 	Le PEPS, sur le campus de l'université Laval, vous propose de l'escalade, en cours ou en pratique libre, en intérieur. Que vous soyez débutant ou expérimentés, vous trouverez les installations adaptées à votre niveau et à vos envies (murs, blocs et cavernes)...<br>	Site web officiel	
55	Bassin Louise	170 Rue Dalhousie,	418.648.3640 		http://www.portquebec.ca	2014-02-15 20:15:37.675292	2014-03-03 16:33:04.283324	1	t	\N	\N	http://www.portquebec.ca/activites-et-loisirs/espaces-recreatifs/bassin-louise	-71.202721	46.818385	1555492_10152238194274750_1987564870_n.jpg	Québec, Qc	G1K 4C4	Le Bassin Louise à Québec, qui abrite la Marina du port de Québec et le Marche du Vieux-Port, est un endroit apprécié des promeneurs, qui propose également une piste cyclable ponctuée d’aires de repos et d’espaces verts.<br>	Site web officiel	Maxime Paré
37	Aventures Nord-Bec	4, Chemin des Anémones	418.848.3732		http://www.traineaux-chiens.com	2014-02-03 16:52:37.938655	2014-03-02 20:40:54.939608	1	t	\N	\N	http://www.traineaux-chiens.com/ete/forfaits.htm	-71.346328	47.105441	1555492_10152238194274750_1987564870_n.jpg	Stoneham, Québec	G3C OA4	Aventures Nord-Bec, ce sont des activités de traîneau à chiens, des balades avec guides pour observer la faune et la flore, des promenades en raquettes… Situé à une demie heure de la ville de Québec, le site propose différents forfaits, et même des possibilités d'hébergement, qui sauront satisfaire vos envies.<br>	\N	
44	Roc Gyms	2350 Avenue du Colisée	418.647.4422 		http://aventurex.net/	2014-02-10 01:51:52.199984	2014-03-03 00:51:35.894992	1	t	\N	\N	http://aventurex.net/rocgyms/tarif.asp	-71.245914	46.832622	1555492_10152238194274750_1987564870_n.jpg	Québec, Québec	G1L 3Z9	Roc Gyms, situé à Québec, est le lieu idéal pour tous les amateurs d'escalade (en intérieur et en extérieur). Le site vous proppose également d'autres activités telles que la via ferrata et la tyrolienne, l'escalade de glace et l'alpinisme…<br>	Roc Gyms site web	
50	Cap Tourmente	570, chemin du Cap-Tourmente	418.827.4591		https://www.ec.gc.ca/ap-pa/default.asp?lang=Fr&n=0533BC0A-1	2014-02-14 05:55:43.647947	2014-03-03 16:25:59.28743	1	t	\N	\N	http://www.amiscaptourmente.org/	-70.799081	47.060485	527705_10151193392354839_1842301436_n.jpg	 Saint-Joachim, Qc	 G0A 3X0	Le Cap Tourmente, faisant partie des huit réserves nationales de faunes du Canada, est un endroit idéal pour l'observation de la faune, et notamment des oies des neiges. ACTIVITES ?<br>	Site web officiel	Clément Presse
51	Chutes Montmorency	2490 Avenue Royale	418.663.2877		http://www.sepaq.com/ct/pcm/	2014-02-14 06:07:26.834342	2014-03-03 16:27:11.72812	1	t	\N	\N	http://www.sepaq.com/ct/pcm/tarifs.dot	-71.150135	46.888095	MONTMORENCY-FALLS-OFFICIAL.jpg	Québec, Qc	G1C 1S1	Le Parc de la Chute-Montmorency est situé à quelques minutes de la ville de Québec. La chute Montmorency culmine à 83 m dans un paysage impressionnant. On la découvre à pied, en téléphérique ou depuis le restaurant gastronomique. Accessible en toute saison, le site est également illuminé la nuit.<br>	Site web officiel	Maxime Paré
53	Parc linéaire de la rivière Beauport	69 rue Juchereau,	418.666.6169		http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/parcs_bases_pleinair.aspx	2014-02-14 20:11:08.42093	2014-03-03 16:30:48.654856	1	t	\N	\N	http://www.green-street.ca/cvrb.aspx?lang=fr	-71.212887	46.871266	1555492_10152238194274750_1987564870_n.jpg	Québec, Qc	G1E 6W7	Situé à 15 minutes de la ville de Québec, la parc linéaire de la rivière Beauport propose un sentier pédestre et une piste cyclable. Vous pourrez y voir de nombreuses espèce d'oiseaux, une nature diversifiée ainsi que deux cascades de 25 m…un paysage étonnant.<br>	Site web officiel	Maxime Paré
38	Chenil La Poursuite	 1925A, Chemin Lambert	418.573.7777		http://www.chenillapoursuite.com	2014-02-03 16:55:34.890687	2014-03-03 00:37:34.120983	12	t	\N	\N	http://www.chenillapoursuite.com/fr/forfaits	-71.391549	46.658948	1555492_10152238194274750_1987564870_n.jpg	 Saint-Nicolas, Québec	G7A 2N4 	Situé à Lévis, à seulement 15 minutes du centre-ville de Québec, le Chenil La Poursuite est spécialisé dans le traîneau à chiens. Venez (re)découvrir cette activité au travers de différentes pistes entretenues et boisées, et profitez aussi du lieu pour vos randonnée en raquettes, faire des glissades sur chambre à air... Le Chenil propose différents forfaits et différents type d'hébergement si vous souhaitez vous loger...<br>	\N	
43	Descente Malbaie	316 Rue Principale	418.439.2265		http://descentemalbaie.com	2014-02-03 17:16:59.515015	2014-03-03 00:48:32.042495	1	t	\N	\N	http://descentemalbaie.com/forfaits-expeditions	-70.382475	47.750684	1555492_10152238194274750_1987564870_n.jpg	Saint-Aimé-des-Lacs, Québec	G0T 1S0	A la Descente Malbaie,&nbsp; située à 2h de la ville de Québec,vous profiterez des traîneaux à chiens pour des randonnées à la demi-journée, à la journée ou bien même des excursions de plusieurs jours. Le site vous propose différents forfaits pour toutes vos envies.<br>	\N	
45	Station touristique Stoneham	600 Chemin du Hibou	418.848.2415	800.463.6888	http://www.ski-stoneham.com/	2014-02-12 19:31:15.140515	2014-03-03 00:52:44.857593	1	t	\N	\N	http://www.ski-stoneham.com/fr-ca/produitsservices/abonnements/tarifs.aspx	-71.3826689	47.0274924	Stoneham-Olivier-Croteaups.jpg	Stoneham-et-Tewkesbury, Qc	G3C 1T3	La station touristique Stoneham, située à 25 minute de la ville de Québec, est idéale pour les amateurs de sports de glisse; ski, planche à neige… Une école de glisse est également à votre disposition, ainsi que différents forfaits et services d'hébergement. D'autres activités sont également proposées; géocaching, raquette, patin à glace…<br>	Site web officiel	Olivier Croteau
47	Centre d'escalade Délire	2485 boul. Sainte-Anne	418.658.8016		http://www.delirescalade.com/	2014-02-14 05:36:05.328937	2014-03-03 00:55:03.70176	1	t	\N	\N	http://www.delirescalade.com/tarifs	-71.215806	46.843679	1555492_10152238194274750_1987564870_n.jpg	Québec, Qc	G1J 1Y4	Le Centre d'escalade Délire vous offre le plus haut mur d'escalade à Québec. Des cours d'initiation, une école d'escalade, et des activités pour les enfants sont proposées (sur murs et blocs en intérieur), de même que des initiations à l'escalade de glace.<br><br>	Site web officiel	Maxime Paré
49	Canyon Sainte-Anne	206 Québec route 138	418.827.4057		http://www.canyonste-anne.qc.ca/	2014-02-14 05:49:19.786402	2014-03-03 00:58:36.596868	1	t	\N	\N	http://www.canyonste-anne.qc.ca/tarifs-chute-canyon-parc.html	-70.866125	47.064055	1555492_10152238194274750_1987564870_n.jpg	Beaupré, Québec	G0A 1E0	Situé à une demie heure de la ville de Québec, le Canyon Sainte-Anne met à votre disposition des installations telles que des ponts suspendus, passerelles...vous permettant ainsi des promenades hors du commun au cœur de la nature, longeant la rivière Sainte-Anne et passant au-dessus du gouffre. Des activités sont également proposées sur place, telles que des jeux, des vias ferrata et tyroliennes.<br>	Site web officiel	Maxime Paré
40	Expédition Mi-loup	186 Côte Lafleur	418.829.2588		http://www.leptitbonheur.qc.ca/	2014-02-03 17:03:06.113159	2014-03-03 00:42:43.300127	1	t	\N	\N	http://www.leptitbonheur.qc.ca/activites-hiver-traineau-a-chiens-ville-de-quebec/	-70.936435	46.905021	1555492_10152238194274750_1987564870_n.jpg	St-Jean Ile d'Orléans, Québec	G0A 3W0	Située à 20 minutes du centre ville de Québec, l'Auberge Le P'tit Bonheur vous offre différentes activités pour profiter de l'hiver. Traîneau à chien, motoneige, pêche blanche et raquette vous sont proposés dans un cadre boisé. Le site vous propose différents forfaits et différents types d'hébergement (chambre privée, tipi, igloo...). <br><br>	\N	
52	Parc du Bois-de-Coulonge	1215, Grande Allée Ouest	418.528.0773		http://www.capitale.gouv.qc.ca/realisations/parcs-espaces-verts/parc-du-bois-de-coulonge.html	2014-02-14 19:58:24.207404	2014-03-03 16:29:00.452655	1	t	\N	\N	http://www.capitale.gouv.qc.ca/realisations/parcs-espaces-verts/parc-du-bois-de-coulonge.html	-71.243567	46.789522	1555492_10152238194274750_1987564870_n.jpg	Québec, Qc	G1S 1E7	Dans la ville de Québec, le parc du Bois-de-Coulonge est idéal pour observer une faune typique des boisés urbains. C'est également un site ornithologique qui propose aux promeneurs une vue sur le fleuve, un arboretum, une cabane à sucre, une aire de jeux pour enfants...<br>	Site web officiel	Maxime Paré
54	Parc linéaire de la rivière Saint-Charles	332 Rue Domagaya	418.691.4710		http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/parc_lineaire/index.aspx	2014-02-14 20:15:06.336612	2014-03-03 16:32:09.295046	1	t	\N	\N	http://www.ville.quebec.qc.ca/citoyens/loisirs_sports/parc_lineaire/Services.aspx	-71.24017	46.821986	1555492_10152238194274750_1987564870_n.jpg	Québec, Qc	G1L 5B1	Le Parc linéaire de la rivière Saint-Charles, à Québec, est un magnifique sentier pédestre long de 32 km qui longe la rivière Saint-Charles, de son embouchure au Vieux-Port, jusqu’à sa source, le lac Saint-Charles. Tout au long du parcours, des ponts et passerelles vous permettent de passer d'une rive à l'autre de la rivière. Le parc vous propose également d'autres activités d'hiver et d'été; ski de fond, raquettes, patin, vélo, canot-kayak, pêche, randonnée guidée...<br>	Site web officiel	Maxime Paré
\.


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('locations_id_seq', 55, true);


--
-- Data for Name: locations_useful_infos; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY locations_useful_infos (id, location_id, useful_info_id) FROM stdin;
16	2	35
17	2	37
18	2	39
19	2	40
21	2	32
22	2	31
23	2	33
24	2	38
25	2	29
26	1	35
27	1	37
28	1	39
29	1	40
31	1	42
32	1	30
33	1	32
34	1	36
35	1	31
36	1	33
37	1	38
38	1	29
39	3	35
40	3	37
41	3	39
42	3	40
43	3	32
44	3	36
45	3	31
46	3	33
47	3	38
48	3	29
49	4	35
50	4	37
51	4	39
52	4	40
53	4	32
54	4	36
55	4	31
56	4	33
57	4	38
58	4	29
59	5	33
60	6	34
61	6	35
62	6	37
63	6	39
64	6	40
65	6	30
66	6	32
67	6	36
68	6	31
69	6	33
70	6	38
71	6	29
72	7	39
73	7	40
74	7	38
75	8	34
76	8	35
77	8	37
78	8	39
79	8	40
80	8	32
81	8	31
82	8	33
83	8	38
84	9	35
85	9	39
86	9	40
87	9	32
88	9	31
89	9	33
90	9	38
91	10	39
92	10	40
93	10	32
94	10	33
95	10	38
96	11	39
97	12	34
98	12	35
99	12	37
100	12	39
101	12	40
102	12	30
103	12	32
104	12	36
105	12	31
106	12	38
107	13	35
108	13	37
109	13	39
110	13	40
111	13	32
112	13	31
113	13	38
114	14	35
115	14	37
116	14	39
117	14	40
119	14	32
120	14	31
121	14	33
122	14	38
123	14	29
124	15	34
125	15	35
126	15	37
127	15	39
128	15	40
129	15	32
130	15	31
131	15	33
132	15	38
133	15	29
134	16	35
135	16	37
136	16	39
137	16	40
139	16	32
140	16	31
141	16	33
142	16	38
143	16	29
144	17	35
145	17	37
146	17	39
147	17	40
149	17	30
150	17	32
151	17	36
152	17	31
153	17	33
154	17	38
155	17	29
156	18	32
157	18	36
158	18	31
159	18	38
160	19	37
161	19	39
162	19	40
163	19	32
164	19	36
165	19	31
166	19	38
167	20	37
168	20	39
169	20	40
171	20	32
172	20	36
173	20	31
174	20	33
175	20	38
176	20	29
177	21	35
178	21	39
179	21	40
180	21	32
181	21	36
182	21	31
183	21	38
184	22	35
185	22	37
186	22	39
187	22	40
188	22	32
189	22	36
190	22	38
191	23	39
192	23	40
193	23	32
194	23	36
195	23	38
196	24	39
197	24	40
198	24	38
199	25	37
200	25	39
201	25	40
202	25	32
203	25	36
204	25	38
209	27	37
210	27	39
211	27	40
212	27	38
213	28	39
214	28	38
215	29	37
216	29	39
217	29	40
218	29	32
219	29	31
220	29	33
221	29	38
222	30	39
223	30	40
224	30	38
225	31	34
226	31	35
227	31	37
228	31	39
229	31	40
230	31	42
231	31	32
232	31	31
233	31	38
234	5	39
235	5	38
236	32	37
237	32	36
238	32	40
239	32	42
240	32	39
241	32	38
242	32	35
243	32	33
244	32	29
245	32	32
246	32	31
247	33	37
248	33	36
249	33	40
250	33	42
251	33	39
252	33	38
253	33	35
254	33	34
255	33	33
256	33	29
257	33	32
258	33	31
259	34	37
260	34	40
261	34	39
262	34	38
263	34	35
264	34	33
265	34	29
266	34	32
267	34	31
268	7	36
269	7	35
270	35	37
271	35	36
272	35	40
273	35	39
274	35	38
275	35	35
276	35	29
277	35	32
278	35	31
279	36	37
280	36	36
281	36	40
282	36	39
283	36	38
284	36	32
285	37	37
286	37	40
287	37	39
288	37	38
289	37	32
290	37	31
291	38	37
292	38	36
293	38	40
294	38	39
295	38	38
296	38	32
297	38	31
298	39	37
299	39	36
300	39	40
301	39	39
302	39	38
303	39	35
304	39	34
305	39	33
306	39	32
307	39	31
308	40	37
309	40	36
310	40	40
311	40	39
312	40	38
313	40	35
314	40	31
315	41	40
316	41	39
317	41	38
318	42	37
319	42	39
320	42	38
321	42	31
322	43	40
323	43	39
324	43	38
325	43	35
326	43	32
327	44	37
328	44	36
329	44	40
330	44	39
331	44	38
332	44	29
333	44	32
334	44	31
335	45	37
336	45	36
337	45	30
338	45	40
339	45	42
340	45	39
341	45	38
342	45	35
343	45	33
344	45	29
345	45	32
346	45	31
347	46	36
348	46	30
349	46	40
350	46	39
351	46	38
352	46	35
353	46	34
354	46	32
355	47	37
356	47	36
357	47	40
358	47	39
359	47	38
360	47	29
361	47	32
362	47	31
363	48	37
364	48	36
365	48	30
366	48	40
367	48	39
368	48	38
369	48	33
370	48	29
371	48	32
372	48	31
373	49	37
374	49	36
375	49	40
376	49	39
377	49	38
378	49	35
379	49	34
380	49	29
381	49	32
382	49	31
383	50	36
384	50	40
385	50	39
386	50	38
387	50	35
388	50	34
389	50	29
390	50	32
391	51	37
392	51	36
393	51	40
394	51	42
395	51	39
396	51	38
397	51	35
398	51	34
399	51	33
400	51	29
401	51	32
402	51	31
403	52	37
404	52	36
405	52	30
406	52	40
407	52	39
408	52	38
409	52	35
410	52	34
411	52	32
419	54	37
420	54	36
421	54	40
422	54	42
423	54	39
424	54	38
425	54	35
426	54	34
412	53	36
413	53	40
414	53	39
415	53	38
416	53	35
417	53	34
418	53	32
427	55	36
428	55	40
429	55	39
430	55	38
431	55	35
432	55	32
433	55	31
\.


--
-- Name: locations_useful_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('locations_useful_infos_id_seq', 433, true);


--
-- Data for Name: pub_types; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY pub_types (id, name, created_at, updated_at) FROM stdin;
1	SiderBar	2013-12-03 02:19:58.101409	2013-12-03 02:19:58.101409
2	Bottom	2013-12-03 02:19:58.10511	2013-12-03 02:19:58.10511
\.


--
-- Name: pub_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('pub_types_id_seq', 2, true);


--
-- Data for Name: pubs; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY pubs (id, image, pub_type_id, created_at, updated_at, name, image_file_name) FROM stdin;
4	\N	2	2014-02-18 01:49:41.864974	2014-02-18 01:49:41.864974	phil fortier	Paysage-1A.jpg
5	\N	1	2014-02-18 01:50:42.952468	2014-02-18 01:50:42.952468	max paré	1505997_10202068918218946_906286361_n.jpg
\.


--
-- Name: pubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('pubs_id_seq', 5, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY schema_migrations (version) FROM stdin;
20131126062638
20131116170752
20131122022459
20131126062127
20131120232841
20131114003358
20131120232901
20131113233429
20131116174801
20131113005626
20131121032118
20131125022453
20131118223107
20131121031916
20131120232917
20131125030421
20131118224054
20131121032201
20131122021752
20131205233911
20131206023152
20131206023309
20131206023929
20140112194358
20140122012048
20140124015856
20140124022345
20140129013240
20140212213124
\.


--
-- Data for Name: season_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY season_translations (id, season_id, locale, created_at, updated_at, name) FROM stdin;
6	4	en	2013-12-06 04:25:03.764487	2013-12-09 01:21:51.6618	Winter
7	4	fr	2013-12-09 01:21:51.663435	2013-12-09 01:21:51.664961	Hiver
5	3	en	2013-12-06 04:24:50.749819	2013-12-09 01:22:18.023948	Summer
8	3	fr	2013-12-09 01:22:18.025245	2013-12-09 01:22:18.026659	Été
\.


--
-- Name: season_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('season_translations_id_seq', 10, true);


--
-- Data for Name: seasons; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY seasons (id, name, created_at, updated_at) FROM stdin;
4	Hiver	2013-12-06 04:25:03.760711	2013-12-09 01:21:51.658173
3	Été	2013-12-06 04:24:50.744116	2013-12-09 01:22:18.0221
\.


--
-- Name: seasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('seasons_id_seq', 5, true);


--
-- Data for Name: top_10; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_10 (id, text_top, text_bottom) FROM stdin;
\.


--
-- Name: top_10_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_10_id_seq', 1, false);


--
-- Data for Name: top_activities; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_activities (id, text_top, text_bottom, pub_id, created_at, updated_at) FROM stdin;
1	<p>Le Top 10 est généré par le vote des\r\nutilisateurs avec le système d'étoiles et vous permet de découvrir les activités de plein air\r\nles plus appréciées sur notre site. </p>\r\n\r\n\r\n\r\n\r\n\r\n<br>	Votez !<br>	\N	2013-12-03 02:19:58.733138	2014-03-06 20:29:43.875742
\.


--
-- Name: top_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_activities_id_seq', 1, true);


--
-- Data for Name: top_activity_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_activity_translations (id, top_activity_id, locale, created_at, updated_at, text_top, text_bottom) FROM stdin;
2	1	en	2013-12-03 02:19:58.745016	2014-03-06 20:29:43.879225	The Top 10 is generated by the users vote with the star system and allows you to discover the most popular outdoor activities on our site.<br>	
1	1	fr	2013-12-03 02:19:58.737265	2014-03-06 20:29:43.88204	<p>Le Top 10 est généré par le vote des\r\nutilisateurs avec le système d'étoiles et vous permet de découvrir les activités de plein air\r\nles plus appréciées sur notre site. </p>\r\n\r\n\r\n\r\n\r\n\r\n<br>	Votez !<br>
\.


--
-- Name: top_activity_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_activity_translations_id_seq', 2, true);


--
-- Data for Name: top_event_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_event_translations (id, top_event_id, locale, created_at, updated_at, text_top, text_bottom) FROM stdin;
2	1	en	2013-12-03 02:19:58.679355	2014-02-17 22:43:58.634318	Thanks to you votes, other users will easily be able to identify the best of the comming events.<br><br>	We hope that this top 10 will inspire you and give you ideas to participate in different competitions.<br>
1	1	fr	2013-12-03 02:19:58.671544	2014-02-17 22:43:58.636117	<p>Grâce à vos votes, les autres utilisateurs\r\npeuvent facilement identifier dans cette section le meilleur des évènements à\r\nvenir. <br></p>\r\n\r\n\r\n\r\n\r\n\r\n<br>	Nous espérons que ce top 10 vous inspirera et vous donnera des idées pour participer à des compétitions de tout genre.<br>
\.


--
-- Name: top_event_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_event_translations_id_seq', 2, true);


--
-- Data for Name: top_events; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_events (id, text_top, text_bottom, pub_id, created_at, updated_at) FROM stdin;
1	<p>Grâce à vos votes, les autres utilisateurs\r\npeuvent facilement identifier dans cette section le meilleur des évènements à\r\nvenir. <br></p>\r\n\r\n\r\n\r\n\r\n\r\n<br>	Nous espérons que ce top 10 vous inspirera et vous donnera des idées pour participer à des compétitions de tout genre.<br>	\N	2013-12-03 02:19:58.66735	2014-02-17 22:43:58.631889
\.


--
-- Name: top_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_events_id_seq', 1, true);


--
-- Data for Name: top_location_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_location_translations (id, top_location_id, locale, created_at, updated_at, text_top, text_bottom) FROM stdin;
1	1	fr	2013-12-03 02:19:58.585075	2014-02-16 22:21:05.269807	<p>Dans cette section, vous trouverez le Top 10\r\ndes lieux répertoriés sur le site. Toute l’équipe d’Aventura vous souhaite de\r\nmagnifiques découvertes et vous invite à profiter au maximum de ce que la\r\nnature québécoise peut vous offrir&nbsp;!</p>\r\n\r\n\r\n\r\n\r\n\r\n<br>	
2	1	en	2013-12-03 02:19:58.593372	2014-02-17 22:52:19.036957	<span>In this section, you will find the Top 10 places listed on the site. All our team wishes you wonderful discoveries and invites you to make the most of what Quebec's nature has to offer!</span><br>	
\.


--
-- Name: top_location_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_location_translations_id_seq', 2, true);


--
-- Data for Name: top_locations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY top_locations (id, text_top, text_bottom, pub_id, created_at, updated_at) FROM stdin;
1	<p>Dans cette section, vous trouverez le Top 10\r\ndes lieux répertoriés sur le site. Toute l’équipe d’Aventura vous souhaite de\r\nmagnifiques découvertes et vous invite à profiter au maximum de ce que la\r\nnature québécoise peut vous offrir&nbsp;!</p>\r\n\r\n\r\n\r\n\r\n\r\n<br>	Meh irony brunch, chillwave pop-up locavore keffiyeh YOLO. Authentic Blue Bottle disrupt keffiyeh wayfarers Etsy umami. Seitan keytar vegan mixtape. Bushwick scenester food truck, irony VHS flannel distillery meh Tonx bespoke Cosby sweater. Helvetica Shoreditch Vice authentic VHS. Yr leggings Helvetica, twee wolf butcher tattooed +1 Thundercats PBR&amp;B polaroid you probably haven't heard of them mumblecore hella. Yr Intelligentsia Portland bicycle rights, selfies scenester American Apparel dreamcatcher farm-to-table mustache pug chillwave chia.	\N	2013-12-03 02:19:58.580015	2014-02-17 22:52:19.034846
\.


--
-- Name: top_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('top_locations_id_seq', 1, true);


--
-- Data for Name: useful_info_translations; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY useful_info_translations (id, useful_info_id, locale, created_at, updated_at, name) FROM stdin;
29	29	en	2014-01-12 20:12:28.351237	2014-01-12 20:12:28.351237	Store
31	30	en	2014-01-12 20:13:09.438053	2014-01-12 20:13:09.438053	Wireless network
33	31	en	2014-01-12 20:13:55.80452	2014-01-12 20:13:55.80452	Equipment rental
35	32	en	2014-01-12 20:14:36.018176	2014-01-12 20:14:36.018176	Rest area
37	33	en	2014-01-12 20:15:21.719728	2014-01-12 20:15:21.719728	Restaurant service
39	34	en	2014-01-12 20:15:59.053609	2014-01-12 20:15:59.053609	Interpretation
40	34	fr	2014-01-12 20:15:59.055655	2014-01-12 20:15:59.057528	Interpretation
41	35	en	2014-01-12 20:16:30.741474	2014-01-12 20:16:30.741474	Viewpoint
42	35	fr	2014-01-12 20:16:30.744259	2014-01-12 20:16:30.747106	Point de vue
43	36	en	2014-01-12 20:17:45.803048	2014-01-12 20:17:45.803048	Mobile network
45	37	en	2014-01-12 20:18:18.370436	2014-01-12 20:18:18.370436	Public phone
46	37	fr	2014-01-12 20:18:18.372725	2014-01-12 20:18:18.374459	Téléphone public
47	38	en	2014-01-12 20:18:49.798621	2014-01-12 20:18:49.798621	Bathroom
49	39	en	2014-01-12 20:19:14.041678	2014-01-12 20:19:14.041678	Parking area
51	40	en	2014-01-12 20:20:01.434668	2014-01-12 20:20:01.434668	Welcome center
52	40	fr	2014-01-12 20:20:01.437823	2014-01-12 20:20:01.440033	Accueil
55	42	en	2014-01-12 20:21:12.88239	2014-01-12 20:21:12.88239	Shuttle service
56	42	fr	2014-01-12 20:21:12.884961	2014-01-12 20:21:12.887034	Service de navette
32	30	fr	2014-01-12 20:13:09.441311	2014-01-12 20:21:37.409523	Réseau sans fils
36	32	fr	2014-01-12 20:14:36.020578	2014-01-12 20:22:06.383182	Aire de repos
44	36	fr	2014-01-12 20:17:45.810221	2014-01-12 20:23:09.428285	Réseau cellulaire
34	31	fr	2014-01-12 20:13:55.808376	2014-01-12 20:23:49.685159	Location d'équipement
38	33	fr	2014-01-12 20:15:21.722524	2014-01-12 20:25:08.115417	Restauration
48	38	fr	2014-01-12 20:18:49.800903	2014-01-12 20:25:18.599338	Toilettes
30	29	fr	2014-01-12 20:12:28.358231	2014-01-12 20:26:35.972354	Boutique
50	39	fr	2014-01-12 20:19:14.043462	2014-01-23 20:03:20.470219	Stationnement
\.


--
-- Name: useful_info_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('useful_info_translations_id_seq', 56, true);


--
-- Data for Name: useful_infos; Type: TABLE DATA; Schema: public; Owner: aventura
--

COPY useful_infos (id, name, icon, created_at, updated_at, icon_file_name) FROM stdin;
37	Téléphone public	\N	2014-01-12 20:18:18.362601	2014-01-23 19:54:32.463009	téléphone_public
36	Réseau cellulaire	\N	2014-01-12 20:17:45.795507	2014-01-23 19:55:27.869968	réseau_celullaire
30	Réseau sans fils	\N	2014-01-12 20:13:09.429613	2014-01-23 19:55:43.824035	wifi
40	Accueil	\N	2014-01-12 20:20:01.421118	2014-01-23 19:56:03.117699	accueil
42	Service de navette	\N	2014-01-12 20:21:12.878697	2014-01-23 19:58:32.536735	navette2
39	Stationnement	\N	2014-01-12 20:19:14.037547	2014-01-23 20:03:20.465011	parking
38	Toilettes	\N	2014-01-12 20:18:49.791341	2014-01-23 20:04:22.055922	toilette
35	Point de vue	\N	2014-01-12 20:16:30.732888	2014-01-23 20:08:39.316367	point_de_vue
34	Interpretation	\N	2014-01-12 20:15:59.050264	2014-01-23 20:09:01.592958	interprétation
33	Restauration	\N	2014-01-12 20:15:21.712417	2014-01-23 20:13:47.632606	restaurant_2
29	Boutique	\N	2014-01-12 20:12:28.325994	2014-01-23 20:14:21.035099	boutique
32	Aire de repos	\N	2014-01-12 20:14:36.01119	2014-01-23 20:24:01.687103	repos
31	Location d'équipement	\N	2014-01-12 20:13:55.797039	2014-01-23 20:33:20.702468	ski
\.


--
-- Name: useful_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aventura
--

SELECT pg_catalog.setval('useful_infos_id_seq', 42, true);


--
-- Name: about_page_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY about_page_translations
    ADD CONSTRAINT about_page_translations_pkey PRIMARY KEY (id);


--
-- Name: about_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY about_pages
    ADD CONSTRAINT about_pages_pkey PRIMARY KEY (id);


--
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: activities_events_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activities_events
    ADD CONSTRAINT activities_events_pkey PRIMARY KEY (id);


--
-- Name: activities_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activities_locations
    ADD CONSTRAINT activities_locations_pkey PRIMARY KEY (id);


--
-- Name: activities_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: activities_seasons_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activities_seasons
    ADD CONSTRAINT activities_seasons_pkey PRIMARY KEY (id);


--
-- Name: activity_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activity_categories
    ADD CONSTRAINT activity_categories_pkey PRIMARY KEY (id);


--
-- Name: activity_category_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activity_category_translations
    ADD CONSTRAINT activity_category_translations_pkey PRIMARY KEY (id);


--
-- Name: activity_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activity_ratings
    ADD CONSTRAINT activity_ratings_pkey PRIMARY KEY (id);


--
-- Name: activity_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY activity_translations
    ADD CONSTRAINT activity_translations_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: administrative_regions_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY administrative_regions
    ADD CONSTRAINT administrative_regions_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: event_index_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY event_index_translations
    ADD CONSTRAINT event_index_translations_pkey PRIMARY KEY (id);


--
-- Name: event_indices_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY event_indices
    ADD CONSTRAINT event_indices_pkey PRIMARY KEY (id);


--
-- Name: event_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY event_ratings
    ADD CONSTRAINT event_ratings_pkey PRIMARY KEY (id);


--
-- Name: event_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);


--
-- Name: events_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: events_seasons_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY events_seasons
    ADD CONSTRAINT events_seasons_pkey PRIMARY KEY (id);


--
-- Name: footer_text_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY footer_text_translations
    ADD CONSTRAINT footer_text_translations_pkey PRIMARY KEY (id);


--
-- Name: footer_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY footer_texts
    ADD CONSTRAINT footer_texts_pkey PRIMARY KEY (id);


--
-- Name: home_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY home_translations
    ADD CONSTRAINT home_translations_pkey PRIMARY KEY (id);


--
-- Name: homes_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY homes
    ADD CONSTRAINT homes_pkey PRIMARY KEY (id);


--
-- Name: location_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY location_ratings
    ADD CONSTRAINT location_ratings_pkey PRIMARY KEY (id);


--
-- Name: location_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY location_translations
    ADD CONSTRAINT location_translations_pkey PRIMARY KEY (id);


--
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: locations_useful_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY locations_useful_infos
    ADD CONSTRAINT locations_useful_infos_pkey PRIMARY KEY (id);


--
-- Name: pub_types_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY pub_types
    ADD CONSTRAINT pub_types_pkey PRIMARY KEY (id);


--
-- Name: pubs_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY pubs
    ADD CONSTRAINT pubs_pkey PRIMARY KEY (id);


--
-- Name: season_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY season_translations
    ADD CONSTRAINT season_translations_pkey PRIMARY KEY (id);


--
-- Name: seasons_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY (id);


--
-- Name: top_10_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_10
    ADD CONSTRAINT top_10_pkey PRIMARY KEY (id);


--
-- Name: top_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_activities
    ADD CONSTRAINT top_activities_pkey PRIMARY KEY (id);


--
-- Name: top_activity_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_activity_translations
    ADD CONSTRAINT top_activity_translations_pkey PRIMARY KEY (id);


--
-- Name: top_event_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_event_translations
    ADD CONSTRAINT top_event_translations_pkey PRIMARY KEY (id);


--
-- Name: top_events_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_events
    ADD CONSTRAINT top_events_pkey PRIMARY KEY (id);


--
-- Name: top_location_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_location_translations
    ADD CONSTRAINT top_location_translations_pkey PRIMARY KEY (id);


--
-- Name: top_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY top_locations
    ADD CONSTRAINT top_locations_pkey PRIMARY KEY (id);


--
-- Name: useful_info_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY useful_info_translations
    ADD CONSTRAINT useful_info_translations_pkey PRIMARY KEY (id);


--
-- Name: useful_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: aventura; Tablespace: 
--

ALTER TABLE ONLY useful_infos
    ADD CONSTRAINT useful_infos_pkey PRIMARY KEY (id);


--
-- Name: index_about_page_translations_on_about_page_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_about_page_translations_on_about_page_id ON about_page_translations USING btree (about_page_id);


--
-- Name: index_about_page_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_about_page_translations_on_locale ON about_page_translations USING btree (locale);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_activity_category_translations_on_activity_category_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_activity_category_translations_on_activity_category_id ON activity_category_translations USING btree (activity_category_id);


--
-- Name: index_activity_category_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_activity_category_translations_on_locale ON activity_category_translations USING btree (locale);


--
-- Name: index_activity_translations_on_activity_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_activity_translations_on_activity_id ON activity_translations USING btree (activity_id);


--
-- Name: index_activity_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_activity_translations_on_locale ON activity_translations USING btree (locale);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_comments_on_commentable_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_comments_on_commentable_id ON comments USING btree (commentable_id);


--
-- Name: index_comments_on_commentable_type; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_comments_on_commentable_type ON comments USING btree (commentable_type);


--
-- Name: index_event_index_translations_on_event_index_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_event_index_translations_on_event_index_id ON event_index_translations USING btree (event_index_id);


--
-- Name: index_event_index_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_event_index_translations_on_locale ON event_index_translations USING btree (locale);


--
-- Name: index_event_translations_on_event_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_event_translations_on_event_id ON event_translations USING btree (event_id);


--
-- Name: index_event_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_event_translations_on_locale ON event_translations USING btree (locale);


--
-- Name: index_footer_text_translations_on_footer_text_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_footer_text_translations_on_footer_text_id ON footer_text_translations USING btree (footer_text_id);


--
-- Name: index_footer_text_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_footer_text_translations_on_locale ON footer_text_translations USING btree (locale);


--
-- Name: index_home_translations_on_home_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_home_translations_on_home_id ON home_translations USING btree (home_id);


--
-- Name: index_home_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_home_translations_on_locale ON home_translations USING btree (locale);


--
-- Name: index_location_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_location_translations_on_locale ON location_translations USING btree (locale);


--
-- Name: index_location_translations_on_location_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_location_translations_on_location_id ON location_translations USING btree (location_id);


--
-- Name: index_season_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_season_translations_on_locale ON season_translations USING btree (locale);


--
-- Name: index_season_translations_on_season_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_season_translations_on_season_id ON season_translations USING btree (season_id);


--
-- Name: index_top_activity_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_top_activity_translations_on_locale ON top_activity_translations USING btree (locale);


--
-- Name: index_top_activity_translations_on_top_activity_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_top_activity_translations_on_top_activity_id ON top_activity_translations USING btree (top_activity_id);


--
-- Name: index_top_event_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_top_event_translations_on_locale ON top_event_translations USING btree (locale);


--
-- Name: index_top_event_translations_on_top_event_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_top_event_translations_on_top_event_id ON top_event_translations USING btree (top_event_id);


--
-- Name: index_top_location_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_top_location_translations_on_locale ON top_location_translations USING btree (locale);


--
-- Name: index_top_location_translations_on_top_location_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_top_location_translations_on_top_location_id ON top_location_translations USING btree (top_location_id);


--
-- Name: index_useful_info_translations_on_locale; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_useful_info_translations_on_locale ON useful_info_translations USING btree (locale);


--
-- Name: index_useful_info_translations_on_useful_info_id; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE INDEX index_useful_info_translations_on_useful_info_id ON useful_info_translations USING btree (useful_info_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: aventura; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

