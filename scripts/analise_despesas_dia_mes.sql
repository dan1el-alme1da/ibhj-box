-- Table: public.analise_despesas_dia_mes

-- DROP TABLE IF EXISTS public.analise_despesas_dia_mes;

CREATE TABLE IF NOT EXISTS public.analise_despesas_dia_mes
(
    descricao text COLLATE pg_catalog."default",
    dia_do_mes numeric,
    periodo_do_mes text COLLATE pg_catalog."default",
    valor_orcado numeric(12,2),
    valor_pago numeric(12,2),
    status_pagamento text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.analise_despesas_dia_mes
    OWNER to postgres;