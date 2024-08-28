# ibhj-box
 
Iserir dados 

INSERT INTO DESPESAS_ADMINISTRATIVAS (descricao, valor_orcado, valor_pago, transferencia, fluxo_caixa_id, data)  

 VALUES ('Material de Expediente', 100.00, 100.00, 0.00, 2, now() ); 

 

Adicionando coluna 

ALTER TABLE CURSOS_DIVERSOS  

ADD COLUMN data DATE; 

 

Modificando os dados 

UPDATE DESPESAS_ADMINISTRATIVAS SET DATA = '26-08-2024'  

WHERE ID = 5; 

 

Codigo para consulta simples 

SELECT DESCRICAO,DATA,VALOR_PAGO 

FROM DESPESAS_ADMINISTRATIVAS  

WHERE VALOR_PAGO = 188.00; 

 

Visualização das tabelas fluxo_caixa e despesas_administrativas 

SELECT  

    d.descricao, 

    d.valor_orcado, 

    d.valor_pago, 

    d.valor_orcado - d.valor_pago AS diferenca, 

    f.valor_arrecadado   

     

FROM  

    despesas_administrativas d 

CROSS JOIN  

    fluxo_caixa f; 