CREATE TABLE printer
(
    code bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    model character varying(50) NOT NULL,
    color character(1) NOT NULL,
    type_pri character varying(10) NOT NULL,
    price numeric NOT NULL,
    CONSTRAINT printer_pkey PRIMARY KEY (code),
    CONSTRAINT fk_printer_product FOREIGN KEY (model) REFERENCES product(model)
)