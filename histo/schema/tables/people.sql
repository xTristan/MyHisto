-- Table: history.people

-- DROP TABLE history.people;

CREATE TABLE history.people
(
  id integer NOT NULL DEFAULT nextval('history."Person_id_seq"'::regclass),
  last_name character varying(128),
  first_name character varying(128),
  birthdate date,
  deathdate date,
  nationality character varying(128),
  description text,
  CONSTRAINT "Person_pkey" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

-- Change the name below if deploying against another user.
ALTER TABLE history.people OWNER TO postgres;

