CREATE DEFINER=`root`@`localhost` PROCEDURE `P_AgregarVendedor`(
in p_CodigoVendedor VARCHAR(50),
in p_NombreVendedor VARCHAR(50)
)
BEGIN
declare existe int default 0;
SELECT COUNT(*) FROM vendedor WHERE codigoVendedor = p_CodigoVendedor INTO existe;
if    exite > 0 THEN
    SELECT "YA EXISTE";
ELSE
    insert INTO vendedor VALUES(p_CodigoVendedor,p_NombreVendedor);
    SELECT "AGREGADO";
END IF;
END