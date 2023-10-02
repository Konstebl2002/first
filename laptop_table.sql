CREATE TABLE laptop
(
    code bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    model character varying(50) COLLATE NOT NULL,
    speed smallint NOT NULL,
    ram smallint NOT NULL,
    hd real NOT NULL,
    price numeric NOT NULL,
    screen smallint NOT NULL,
    CONSTRAINT laptop_pkey PRIMARY KEY (code),
    CONSTRAINT fk_laptop FOREIGN KEY (model)
)