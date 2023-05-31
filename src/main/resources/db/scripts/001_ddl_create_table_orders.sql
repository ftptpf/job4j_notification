CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY NOT NULL ,
    oder_id INTEGER NOT NULL ,
    cost INTEGER CHECK ( cost >= 0 ) ,
    time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE orders IS 'Заказы';
COMMENT ON COLUMN orders.id IS 'Идентификатор заказа';
COMMENT ON COLUMN orders.oder_id IS 'Идентификатор заказа пользователя';
COMMENT ON COLUMN orders.cost IS 'Стоимость заказа пользователя';
COMMENT ON COLUMN orders.time IS 'Время получения уведомления о размещенном заказе';
