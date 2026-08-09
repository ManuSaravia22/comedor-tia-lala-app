-trae todo lo que necesito mostrar
SELECT pedidos.id_pedido, clientes.nombre AS cliente, catalogo_platillos.nombre AS platillo, detalle_pedido.cantidad, pedidos.total_pagar
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN detalle_pedido ON pedidos.id_pedido = detalle_pedido.id_pedido
JOIN menu_diario ON detalle_pedido.id_menu = menu_diario.id_menu
JOIN catalogo_platillos ON menu_diario.id_platillo = catalogo_platillos.id_platillo;
-comsultas que tambien me serviran
SELECT 
  SUM(CASE WHEN tipo_movimiento = 'CARGO' THEN monto ELSE -monto END) AS saldo_fiado
FROM historial_credito
WHERE id_cliente = 1;
