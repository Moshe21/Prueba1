CREATE DEFINER=`root`@`localhost` FUNCTION `Descuento`(porcentaje int  ) RETURNS int
    DETERMINISTIC
BEGIN
	declare iva int;
			set iva=(
				select nom_producto,precio,precio*0.19 as iva,precio-(precio*porcentaje) as descuento
				from producto);

RETURN iva;
END