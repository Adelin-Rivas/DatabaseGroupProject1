-- Table: public.campus

-- DROP TABLE public.campus;

CREATE TABLE public.campus
(
    name character(70) COLLATE pg_catalog."default" NOT NULL,
    "campusImgUrl" character(100) COLLATE pg_catalog."POSIX" DEFAULT 'no image'::bpchar,
    adress character(140) COLLATE pg_catalog."default" NOT NULL,
    description character(1000) COLLATE pg_catalog."default",
    "campusID" integer NOT NULL,
    CONSTRAINT "campusId" PRIMARY KEY ("campusID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.campus
    OWNER to postgres;
	
	
	
	
	