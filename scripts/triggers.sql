-- FUNCTION: public.atualizar_fluxo_caixa()

-- DROP FUNCTION IF EXISTS public.atualizar_fluxo_caixa();

CREATE OR REPLACE FUNCTION public.atualizar_fluxo_caixa()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    -- Atualizar valor_saida no fluxo_caixa correspondente
    UPDATE fluxo_caixa
    SET valor_saida = valor_saida + NEW.valor_pago
    WHERE id = NEW.fluxo_caixa_id;
    
    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.atualizar_fluxo_caixa()
    OWNER TO postgres;
