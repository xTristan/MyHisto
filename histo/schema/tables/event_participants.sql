-- Table: history.event_participants

-- DROP TABLE history.event_participants;

CREATE TABLE history.event_participants
(
  id serial NOT NULL,
  event_id integer,
  person_id integer,
  relationship text,
  CONSTRAINT event_participants_pkey PRIMARY KEY (id),
  CONSTRAINT event_participants_event_id_fkey FOREIGN KEY (event_id)
      REFERENCES history.events (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT event_participants_person_id_fkey FOREIGN KEY (person_id)
      REFERENCES history.people (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL
)
WITH (
  OIDS=FALSE
);

-- Change the name below if deploying against another user.
ALTER TABLE history.event_participants OWNER TO postgres;
