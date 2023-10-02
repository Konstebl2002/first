CREATE TABLE pc
(
    code bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    model character varying(50) COLLATE NOT NULL,
    speed smallint NOT NULL,
    ram smallint NOT NULL,
    hd real NOT NULL,
    cd character varying(10) COLLATE NOT NULL,
    price numeric NOT NULL,
    CONSTRAINT pc_pkey PRIMARY KEY (code),
    CONSTRAINT fk_pc FOREIGN KEY (model)
)