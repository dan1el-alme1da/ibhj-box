
    id integer NOT NULL DEFAULT nextval('fluxo_caixa_id_seq'::regclass),
    valor_arrecadado numeric(12,2) NOT NULL,
    valor_saida numeric(12,2) DEFAULT 0,
    saldo_restante numeric(12,2) GENERATED ALWAYS AS ((valor_arrecadado - valor_saida)) STORED,
    CONSTRAINT fluxo_caixa_pkey PRIMARY KEY (id)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fluxo_caixa
    OWNER to postgres;