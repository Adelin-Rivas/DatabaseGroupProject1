-- Table: public."Student"

-- DROP TABLE public."Student";

CREATE TABLE public."Student"
(
    "studentLastName" character(40) COLLATE pg_catalog."default" NOT NULL,
    "StudentLastName" character(40)[] COLLATE pg_catalog."default" NOT NULL,
    email character(40)[] COLLATE pg_catalog."default" NOT NULL,
    "imagUrl" character(100) COLLATE pg_catalog."C" DEFAULT 'allocate url'::bpchar,
    "studentId" integer NOT NULL,
    "studentGpa" double precision,
    "campusId" integer NOT NULL,
    CONSTRAINT "studentId" PRIMARY KEY ("studentId"),
    CONSTRAINT "campsuId" FOREIGN KEY ("campusId")
        REFERENCES public.campus ("campusID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Student"
    OWNER to postgres;

-- Index: fki_campsuId

-- DROP INDEX public."fki_campsuId";

CREATE INDEX "fki_campsuId"
    ON public."Student" USING btree
    ("campusId")
    TABLESPACE pg_default;