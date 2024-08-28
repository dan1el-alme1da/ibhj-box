id integer NOT NULL DEFAULT nextval('despesas_destinadas_id_seq'::regclass),
    descricao text COLLATE pg_catalog."default" NOT NULL,
    valor_orcado numeric(12,2) NOT NULL,
    valor_pago numeric(12,2) DEFAULT 0,
    transferencia numeric(12,2) DEFAULT 0,
    saldo_restante numeric(12,2) GENERATED ALWAYS AS ((valor_orcado - valor_pago)) STORED,
    fluxo_caixa_id integer,
    data date,
    CONSTRAINT despesas_destinadas_pkey PRIMARY KEY (id),
    CONSTRAINT despesas_destinadas_fluxo_caixa_id_fkey FOREIGN KEY (fluxo_caixa_id)
        REFERENCES public.fluxo_caixa (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.despesas_destinadas
    OWNER to postgres;

-- trigger_atualizar_fluxo_caixa

-- DROP TRIGGER IF EXISTS trigger_atualizar_fluxo_caixa ON public.despesas_destinadas;

CREATE OR REPLACE TRIGGER trigger_atualizar_fluxo_caixa
    AFTER INSERT OR UPDATE OF valor_pago
    ON public.despesas_destinadas
    FOR EACH ROW
    EXECUTE FUNCTION public.atualizar_fluxo_caixa();