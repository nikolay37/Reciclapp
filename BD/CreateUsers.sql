-- Table: public.detalleparametros

-- DROP TABLE public.detalleparametros;

CREATE TABLE public.usuarios
(
  idusuario integer NOT NULL,
  nombre character varying,
  apellido character varying,
  celular character varying,
  mail character varying,
  fechaNacimiento date,
  localidad character varying,
  direccion character varying,
  barrio character varying,
  edificio character varying,
  genero character varying,
  empresa character varying,
  clienteAcueducto character varying,
  jac character varying,

  CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario)

)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.detalleparametros
  OWNER TO postgres;
