-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2017 a las 07:41:56
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lsmbase`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_amortizacion_cobro`(
in _id_movimiento int(11),
in _id_cronograma_cobro int(11)
)
update amortizacion_cobro set estado=1
where id_movimiento=_id_movimiento 
and id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_amortizacion_pago`(
in _id_movimiento int(11),
in _id_cronograma_pago int(11)
)
update amortizacion_pago set estado=1
where id_movimiento=_id_movimiento 
and id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_caja`(
in _id_caja int(11)
)
update caja set estado = 1
where id_caja =_id_caja$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_caja_usuario`(
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime
)
update caja_usuario set estado = 1 
where id_caja=_id_caja 
and id_usuario=_id_usuario
and fecha_apertura=_fecha_apertura$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_cliente`(
in _id_cliente int(11)
)
update cliente set estado = 1 
where id_cliente = _id_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_compra`(
in _id_compras int(11)
)
update compras set estado = 1
where id_compras =_id_compras$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_concepto_movimiento`(
in _id_concepto_movimiento int(11)
)
update concepto_movimiento set estado=1
where id_concepto_movimiento=_id_concepto_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_cronograma_cobro`(
in _id_cronograma_cobro int(11)
)
update cronograma_cobro set estado = 1
where id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_cronograma_pago`(
in _id_cronograma_cobro int(11)
)
update cronograma_pago set estado = 1
where id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_forma_pago`(
in _id_forma_pago int(11)
)
update forma_pago set estado = 1 where id_forma_pago=_id_forma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_libro`(
in _id_libro int(11)
)
update libro set estado = 1 
where id_libro = _id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_marca`(
in _id_marca int(11)
)
update marca set estado = 1 
where id_marca = _id_marca$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_menu`(
in _id_menu int(11)
)
update menu set estado=1
where id_menu=_id_menu$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_movimiento`(
in _id_movimiento int(11)
)
update movimiento set estado=1
where id_movimiento=_id_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_perfil`(
in _id_perfil int(11)
)
update perfil set estado = 1
where id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_producto`(
in _id_producto int(11)
)
update producto set estado = 1
where id_producto = _id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_proveedor`(
in _id_proveedor int(11)
)
update cliente set estado = 1 
where id_proveedor = _id_proveedor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_tipo_cliente`(
in _id_tipo_cliente int(11)
)
update tipo_cliente set estado = 1
where tipo_cliente=_id_tipo_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_tipo_comprobante`(
in _id_tipo_comprobante int(11)
)
update tipo_comprobante set estado = 1
where id_tipo_comprobante=_id_tipo_comprobante$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_tipo_movimiento`(
in _id_tipo_movimiento int(11)
)
update tipo_movimiento set estado = 1
where id_tipo_movimiento=_id_tipo_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_tipo_producto`(
in _id_tipo_producto int(11)
)
update tipo_producto set estado = 1 
where id_tipo_producto = _id_tipo_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_tipo_transaccion`(
in _id_tipo int(11)
)
update tipo_transaccion set estado=1 where id_tipo=_id_tipo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_ubigeo`(
in _id_ubigeo char(6)
)
update ubigeo set estado = 1 where id_ubigeo=_id_ubigeo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_usuario`(
in _id_usuario int(11)
)
update usuario set estado = 1 
where id_usuario = _id_usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activar_venta`(
in _id_ventas int(11)
)
update ventas set estado = 1
where id_ventas=_id_ventas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_acceso_perfil`(
in _id_menu int(11),
in _id_perfil int(11)
)
select * from acceso,menu,perfil
where acceso.id_menu=menu.id_menu
and acceso.id_perfil=perfil.id_perfil
and id_menu=_id_menu and id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_amortizacion_cobro`()
select * from amortizacion_cobro,movimiento,cronograma_cobro
 where amortizacion_cobro.id_movimiento=movimiento.id_movimiento
 and amortizacion_cobro.id_cronograma_cobro=cronograma_cobro.id_cronograma_cobro
 and amortizacion_cobro.estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_amortizacion_cobro_codigo`(
in _id_movimiento int(11),
in _id_cronograma_cobro int(11)
)
select * from amortizacion_cobro,movimiento,cronograma_cobro
 where amortizacion_cobro.id_movimiento=movimiento.id_movimiento
 and amortizacion_cobro.id_cronograma_cobro=cronograma_cobro.id_cronograma_cobro
 and id_movimiento=_id_movimiento 
and id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_amortizacion_pago`()
select * from amortizacion_pago,movimiento,cronograma_pago
 where amortizacion_pago.id_movimiento=movimiento.id_movimiento
 and amortizacion_pago.id_cronograma_pago=cronograma_pago.id_cronograma_pago
 and amortizacion_pago.estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_amortizacion_pago_codigo`(
in _id_movimiento int(11),
in _id_cronograma_pago int(11)
)
select * from amortizacion_pago,movimiento,cronograma_pago
 where amortizacion_pago.id_movimiento=movimiento.id_movimiento
 and amortizacion_pago.id_cronograma_pago=cronograma_pago.id_cronograma_pago
 and id_movimiento=_id_movimiento 
and id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_caja`()
select * from caja where estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_caja_codigo`(
in _id_caja int(11)
)
select * from caja where id_caja=_id_caja$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_caja_usuario`()
select * from caja_usuario,caja,usuario
where caja_usuario.id_caja=caja.id_caja
and caja_usuario.id_usuario=usuario.id_usuario
and caja_usuario.estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_caja_usuario_codigo`(
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime
)
select * from caja_usuario,caja,usuario
where caja_usuario.id_caja=caja.id_caja
and caja_usuario.id_usuario=usuario.id_usuario
and id_caja=_id_caja and id_usuario=_id_usuario
and fecha_apertura=_fecha_apertura$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cliente`()
select * from cliente,tipo_cliente,ubigeo  
where (cliente.id_tipo = tipo_cliente.id_tipo_cliente 
and cliente.id_ubigeo = ubigeo.id_ubigeo)
and cliente.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cliente_codigo`(
in _id_cliente int(11)
)
select * from cliente where id_cliente = _id_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_compra`()
select * from compras,usuario,proveedor,tipo_transaccion
where compras.id_usuario=usuario.id_usuario 
and compras.id_proveedor=proveedor.id_proveedor
and compras.id_tipo_transaccion=tipo_transaccion.id_tipo
and compras.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_compra_codigo`(
in _id_compras int(11)
)
select * from compras,usuario,proveedor,tipo_transaccion
where compras.id_usuario=usuario.id_usuario 
and compras.id_proveedor=proveedor.id_proveedor
and compras.id_tipo_transaccion=tipo_transaccion.id_tipo
and id_compras=_id_compras$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_concepto_movimiento`()
select * from concepto_movimiento, tipo_movimiento
where concepto_movimiento.id_tipo_movimiento = tipo_movimiento.id_tipo_movimiento
and concepto_movimiento.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_concepto_movimiento_codigo`(
in _id_concepto_movimiento int(11)
)
select * from concepto_movimiento, tipo_movimiento
where concepto_movimiento.id_tipo_movimiento = tipo_movimiento.id_tipo_movimiento
and id_concepto_movimiento=_id_concepto_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cronograma_cobro`()
select * from cronograma_cobro, ventas
where cronograma_cobro.id_venta = ventas.id_ventas
and cronograma_cobro.estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cronograma_cobro_codigo`(
in _id_cronograma_cobro int(11)
)
select * from cronograma_cobro, ventas
where cronograma_cobro.id_venta = ventas.id_ventas
and id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cronograma_pago`()
select * from cronograma_cobro, compras
where cronograma_pago.id_compra = compras.id_compras
and cronograma_pago.estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cronograma_pago_codigo`(
in _id_cronograma_pago int(11)
)
select * from cronograma_pago, compras
where cronograma_pago.id_compra = compras.id_compras
and id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_detalle_compra_libros`(
in _id_compra int(11),
in _id_libro int(11)
)
select * from detalle_compra_libro,compras,libro
where (detalle_compra_libro.id_compra=compras.id_compras
and detalle_compra_libro.id_libro=libro.id_libro)
and id_compra=_id_compra and id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_detalle_compra_producto`(
in _id_compra int(11),
in _id_producto int(11)
)
select * from detalle_compra_producto,compras,producto
where (detalle_compra_producto.id_compra=compras.id_compras
and detalle_compra_producto.id_producto=producto.id_producto)
and id_compra=_id_compra and id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_detalle_venta_libros`(
in _id_venta int(11),
in _id_libro int(11)
)
select * from detalle_venta_libros,ventas,libro
where (detalle_venta_libros.id_venta=ventas.id_ventas
and detalle_venta_libros.id_libro=libro.id_libro)
and id_venta=_id_venta and id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_detalle_venta_producto`(
in _id_venta int(11),
in _id_producto int(11)
)
select * from detalle_venta_producto,ventas,producto
where (detalle_venta_producto.id_venta=ventas.id_ventas
and detalle_venta_producto.id_producto=producto.id_producto)
and id_venta=_id_venta and id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_forma_pago`()
select * from forma_pago where estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_forma_pago_codigo`(
in _id_forma_pago int(11)
)
select * from forma_pago where id_forma_pago=_id_forma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_libro`()
select * from libro  
where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_libro_codigo`(
in _id_libro int(11)
)
select * from libro
where id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_libro_titulo`(
in _titulo varchar(100)
)
select * from libro
where titulo=_titulo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_marca`()
select * from marca  
where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_marca_codigo`(
in _id_marca int(11)
)
select * from marca
where id_marca=_id_marca$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_menu`()
select * from menu where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_menu_codigo`(
in _id_menu int(11)
)
select * from menu where id_menu=_id_menu$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_movimiento`()
select * from movimiento,concepto_movimiento,tipo_comprobante,
forma_pago,caja,usuario,caja_usuario
where movimiento.id_concepto_movimiento=concepto_movimiento.id_concepto_movimiento
and movimiento.id_tipo_comprobante=tipo_comprobante.id_tipo_comprobante 
and movimiento.id_forma_pago=forma_pago.id_forma_pago
and caja.id_caja=caja_usuario.id_caja
and usuario.id_usuario=caja_usuario.id_usuario
and movimiento.id_caja=caja_usuario.id_caja
and movimiento.id_usuario=caja_usuario.id_usuario
and movimiento.fecha_apertura=caja_usuario.fecha_apertura
and movimiento.estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_movimiento_codigo`(
in _id_movimiento int(11)
)
select * from movimiento,concepto_movimiento,tipo_comprobante,
forma_pago,caja,usuario,caja_usuario
where movimiento.id_concepto_movimiento=concepto_movimiento.id_concepto_movimiento
and movimiento.id_tipo_comprobante=tipo_comprobante.id_tipo_comprobante 
and movimiento.id_forma_pago=forma_pago.id_forma_pago
and caja.id_caja=caja_usuario.id_caja
and usuario.id_usuario=caja_usuario.id_usuario
and movimiento.id_caja=caja_usuario.id_caja
and movimiento.id_usuario=caja_usuario.id_usuario
and movimiento.fecha_apertura=caja_usuario.fecha_apertura
and id_movimiento=_id_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_perfil`()
select * from tipo_perfil 
where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_perfil_codigo`(
in _id_perfil int(11)
)
select * from perfil 
where id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_producto`()
select * from producto,tipo_producto,marca
where producto.id_tipo_producto=tipo_producto.id_tipo_producto
and producto.id_marca = marca.id_marca
and producto.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_producto_codigo`(
in _id_producto int(11)
)
select * from producto, tipo_producto, marca 
where producto.id_tipo_producto=tipo_producto.id_tipo_producto
and producto.id_marca = marca.id_marca
and id_producto = _id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_proveedor`()
select * from proveedor,ubigeo  
where (proveedor.id_ubigeo = ubigeo.id_ubigeo)
and proveedor.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_proveedor_codigo`(
in _id_proveedor int(11)
)
select * from proveedor where id_proveedor = _id_proveedor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_cliente`()
select * from tipo_cliente 
where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_cliente_codigo`(
in _id_tipo_cliente int(11)
)
select * from tipo_cliente 
where tipo_cliente=_id_tipo_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_comprobante`()
select * from tipo_comprobante where estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_movimiento`()
select * from tipo_movimiento where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_movimiento_codigo`(
in _id_tipo_movimiento int(11)
)
select * from tipo_movimiento where id_tipo_movimiento=_id_tipo_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_producto`()
select * from tipo_producto  
where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_producto_codigo`(
in _id_tipo_producto int(11)
)
select * from tipo_producto
where id_tipo_producto=_id_tipo_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_transaccion`()
select * from tipo_transaccion where estado=1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_tipo_transaccion_codigo`(
in _id_tipo int(11)
)
select * from tipo_transaccion where id_tipo=_id_tipo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_ubigeo`()
select * from ubigeo where estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_ubigeo_codigo`(
in _id_ubigeo char(6)
)
select * from ubigeo where id_ubigeo=_id_ubigeo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_usuario`()
select * from usuario,perfil,ubigeo  
where (usuario.id_perfil = perfil.id_perfil 
and usuario.id_ubigeo = ubigeo.id_ubigeo)
and usuario.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_usuario_codigo`(
in _id_usuario int(11)
)
select * from usuario where id_usuario = _id_usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_venta`()
select * from ventas,usuario,cliente,tipo_transaccion
where ventas.id_usuario=usuario.id_usuario 
and ventas.id_cliente=cliente.id_cliente
and ventas.id_tipo_transaccion=tipo_transaccion.id_tipo
and ventas.estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_venta_codigo`(
in _id_ventas int(11)
)
select * from ventas,usuario,cliente,tipo_transaccion
where ventas.id_usuario=usuario.id_usuario 
and ventas.id_cliente=cliente.id_cliente
and ventas.id_tipo_transaccion=tipo_transaccion.id_tipo
and id_ventas=_id_ventas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_amortizacion_cobro`(
in _id_movimiento int(11),
in _id_cronograma_cobro int(11)
)
update amortizacion_cobro set estado=0
where id_movimiento=_id_movimiento 
and id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_amortizacion_pago`(
in _id_movimiento int(11),
in _id_cronograma_pago int(11)
)
update amortizacion_pago set estado=0
where id_movimiento=_id_movimiento 
and id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_caja`(
in _id_caja int(11)
)
update caja set estado = 0
where id_caja=_id_caja$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_caja_usuario`(
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime
)
update caja_usuario set estado = 0 
where id_caja=_id_caja 
and id_usuario=_id_usuario
and fecha_apertura=_fecha_apertura$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cliente`(
in _id_cliente int(11)
)
update cliente set estado = 0
where id_cliente = _id_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_compra`(
in _id_compras int(11)
)
update compras set estado = 0
where id_compras=_id_compras$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_concepto_movimiento`(
in _id_concepto_movimiento int(11)
)
update concepto_movimiento set estado=0
where id_concepto_movimiento=_id_concepto_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cronograma_cobro`(
in _id_cronograma_cobro int(11)
)
update cronograma_cobro set estado = 0
where id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cronograma_pago`(
in _id_cronograma_pago int(11)
)
update cronograma_pago set estado = 0
where id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_forma_pago`(
in _id_forma_pago int(11)
)
update forma_pago set estado = 0 where id_forma_pago=_id_forma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_libro`(
in _id_libro int(11)
)
update libro set estado = 0
where id_libro = _id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_marca`(
in _id_marca int(11)
)
update marca set estado = 0
where id_marca = _id_marca$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_menu`(
in _id_menu int(11)
)
update menu set estado=0
where id_menu=_id_menu$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_movimiento`(
in _id_movimiento int(11)
)
update movimiento set estado=0
where id_movimiento=_id_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_perfil`(
in _id_perfil int(11)
)
update perfil set estado = 0
where id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_producto`(
in _id_producto int(11)
)
update producto set estado = 0
where id_producto = _id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_proveedor`(
in _id_proveedor int(11)
)
update proveedor set estado = 0
where id_proveedor = _id_proveedor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_tipo_cliente`(
in _id_tipo_cliente int(11)
)
update tipo_cliente set estado = 0
where tipo_cliente=_id_tipo_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_tipo_comprobante`(
in _id_tipo_comprobante int(11)
)
update tipo_comprobante set estado = 0
where id_tipo_comprobante=_id_tipo_comprobante$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_tipo_movimiento`(
in _id_tipo_movimiento int(11)
)
update tipo_movimiento set estado = 0
where id_tipo_movimiento=_id_tipo_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_tipo_producto`(
in _id_tipo_producto int(11)
)
update tipo_producto set estado = 0
where id_tipo_producto = _id_tipo_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_tipo_transaccion`(
in _id_tipo int(11)
)
update tipo_transaccion set estado=0 where id_tipo=_id_tipo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_ubigeo`(
in _id_ubigeo char(6)
)
update ubigeo set estado = 0 where id_ubigeo=_id_ubigeo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario`(
in _id_usuario int(11)
)
update usuario set estado = 0
where id_usuario = _id_usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_venta`(
in _id_ventas int(11)
)
update ventas set estado = 0
where id_ventas=_id_ventas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_acceso_perfil`(
in _id_menu int(11),
in _id_perfil int(11),
in _activo bit(1)
)
insert into acceso(id_menu,id_perfil,activo) values(_id_menu,_id_perfil,_activo)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_amortizacion_cobro`(
in _id_movimiento int(11),
in _id_cronograma_cobro int(11),
in _monto decimal(10,2)
)
insert into amortizacion_cobro(id_movimiento,id_cronograma_cobro,monto,estado) 
values(_id_movimiento,_id_cronograma_cobro,_monto,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_amortizacion_pago`(
in _id_movimiento int(11),
in _id_cronograma_pago int(11),
in _monto decimal(10,2)
)
insert into amortizacion_pago(id_movimiento,id_cronograma_pago,monto,estado) 
values(_id_movimiento,_id_cronograma_pago,_monto,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_caja`(
in _nro_caja int(11),
in _descripcion varchar(100)
)
insert into caja(nro_caja,descripcion,estado) 
values(_nro_caja,_descripcion,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_caja_usuario`(
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime
)
insert into caja_usuario(id_caja,id_usuario,fecha_apertura,estado)
values(_id_caja,_id_usuario,_fecha_apertura,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_cliente`(
in _id_tipo int(11),
in _id_ubigeo char(6),
in _nombres varchar(100),
in _apellidos varchar(100),
in _ruc char(11),
in _razon_social varchar(100),
in _dni char(8),
in _direccion varchar(100),
in _email varchar(100),
in _fecha_nacimiento date,
in _tel_fijo char(6),
in _tel_movil char(9),
in _genero varchar(50),
in _estado_civil varchar(20),
in _nivel_estudio varchar(40),
in _profesion varchar(50),
in _nivel_ingreso decimal(10,2),
in _nro_hijos int(11),
in _facebook varchar(100)
)
insert into cliente (id_tipo,id_ubigeo,nombres,apellidos,ruc,razon_social,dni,
direccion,email,fecha_nacimiento,tel_fijo,tel_movil,genero,estado_civil,nivel_estudio,
profesion,nivel_ingreso,nro_hijos,facebook,estado)
values(_id_tipo,_id_ubigeo,_nombres,_apellidos,_ruc,_razon_social,_dni,_direccion,_email,
_fecha_nacimiento,_tel_fijo,_tel_movil,_genero,_estado_civil,_nivel_estudio,_profesion,
_nivel_ingreso,_nro_hijos,_facebook,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_compra`(
in _fecha datetime,
in _id_proveedor int(11),
in _id_usuario int(11),
in _id_tipo_transaccion int(11)
)
insert into compras(fecha,id_proveedor,id_usuario,id_tipo_transaccion,estado)
values(_fecha,_id_proveedor,_id_usuario,_id_tipo_transaccion,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_concepto_movimiento`(
in _id_tipo_movimiento int(11),
in _concepto_movimiento varchar(50)
)
insert into concepto_movimiento(id_tipo_movimiento,concepto_movimiento,estado)
values(_id_tipo_movimiento,_concepto_movimiento,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_cronograma_cobro`(
in _id_venta int(11),
in _fecha_vencimiento datetime,
in _cuota int(11),
in _monto decimal(10,2)
)
insert into cronograma_cobro(id_venta,fecha_vencimiento,cuota,monto,estado)
values(_id_venta,_fecha_vencimiento,_cuota,_monto,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_cronograma_pago`(
in _id_compra int(11),
in _fecha_vencimiento datetime,
in _cuota int(11),
in _monto decimal(10,2)
)
insert into cronograma_pago(id_compra,fecha_vencimiento,cuota,monto,estado)
values(_id_compra,_fecha_vencimiento,_cuota,_monto,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_detalle_compra_libro`(
in _id_compra int(11),
in _id_libro int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2)
)
insert into detalle_compra_libro(id_compra,id_libro,cantidad,precio,descuento,igv)
values(_id_compra,_id_libro,_cantidad,_precio,_descuento,_igv)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_detalle_compra_producto`(
in _id_compra int(11),
in _id_producto int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2)
)
insert into detalle_compra_producto(id_compra,id_producto,cantidad,precio,descuento,
igv) values(_id_compra,_id_producto,_cantidad,_precio,_descuento,_igv)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_detalle_venta_libros`(
in _id_venta int(11),
in _id_libro int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2),
in _utilidad decimal(10,2)
)
insert into detalle_venta_libros(id_venta,id_libro,cantidad,precio,descuento,
igv,utilidad) values(_id_venta,_id_libro,_cantidad,_precio,_descuento,
_igv,_utilidad)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_detalle_venta_producto`(
in _id_venta int(11),
in _id_producto int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2),
in _utilidad decimal(10,2)
)
insert into detalle_venta_producto(id_venta,id_producto,cantidad,precio,descuento,
igv,utilidad) values(_id_venta,_id_producto,_cantidad,_precio,_descuento,
_igv,_utilidad)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_forma_pago`(
in _forma_pago varchar(50)
)
insert into forma_pago(forma_pago,estado) values(_forma_pago,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_libros`(
in _titulo varchar(100),
in _autores varchar(100),
in _especializacion varchar(100),
in _editorial varchar(100),
in _genero varchar(100),
in _edicion varchar(100),
in _isbn varchar(30),
in _precio decimal(10,2),
in _stock_minimo int(11),
in _stock_maximo int(11)
)
insert into libro(titulo,autores,especializacion,editorial,genero,edicion,isbn,precio,
stock_minimo,stock_maximo,estado) values(_titulo,_autores,_especializacion,_editorial,_genero,
_edicion,_isbn,_precio,_stock_minimo,_stock_maximo,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_marca`(
in _marca varchar(50)
)
insert into marca(marca,estado)
values(_marca,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_menu`(
in _modulo varchar(50),
in _id_padre int(11)
)
insert into menu(modulo,id_padre,estado) values(_modulo,_id_padre,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_movimiento`(
in _id_concepto_movimiento int(11),
in _id_tipo_comprobante int(11),
in _id_forma_pago int(11),
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime,
in _nro_serie char(4),
in _nro_correlativo char(8),
in _monto decimal(10,2)
)
insert into movimiento(id_concepto_movimiento,id_tipo_comprobante,id_forma_pago,
id_caja,id_usuario,fecha_apertura,nro_serie,nro_correlativo,monto,estado) 
values(_id_concepto_movimiento,_id_tipo_comprobante,_id_forma_pago,
_id_caja,_id_usuario,_fecha_apertura,_nro_serie,_nro_correlativo,_monto,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_perfil`(
in _tipo_perfil varchar(50)
)
insert into perfil(tipo_perfil,estado) values(_tipo_perfil,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_proveedor`(
in _id_ubigeo char(6),
in _razon_social varchar(100),
in _ruc char(11),
in _direccion varchar(100),
in _tel_fijo char(6),
in _tel_movil char(9),
in _email varchar(100),
in _descripcion varchar(255)
)
insert into proveedor(id_ubigeo,razon_social,ruc,direccion,tel_fijo,tel_movil,
email,descripcion,estado) values(_id_ubigeo,_razon_social,_ruc,_direccion,_tel_fijo,_tel_movil,
_email,_descripcion,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_tipo_cliente`(
in _tipo_cliente varchar(50)
)
insert into tipo_cliente(tipo_cliente,estado) values(_tipo_cliente,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_tipo_comprobante`(
in _tipo_comprobante int(11)
)
insert into tipo_comprobante(tipo_comprobante,nro_serie,nro_correlativo,estado) 
values(_tipo_comprobante,"0000","00000000",1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_tipo_movimiento`(
in _tipo_movimiento varchar(50)
)
insert into tipo_movimiento(tipo_movimiento,estado) values(_tipo_movimiento,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_tipo_producto`(
in _tipo_producto varchar(50)
)
insert into tipo_producto(tipo_producto,estado)values(_tipo_producto,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_tipo_transaccion`(
in _id_tipo int(11),
in _tipo_transaccion varchar(30)
)
insert into tipo_transaccion(tipo_transaccion,estado) values(_tipo_transaccion,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_ubigeo`(
in _id_ubigeo char(6),
in _nombre_ciudad varchar(50)
)
insert into ubigeo(id_ubigeo,nombre_ciudad,estado) values(_id_ubigeo,_nombre_ciudad,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_usuario`(
in _id_perfil int(11),
in _id_ubigeo int(11),
in _nombres varchar(100),
in _apellidos varchar(100),
in _dni char(8),
in _direccion varchar(100),
in _email varchar(100),
in _fecha_nacimiento date,
in _tel_fijo char(6),
in _tel_movil char(9), 
in _genero varchar(50),
in _usuario varchar(50),
in _clave varchar(100)
)
insert into usuario (
 id_perfil,id_ubigeo,nombres,apellidos,dni,direccion,email,
 fecha_nacimiento,tel_fijo,tel_movil,genero,usuario,clave,estado) 
 values(_id_perfil,_id_ubigeo,_nombres,_apellidos,_dni,_direccion,_email,_fecha_nacimiento,
 _tel_fijo,_tel_movil,_genero,_usuario,_clave,1
 )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_venta`(
in _fecha datetime,
in _id_usuario int(11),
in _id_cliente int(11),
in _id_tipo_transaccion int(11)
)
insert into ventas(fecha,id_usuario,id_cliente,id_tipo_transaccion,estado) 
values(_fecha,_id_usuario,_id_cliente,_id_tipo_transaccion,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `isertar_producto`(
in _id_tipo_producto int(11),
in _id_marca int(11),
in _producto varchar(50),
in _unidad_medida varchar(20),
in _precio decimal(10,2),
in _stock_minimo int(11),
in _stock_maximo int(11)
)
insert into producto(id_tipo_producto,id_marca,producto,unidad_medida,precio,
stock_minimo,stock_maximo,estado)values(_id_tipo_producto,_id_marca,_producto,_unidad_medida,_precio,
_stock_minimo,_stock_maximo,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_acceso_perfil`(
in _id_menu int(11),
in _id_perfil int(11),
in _activo bit(1)
)
update acceso set id_menu=_id_menu,id_perfil=_id_perfil, activo=_activo 
where id_menu=_id_menu and id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_amortizacion_cobro`(
in _id_movimiento int(11),
in _id_cronograma_cobro int(11),
in _monto decimal(10,2)
)
update amortizacion_cobro set id_movimiento=_id_movimiento,
id_cronograma_cobro=_id_cronograma_cobro,monto=_monto
where id_movimiento=_id_movimiento 
and id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_amortizacion_pago`(
in _id_movimiento int(11),
in _id_cronograma_pago int(11),
in _monto decimal(10,2)
)
update amortizacion_pago set id_movimiento=_id_movimiento,
id_cronograma_pago=_id_cronograma_pago,monto=_monto
where id_movimiento=_id_movimiento 
and id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_caja`(
in _id_caja int(11),
in _nro_caja int(11),
in _descripcion varchar(100)
)
update caja set nro_caja=_nro_caja,descripcion=_descripcion
where id_caja=_id_caja$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_caja_usuario`(
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime
)
update caja_usuario set id_caja=_id_caja,id_usuario=_id_usuario,
fecha_apertura=_fecha_apertura 
where id_caja=_id_caja
and id_usuario=_id_usuario
and fecha_apertura=_fecha_apertura$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cliente`(
in _id_cliente int(11),
in _id_tipo int(11),
in _id_ubigeo char(6),
in _nombres varchar(100),
in _apellidos varchar(100),
in _ruc char(11),
in _razon_social varchar(100),
in _dni char(8),
in _direccion varchar(100),
in _email varchar(100),
in _fecha_nacimiento date,
in _tel_fijo char(6),
in _tel_movil char(9),
in _genero varchar(50),
in _estado_civil varchar(20),
in _nivel_estudio varchar(40),
in _profesion varchar(50),
in _nivel_ingreso decimal(10,2),
in _nro_hijos int(11),
in _facebook varchar(100)
)
update cliente set id_tipo=_id_tipo,id_ubigeo=_id_ubigeo,nombres=_nombres,apellidos=_apellidos,
ruc=_ruc,razon_social=_razon_social,dni=_dni,direccion=_direccion,email=_email,
fecha_nacimiento=_fecha_nacimiento,tel_fijo=_tel_fijo,tel_movil=_tel_movil,genero=_genero,
estado_civil=_estado_civil,nivel_estudio=_nivel_estudio,profesion=_profesion,
nivel_ingreso=_nivel_ingreso,nro_hijos=_nro_hijos,facebook=_facebook
where id_cliente = _id_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_compra`(
in _id_compras int(11),
in _fecha datetime,
in _id_proveedor int(11),
in _id_usuario int(11),
in _id_tipo_transaccion int(11)
)
update compras set fecha=_fecha,id_proveedor=_id_proveedor,
id_usuario=_id_usuario,id_tipo_transaccion=_id_tipo_transaccion
where id_compras=_id_compras$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_concepto_movimiento`(
in _id_concepto_movimiento int(11),
in _id_tipo_movimiento int(11),
in _concepto_movimiento varchar(50)
)
update concepto_movimiento set id_tipo_movimiento=_id_tipo_movimiento,
concepto_movimiento=_concepto_movimiento
where id_concepto_movimiento=_id_concepto_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cronograma_cobro`(
in _id_cronograma_cobro int(11),
in _id_venta int(11),
in _fecha_vencimiento datetime,
in _cuota int(11),
in _monto decimal(10,2)
)
update cronograma_cobro set id_venta=_id_venta,fecha_vencimiento=_fecha_vencimiento,
cuota=_cuota,monto=_monto
 where id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cronograma_pago`(
in _id_cronograma_pago int(11),
in _id_compra int(11),
in _fecha_vencimiento datetime,
in _cuota int(11),
in _monto decimal(10,2)
)
update cronograma_pago set id_compra=_id_compra,fecha_vencimiento=_fecha_vencimiento,
cuota=_cuota,monto=_monto
 where id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_detalle_compra_libro`(
in _id_compra int(11),
in _id_libro int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2)
)
update detalle_compra_libro
set id_compra=_id_compra,id_libro=_id_libro,cantidad=_cantidad,precio=_precio,
descuento=_descuento,igv=_igv
where id_compra=_id_compra and id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_detalle_compra_producto`(
in _id_compra int(11),
in _id_producto int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2)
)
update detalle_compra_producto
set id_compra=_id_compra,id_producto=_id_producto,cantidad=_cantidad,precio=_precio,
descuento=_descuento,igv=_igv
where id_compra=_id_compra and id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_detalle_venta_libros`(
in _id_venta int(11),
in _id_libro int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2),
in _utilidad decimal(10,2)
)
update detalle_venta_libros
set id_venta=_id_venta,id_libro=_id_libro,cantidad=_cantidad,precio=_precio,
descuento=_descuento,igv=_igv,utilidad=_utilidad
where id_venta=_id_venta and id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_detalle_venta_producto`(
in _id_venta int(11),
in _id_producto int(11),
in _cantidad int(11),
in _precio decimal(10,2),
in _descuento decimal(10,2),
in _igv decimal(10,2),
in _utilidad decimal(10,2)
)
update detalle_venta_producto
set id_venta=_id_venta,id_producto=_id_producto,cantidad=_cantidad,precio=_precio,
descuento=_descuento,igv=_igv,utilidad=_utilidad
where id_venta=_id_venta and id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_forma_pago`(
in _id_forma_pago int(11),
in _forma_pago varchar(50)
)
update forma_pago set forma_pago = _forma_pago where id_forma_pago=_id_forma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_libro`(
in _id_libro int(11),
in _titulo varchar(100),
in _autores varchar(100),
in _especializacion varchar(100),
in _editorial varchar(100),
in _genero varchar(100),
in _edicion varchar(100),
in _isbn varchar(30),
in _precio decimal(10,2),
in _stock_minimo int(11),
in _stock_maximo int(11)
)
update libro set titulo=_titulo,autores=_autores,especializacion=_especializacion,
editorial=_editorial,genero=_genero,edicion=_edicion,isbn=_isbn,precio=_precio,
stock_minimo=_stock_minimo,stock_maximo=_stock_maximo
where id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_marca`(
_id_marca int(11),
_marca varchar(50)
)
update marca set marca=_marca
where id_marca=_id_marca$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_menu`(
in _id_menu int(11),
in _modulo varchar(50),
in _id_padre int(11)
)
update menu set modulo=_modulo,id_padre=_id_padre where id_menu=_id_menu$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_movimiento`(
in _id_movimiento int(11),
in _id_concepto_movimiento int(11),
in _id_tipo_comprobante int(11),
in _id_forma_pago int(11),
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime,
in _nro_serie char(4),
in _nro_correlativo char(8),
in _monto decimal(10,2)
)
update movimiento set id_concepto_movimiento=_id_concepto_movimiento,id_tipo_comprobante=_id_tipo_comprobante,
id_forma_pago=_id_forma_pago,id_caja=_id_caja,id_usuario=_id_usuario,fecha_apertura=_fecha_apertura,
nro_serie=_nro_serie,nro_correlativo=_nro_correlativo,monto=_monto
where id_movimiento=_id_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_perfil`(
in _id_perfil int(11), 
in _tipo_perfil varchar(50)
)
update perfil set tipo_perfil=_tipo_perfil  where id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_producto`(
in _id_producto int(11),
in _id_tipo_producto int(11),
in _id_marca int(11),
in _producto varchar(50),
in _unidad_medida varchar(20),
in _precio decimal(10,2),
in _stock_minimo int(11),
in _stock_maximo int(11)
)
update producto set id_tipo_producto=_id_tipo_producto,id_marca=_id_marca,
producto=_producto,unidad_medida=_unidad_medida,precio=_precio,stock_minimo=_stock_minimo,
stock_maximo=_stock_maximo
where id_producto = _id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_proveedor`(
in _id_proveedor int(11),
in _id_ubigeo char(6),
in _razon_social varchar(100),
in _ruc char(11),
in _direccion varchar(100),
in _tel_fijo char(6),
in _tel_movil char(9),
in _email varchar(100),
in _descripcion varchar(255)
)
update proveedor set id_ubigeo=_id_ubigeo,razon_social=_razon_social,ruc=_ruc,direccion=_direccion,
tel_fijo=_tel_fijo,tel_movil=_tel_movil,email=_email,descripcion=_descripcion
where id_proveedor=_id_proveedor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_tipo_cliente`(
in _id_tipo_cliente int(11), 
in _tipo_cliente varchar(50)
)
update tipo_cliente set tipo_cliente=_tipo_cliente  where tipo_cliente=_id_tipo_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_tipo_comprobante`(
in _id_tipo_comprobante int(11),
in _tipo_comprobante int(11)
)
update tipo_comrobante set tipo_comrobante=_tipo_comprobante
where id_tipo_comprobante=_id_tipo_comprobante$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_tipo_movimiento`(
in _id_tipo_movimiento int(11),
in _tipo_movimiento varchar(50)
)
update tipo_movimiento set tipo_movimiento=_tipo_movimiento
where id_tipo_movimiento=_id_tipo_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_tipo_producto`(
_id_tipo_producto int(11),
_tipo_producto varchar(50)
)
update tipo_producto set tipo_producto=_tipo_producto
where id_tipo_producto=_id_tipo_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_tipo_transaccion`(
in _id_tipo int(11),
in _tipo_transaccion varchar(30)
)
update tipo_transaccion set tipo_transaccion=_tipo_transaccion where id_tipo=_id_tipo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_ubigeo`(
in _id_ubigeo char(6),
in _nombre_ciudad varchar(50)
)
update ubigeo set nombre_ciudad = _nombre_ciudad
where id_ubigeo=_id_ubigeo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_usuario`(
in _id_usuario int(11),
in _id_perfil int(11),
in _id_ubigeo int(11),
in _nombres varchar(100),
in _apellidos varchar(100),
in _dni char(8),
in _direccion varchar(100),
in _email varchar(100),
in _fecha_nacimiento date,
in _tel_fijo char(6),
in _tel_movil char(9), 
in _genero varchar(50),
in _usuario varchar(50),
in _clave varchar(100)
)
update usuario set
id_perfil=_id_perfil,id_ubigeo=_id_ubigeo,nombres=_nombres,apellidos=_apellidos,dni=_dni,
direccion=_direccion,email=_email,fecha_nacimiento=_fecha_nacimiento,tel_fijo=_tel_fijo,
tel_movil=_tel_movil,genero=_genero,usuario=_usuario,clave=_clave
where id_usuario=_id_usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_venta`(
in _id_ventas int(11),
in _fecha datetime,
in _id_usuario int(11),
in _id_cliente int(11),
in _id_tipo_transaccion int(11)
)
update ventas set fecha=_fecha,id_usuario=_id_usuario,id_cliente=_id_cliente,
id_tipo_transaccion = _id_tipo_transaccion
where id_ventas = _id_ventas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_acceso_perfil`(
in _id_menu int(11),
in _id_perfil int(11)
)
delete from acceso where id_menu=_id_menu and id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_amortizacion_cobro`(
in _id_movimiento int(11),
in _id_cronograma_cobro int(11)
)
delete from amortizacion_cobro where id_movimiento=_id_movimiento 
and id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_amortizacion_pago`(
in _id_movimiento int(11),
in _id_cronograma_pago int(11)
)
delete from amortizacion_pago where id_movimiento=_id_movimiento 
and id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_caja`(
in _id_caja int(11)
)
delete from caja where id_caja=_id_caja$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_caja_usuario`(
in _id_caja int(11),
in _id_usuario int(11),
in _fecha_apertura datetime
)
delete from caja_usuario
where id_caja=_id_caja
and id_usuario=_id_usuario
and fecha_apertura=_fecha_apertura$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_cliente`(
in _id_cliente int(11)
)
delete from cliente where id_cliente = _id_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_compra`(
in _id_compras int(11)
)
delete from compras 
where id_compras = _id_compras$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_concepto_movimiento`(
in _id_concepto_movimiento int(11)
)
delete from concepto_movimiento where id_concepto_movimiento=_id_concepto_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_cronograma_cobro`(
in _id_cronograma_cobro int(11)
)
delete from cronograma_cobro where id_cronograma_cobro=_id_cronograma_cobro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_cronograma_pago`(
in _id_cronograma_pago int(11)
)
delete from cronograma_pago where id_cronograma_pago=_id_cronograma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_detalle_compra_libros`(
in _id_venta int(11),
in _id_libro int(11)
)
delete from detalle_compra_libro
where id_venta=_id_venta and id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_detalle_compra_producto`(
in _id_compra int(11),
in _id_producto int(11)
)
delete from detalle_compra_producto
where id_compra=_id_compra and id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_detalle_venta_libros`(
in _id_venta int(11),
in _id_libro int(11)
)
delete from detalle_venta_libro
where id_venta=_id_venta and id_libro=_id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_detalle_venta_producto`(
in _id_venta int(11),
in _id_producto int(11)
)
delete from detalle_venta_producto
where id_venta=_id_venta and id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_forma_pago`(
in _id_forma_pago int(11)
)
delete from forma_pago where id_forma_pago=_id_forma_pago$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_libro`(
in _id_libro int(11)
)
delete from libro where id_libro = _id_libro$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_marca`(
in _id_marca int(11)
)
delete from marca where id_marca = _id_marca$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_menu`(
in _id_menu int(11)
)
delete from menu where id_menu=_id_menu$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_movimiento`(
in _id_movimiento int(11)
)
delete from movimiento where id_movimiento=_id_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_perfil`(
in _id_perfil int(11)
)
delete from perfil where id_perfil=_id_perfil$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_producto`(
in _id_producto int(11)
)
delete from producto where id_producto = _id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_proveedor`(
in _id_proveedor int(11)
)
delete from proveedor where id_proveedor = _id_proveedor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_tipo_cliente`(
in _id_tipo_cliente int(11)
)
delete from tipo_cliente where tipo_cliente=_id_tipo_cliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_tipo_comprobante`(
in _id_tipo_comprobante int(11)
)
delete from tipo_comprobante where id_tipo_comprobante=_id_tipo_comprobante$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_tipo_movimiento`(
in _id_tipo_movimiento int(11)
)
delete from tipo_movimiento where id_tipo_movimiento=_id_tipo_movimiento$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_tipo_producto`(
in _id_tipo_producto int(11)
)
delete from tipo_producto where id_tipo_producto = _id_tipo_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_tipo_transaccion`(
in _id_tipo int(11)
)
delete from tipo_transaccion where id_tipo=_id_tipo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_ubigeo`(
in _id_ubigeo char(6)
)
delete from ubigeo where id_ubigeo=_id_ubigeo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_usuario`(
in _id_usuario int(11)
)
delete from usuario where id_usuario = _id_usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suprimir_venta`(
in _id_ventas int(11)
)
delete from ventas
where id_ventas=_id_ventas$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE IF NOT EXISTS `acceso` (
  `id_menu` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `activo` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amortizacion_cobro`
--

CREATE TABLE IF NOT EXISTS `amortizacion_cobro` (
  `id_movimiento` int(11) NOT NULL,
  `id_cronograma_cobro` int(11) NOT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amortizacion_pago`
--

CREATE TABLE IF NOT EXISTS `amortizacion_pago` (
  `id_movimiento` int(11) NOT NULL,
  `id_cronograma_pago` int(11) NOT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE IF NOT EXISTS `caja` (
  `id_caja` int(11) NOT NULL,
  `nro_caja` int(11) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_usuario`
--

CREATE TABLE IF NOT EXISTS `caja_usuario` (
  `id_caja` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_apertura` datetime NOT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_ubigeo` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruc` char(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `razon_social` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `tel_fijo` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_movil` char(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `genero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado_civil` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel_estudio` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profesion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel_ingreso` decimal(10,2) DEFAULT NULL,
  `nro_hijos` int(11) DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `id_tipo`, `id_ubigeo`, `nombres`, `apellidos`, `ruc`, `razon_social`, `dni`, `direccion`, `email`, `fecha_nacimiento`, `tel_fijo`, `tel_movil`, `genero`, `estado_civil`, `nivel_estudio`, `profesion`, `nivel_ingreso`, `nro_hijos`, `facebook`, `estado`) VALUES
(1, 1, '220910', 'Sandy', 'Tuanama Salas', NULL, NULL, '47194793', 'Pje Las Sombrillas', 'sandytuasalas@gmail.com', '1992-08-01', NULL, '967915543', 'Femenino', 'Soltera', 'Tecnico Superior', 'Tecnica en Contabilidad', '1500.00', 0, 'Sandy Tuanama', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `id_compras` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_tipo_transaccion` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto_movimiento`
--

CREATE TABLE IF NOT EXISTS `concepto_movimiento` (
  `id_concepto_movimiento` int(11) NOT NULL,
  `id_tipo_movimiento` int(11) DEFAULT NULL,
  `concepto_movimiento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma_cobro`
--

CREATE TABLE IF NOT EXISTS `cronograma_cobro` (
  `id_cronograma_cobro` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `cuota` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma_pago`
--

CREATE TABLE IF NOT EXISTS `cronograma_pago` (
  `id_cronograma_pago` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `cuota` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra_libro`
--

CREATE TABLE IF NOT EXISTS `detalle_compra_libro` (
  `id_compra` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra_producto`
--

CREATE TABLE IF NOT EXISTS `detalle_compra_producto` (
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_libros`
--

CREATE TABLE IF NOT EXISTS `detalle_venta_libros` (
  `id_venta` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL,
  `utilidad` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_producto`
--

CREATE TABLE IF NOT EXISTS `detalle_venta_producto` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL,
  `utilidad` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE IF NOT EXISTS `forma_pago` (
  `id_forma_pago` int(11) NOT NULL,
  `forma_pago` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE IF NOT EXISTS `libro` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autores` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `especializacion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `editorial` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `genero` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edicion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `isbn` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `stock_maximo` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `titulo`, `autores`, `especializacion`, `editorial`, `genero`, `edicion`, `isbn`, `precio`, `stock_minimo`, `stock_maximo`, `estado`) VALUES
(1, 'Padre Rico, Padre Pobre', 'Robert Kiyosaki and Sharon Lechter', 'Finanzas', 'Time & Money', 'Informativo', '12 edicion', NULL, '15.00', 5, 50, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL,
  `modulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE IF NOT EXISTS `movimiento` (
  `id_movimiento` int(11) NOT NULL,
  `id_concepto_movimiento` int(11) DEFAULT NULL,
  `id_tipo_comprobante` int(11) DEFAULT NULL,
  `id_forma_pago` int(11) DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_apertura` datetime DEFAULT NULL,
  `nro_serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_correlativo` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL,
  `tipo_perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `tipo_perfil`, `estado`) VALUES
(1, 'Administrador', b'1'),
(2, 'Cajero', b'1'),
(3, 'Vendedor', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL,
  `id_tipo_producto` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `producto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `unidad_medida` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `stock_maximo` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `id_ubigeo` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `razon_social` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruc` char(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_fijo` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_movil` char(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `id_ubigeo`, `razon_social`, `ruc`, `direccion`, `tel_fijo`, `tel_movil`, `email`, `descripcion`, `estado`) VALUES
(1, '220101', 'Centro del libro SAC', '20145789632', 'Jr Moyobamba 1455', '547896', '987654321', 'centrolibro@gmail.com', 'Venta de todo tipo de libros', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE IF NOT EXISTS `tipo_cliente` (
  `id_tipo_cliente` int(11) NOT NULL,
  `tipo_cliente` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`id_tipo_cliente`, `tipo_cliente`, `estado`) VALUES
(1, 'Persona natural', b'1'),
(2, 'Persona juridica', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

CREATE TABLE IF NOT EXISTS `tipo_comprobante` (
  `id_tipo_comprobante` int(11) NOT NULL,
  `tipo_comprobante` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_serie` char(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_correlativo` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_comprobante`
--

INSERT INTO `tipo_comprobante` (`id_tipo_comprobante`, `tipo_comprobante`, `nro_serie`, `nro_correlativo`, `estado`) VALUES
(1, 'Boleta', '0000', '000000', b'1'),
(2, 'Factura', '0000', '000000', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE IF NOT EXISTS `tipo_movimiento` (
  `id_tipo_movimiento` int(11) NOT NULL,
  `tipo_movimiento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_movimiento`
--

INSERT INTO `tipo_movimiento` (`id_tipo_movimiento`, `tipo_movimiento`, `estado`) VALUES
(1, 'Ingresos', b'1'),
(2, 'Egresos', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE IF NOT EXISTS `tipo_producto` (
  `id_tipo_producto` int(11) NOT NULL,
  `tipo_producto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transaccion`
--

CREATE TABLE IF NOT EXISTS `tipo_transaccion` (
  `id_tipo` int(11) NOT NULL,
  `tipo_transaccion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_transaccion`
--

INSERT INTO `tipo_transaccion` (`id_tipo`, `tipo_transaccion`, `estado`) VALUES
(1, 'Contado', b'1'),
(2, 'Credito', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo`
--

CREATE TABLE IF NOT EXISTS `ubigeo` (
  `id_ubigeo` char(6) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_ciudad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ubigeo`
--

INSERT INTO `ubigeo` (`id_ubigeo`, `nombre_ciudad`, `estado`) VALUES
('220101', 'Moyobamba', b'1'),
('220102', 'Calzada', b'1'),
('220103', 'Habana', b'1'),
('220104', 'Jepelacio', b'1'),
('220105', 'Soritor', b'1'),
('220106', 'Yantalo', b'1'),
('220201', 'Bellavista', b'1'),
('220202', 'Alto Biavo', b'1'),
('220203', 'Bajo Biavo', b'1'),
('220204', 'Huallaga', b'1'),
('220205', 'San Pablo', b'1'),
('220206', 'San Rafael', b'1'),
('220301', 'San José de Sisa', b'1'),
('220302', 'Agua Blanca', b'1'),
('220303', 'San Martín', b'1'),
('220304', 'Santa Rosa', b'1'),
('220305', 'Shatoja', b'1'),
('220401', 'Saposoa', b'1'),
('220402', 'Alto Saposoa', b'1'),
('220403', 'El Eslabón', b'1'),
('220404', 'Piscoyacu', b'1'),
('220405', 'Sacanche', b'1'),
('220406', 'Tingo de Saposoa', b'1'),
('220501', 'Lamas', b'1'),
('220502', 'Alonso de Alvarado', b'1'),
('220503', 'Barranquita', b'1'),
('220504', 'Caynarachi', b'1'),
('220505', 'Cuñumbuqui', b'1'),
('220506', 'Pinto Recodo', b'1'),
('220507', 'Rumisapa', b'1'),
('220508', 'San Roque de Cumbaza', b'1'),
('220509', 'Shanao', b'1'),
('220510', 'Tabalosos', b'1'),
('220511', 'Zapatero', b'1'),
('220601', 'Juanjuí', b'1'),
('220602', 'Campanilla', b'1'),
('220603', 'Huicungo', b'1'),
('220604', 'Pachiza', b'1'),
('220605', 'Pajarillo', b'1'),
('220701', 'Picota', b'1'),
('220702', 'Buenos Aires', b'1'),
('220703', 'Caspisapa', b'1'),
('220704', 'Pilluana', b'1'),
('220705', 'Pucacaca', b'1'),
('220706', 'San Cristóbal', b'1'),
('220707', 'San Hilarión', b'1'),
('220708', 'Shamboyacu', b'1'),
('220709', 'Tingo de Ponasa', b'1'),
('220710', 'Tres Unidos', b'1'),
('220801', 'Rioja', b'1'),
('220802', 'Awajun', b'1'),
('220803', 'Elías Soplin Vargas', b'1'),
('220804', 'Nueva Cajamarca', b'1'),
('220805', 'Pardo Miguel', b'1'),
('220806', 'Posic', b'1'),
('220807', 'San Fernando', b'1'),
('220808', 'Yorongos', b'1'),
('220809', 'Yuracyacu', b'1'),
('220901', 'Tarapoto', b'1'),
('220902', 'Alberto Leveau', b'1'),
('220903', 'Cacatachi', b'1'),
('220904', 'Chazuta', b'1'),
('220905', 'Chipurana', b'1'),
('220906', 'El Porvenir', b'1'),
('220907', 'Huimbayoc', b'1'),
('220908', 'Juan Guerra', b'1'),
('220909', 'La Banda de Shilcayo', b'1'),
('220910', 'Morales', b'1'),
('220911', 'Papaplaya', b'1'),
('220912', 'San Antonio', b'1'),
('220913', 'Sauce', b'1'),
('220914', 'Shapaja', b'1'),
('221001', 'Tocache', b'1'),
('221002', 'Nuevo Progreso', b'1'),
('221003', 'Polvora', b'1'),
('221004', 'Shunte', b'1'),
('221005', 'Uchiza', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `id_ubigeo` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `tel_fijo` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_movil` char(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `genero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_perfil`, `id_ubigeo`, `nombres`, `apellidos`, `dni`, `direccion`, `email`, `fecha_nacimiento`, `tel_fijo`, `tel_movil`, `genero`, `usuario`, `clave`, `estado`) VALUES
(1, 1, '220901', 'Elier', 'Tuanama Salas', '76838363', 'Pje Las Sombrillas', 'eliertuanama@gmail.com', '1994-08-29', NULL, '952070267', 'Masculino', 'Elierts', '12345', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `id_ventas` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_tipo_transaccion` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id_menu`,`id_perfil`),
  ADD KEY `fk_perfil_acceso` (`id_perfil`);

--
-- Indices de la tabla `amortizacion_cobro`
--
ALTER TABLE `amortizacion_cobro`
  ADD PRIMARY KEY (`id_movimiento`,`id_cronograma_cobro`),
  ADD KEY `fk_cronograma_cobro_amortizacion_cobro` (`id_cronograma_cobro`);

--
-- Indices de la tabla `amortizacion_pago`
--
ALTER TABLE `amortizacion_pago`
  ADD PRIMARY KEY (`id_movimiento`,`id_cronograma_pago`),
  ADD KEY `fk_cronograma_pago_amortizacion_pago` (`id_cronograma_pago`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `caja_usuario`
--
ALTER TABLE `caja_usuario`
  ADD PRIMARY KEY (`id_caja`,`id_usuario`,`fecha_apertura`),
  ADD KEY `fk_usuario_caja_usuario` (`id_usuario`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_tipocliente_cliente` (`id_tipo`),
  ADD KEY `fk_ubigeo_cliente` (`id_ubigeo`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compras`),
  ADD KEY `fk_proveedor_compras` (`id_proveedor`),
  ADD KEY `fk_usuario_compras` (`id_usuario`),
  ADD KEY `fk_tipo_transaccion_compras` (`id_tipo_transaccion`);

--
-- Indices de la tabla `concepto_movimiento`
--
ALTER TABLE `concepto_movimiento`
  ADD PRIMARY KEY (`id_concepto_movimiento`),
  ADD KEY `fk_tipo_movimiento_concepto_movimiento` (`id_tipo_movimiento`);

--
-- Indices de la tabla `cronograma_cobro`
--
ALTER TABLE `cronograma_cobro`
  ADD PRIMARY KEY (`id_cronograma_cobro`),
  ADD KEY `fk_venta_cronograma_cobro` (`id_venta`);

--
-- Indices de la tabla `cronograma_pago`
--
ALTER TABLE `cronograma_pago`
  ADD PRIMARY KEY (`id_cronograma_pago`),
  ADD KEY `fk_compra_cronograma_pago` (`id_compra`);

--
-- Indices de la tabla `detalle_compra_libro`
--
ALTER TABLE `detalle_compra_libro`
  ADD PRIMARY KEY (`id_compra`,`id_libro`),
  ADD KEY `fk_libro_detalle_compra_libro` (`id_libro`);

--
-- Indices de la tabla `detalle_compra_producto`
--
ALTER TABLE `detalle_compra_producto`
  ADD PRIMARY KEY (`id_compra`,`id_producto`),
  ADD KEY `fk_producto_detalle_compra_producto` (`id_producto`);

--
-- Indices de la tabla `detalle_venta_libros`
--
ALTER TABLE `detalle_venta_libros`
  ADD PRIMARY KEY (`id_venta`,`id_libro`),
  ADD KEY `fk_libros_detalle_ventas_libros` (`id_libro`);

--
-- Indices de la tabla `detalle_venta_producto`
--
ALTER TABLE `detalle_venta_producto`
  ADD PRIMARY KEY (`id_venta`,`id_producto`),
  ADD KEY `fk_producto_detalle_venta_producto` (`id_producto`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`id_forma_pago`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `fk_menu2` (`id_padre`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `fk_concepto_movimiento_movimiento` (`id_concepto_movimiento`),
  ADD KEY `fk_tipo_comprobante_movimiento` (`id_tipo_comprobante`),
  ADD KEY `fk_forma_pago_movimiento` (`id_forma_pago`),
  ADD KEY `fk_caja_usuario_movimiento` (`id_caja`,`id_usuario`,`fecha_apertura`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_tipo_producto_producto` (`id_tipo_producto`),
  ADD KEY `fk_marca_producto` (`id_marca`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `fk_ubigeo_proveedor` (`id_ubigeo`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id_tipo_cliente`);

--
-- Indices de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  ADD PRIMARY KEY (`id_tipo_comprobante`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`id_tipo_movimiento`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`id_tipo_producto`);

--
-- Indices de la tabla `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
  ADD PRIMARY KEY (`id_ubigeo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_perfil_usuario` (`id_perfil`),
  ADD KEY `fk_ubigeo_usuario` (`id_ubigeo`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `fk_usuario_ventas` (`id_usuario`),
  ADD KEY `fk_cliente_ventas` (`id_cliente`),
  ADD KEY `fk_tipo_transaccion_ventas` (`id_tipo_transaccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compras` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cronograma_cobro`
--
ALTER TABLE `cronograma_cobro`
  MODIFY `id_cronograma_cobro` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cronograma_pago`
--
ALTER TABLE `cronograma_pago`
  MODIFY `id_cronograma_pago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `id_forma_pago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id_tipo_cliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  MODIFY `id_tipo_comprobante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  MODIFY `id_tipo_movimiento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  MODIFY `id_tipo_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `fk_menu_acceso` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `fk_perfil_acceso` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`);

--
-- Filtros para la tabla `amortizacion_cobro`
--
ALTER TABLE `amortizacion_cobro`
  ADD CONSTRAINT `fk_cronograma_cobro_amortizacion_cobro` FOREIGN KEY (`id_cronograma_cobro`) REFERENCES `cronograma_cobro` (`id_cronograma_cobro`),
  ADD CONSTRAINT `fk_movimiento_amortizacion_cobro` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`);

--
-- Filtros para la tabla `amortizacion_pago`
--
ALTER TABLE `amortizacion_pago`
  ADD CONSTRAINT `fk_cronograma_pago_amortizacion_pago` FOREIGN KEY (`id_cronograma_pago`) REFERENCES `cronograma_pago` (`id_cronograma_pago`),
  ADD CONSTRAINT `fk_movimiento_amortizacion_pago` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`);

--
-- Filtros para la tabla `caja_usuario`
--
ALTER TABLE `caja_usuario`
  ADD CONSTRAINT `fk_caja_caja_usuario` FOREIGN KEY (`id_caja`) REFERENCES `caja` (`id_caja`),
  ADD CONSTRAINT `fk_usuario_caja_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_tipocliente_cliente` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_cliente` (`id_tipo_cliente`),
  ADD CONSTRAINT `fk_ubigeo_cliente` FOREIGN KEY (`id_ubigeo`) REFERENCES `ubigeo` (`id_ubigeo`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_proveedor_compras` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `fk_tipo_transaccion_compras` FOREIGN KEY (`id_tipo_transaccion`) REFERENCES `tipo_transaccion` (`id_tipo`),
  ADD CONSTRAINT `fk_usuario_compras` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `concepto_movimiento`
--
ALTER TABLE `concepto_movimiento`
  ADD CONSTRAINT `fk_tipo_movimiento_concepto_movimiento` FOREIGN KEY (`id_tipo_movimiento`) REFERENCES `tipo_movimiento` (`id_tipo_movimiento`);

--
-- Filtros para la tabla `cronograma_cobro`
--
ALTER TABLE `cronograma_cobro`
  ADD CONSTRAINT `fk_venta_cronograma_cobro` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_ventas`);

--
-- Filtros para la tabla `cronograma_pago`
--
ALTER TABLE `cronograma_pago`
  ADD CONSTRAINT `fk_compra_cronograma_pago` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compras`);

--
-- Filtros para la tabla `detalle_compra_libro`
--
ALTER TABLE `detalle_compra_libro`
  ADD CONSTRAINT `fk_compra_detalle_compra_libro` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compras`),
  ADD CONSTRAINT `fk_libro_detalle_compra_libro` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`);

--
-- Filtros para la tabla `detalle_compra_producto`
--
ALTER TABLE `detalle_compra_producto`
  ADD CONSTRAINT `fk_compra_detalle_compra_producto` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compras`),
  ADD CONSTRAINT `fk_producto_detalle_compra_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `detalle_venta_libros`
--
ALTER TABLE `detalle_venta_libros`
  ADD CONSTRAINT `fk_libros_detalle_ventas_libros` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`),
  ADD CONSTRAINT `fk_ventas_detalle_ventas_libros` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_ventas`);

--
-- Filtros para la tabla `detalle_venta_producto`
--
ALTER TABLE `detalle_venta_producto`
  ADD CONSTRAINT `fk_producto_detalle_venta_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `fk_venta_detalle_venta_producto` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_ventas`);

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu2` FOREIGN KEY (`id_padre`) REFERENCES `menu` (`id_menu`);

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `fk_caja_usuario_movimiento` FOREIGN KEY (`id_caja`, `id_usuario`, `fecha_apertura`) REFERENCES `caja_usuario` (`id_caja`, `id_usuario`, `fecha_apertura`),
  ADD CONSTRAINT `fk_concepto_movimiento_movimiento` FOREIGN KEY (`id_concepto_movimiento`) REFERENCES `concepto_movimiento` (`id_concepto_movimiento`),
  ADD CONSTRAINT `fk_forma_pago_movimiento` FOREIGN KEY (`id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`),
  ADD CONSTRAINT `fk_tipo_comprobante_movimiento` FOREIGN KEY (`id_tipo_comprobante`) REFERENCES `tipo_comprobante` (`id_tipo_comprobante`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_marca_producto` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  ADD CONSTRAINT `fk_tipo_producto_producto` FOREIGN KEY (`id_tipo_producto`) REFERENCES `tipo_producto` (`id_tipo_producto`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_ubigeo_proveedor` FOREIGN KEY (`id_ubigeo`) REFERENCES `ubigeo` (`id_ubigeo`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_perfil_usuario` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`),
  ADD CONSTRAINT `fk_ubigeo_usuario` FOREIGN KEY (`id_ubigeo`) REFERENCES `ubigeo` (`id_ubigeo`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_cliente_ventas` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_tipo_transaccion_ventas` FOREIGN KEY (`id_tipo_transaccion`) REFERENCES `tipo_transaccion` (`id_tipo`),
  ADD CONSTRAINT `fk_usuario_ventas` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
