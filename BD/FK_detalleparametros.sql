ALTER TABLE detalleparametros
ADD CONSTRAINT "idparametro" FOREIGN KEY ("idparametro")
      REFERENCES "parametros" ("idparametro") MATCH FULL
      ON UPDATE NO ACTION ON DELETE NO ACTION

ALTER TABLE retousuario
ADD CONSTRAINT "idreto" FOREIGN KEY ("idreto")
      REFERENCES "reto" ("idreto") MATCH FULL
      ON UPDATE NO ACTION ON DELETE NO ACTION
	  

SELECT retusu.idretousuario, retusu.idreto, reto.nombrereto, retusu.idusu_invitado, u.nombre, retusu.lema 
FROM retousuario retusu
INNER JOIN reto on reto.idreto = retusu.idreto 
INNER JOIN usuarios u on u.idusuario = idusu_invitado 