CREATE TABLE IF NOT EXISTS orders (
    order_id INTEGER NOT NULL ,
    dish_id INTEGER NOT NULL
);

COMMENT ON TABLE orders IS 'Заказы';
COMMENT ON COLUMN orders.order_id IS 'Идентификатор заказа';
COMMENT ON COLUMN orders.dish_id IS 'Идентификатор заказанного блюда';
