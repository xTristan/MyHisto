-- Table: history.events

-- DROP TABLE history.events;

CREATE TABLE history.events
(
  id integer NOT NULL DEFAULT nextval('history.event_id_seq'::regclass),
  summery character varying(128) NOT NULL,
  description text,
  start_date timestamp(6) with time zone NOT NULL,
  longitude real,
  latitude real,
  end_date timestamp(6) with time zone,
  CONSTRAINT event_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

-- Change the OWNER name below if deploying against another user.
ALTER TABLE history.events OWNER TO postgres;

