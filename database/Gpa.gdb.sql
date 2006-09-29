/******************************************************************************/
/****         Generated by IBExpert 2006.12.13 29/09/2004 14:54:18         ****/
/******************************************************************************/

SET SQL DIALECT 3;

/******************************************************************************/
/****                    Interbase/Firebird                                ****/
/******************************************************************************/


CREATE DATABASE 'localhost:C:\inforamos\Igpa.gdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096;

/******************************************************************************/
/****                               Domains                                ****/
/******************************************************************************/

CREATE DOMAIN BAIRRO AS
VARCHAR(30) CHARACTER SET NONE;

CREATE DOMAIN CADASTRO AS
VARCHAR(2) CHARACTER SET NONE;

CREATE DOMAIN CEP AS
VARCHAR(10) CHARACTER SET NONE;

CREATE DOMAIN CIDADE AS
VARCHAR(25) CHARACTER SET NONE;

CREATE DOMAIN CODIGO AS
INTEGER
NOT NULL;

CREATE DOMAIN CPF AS
VARCHAR(18) CHARACTER SET NONE;

CREATE DOMAIN DATA AS
TIMESTAMP;

CREATE DOMAIN DINHEIRO AS
NUMERIC(18,2);

CREATE DOMAIN ENDERECO AS
VARCHAR(50) CHARACTER SET NONE;

CREATE DOMAIN ESTADO AS
VARCHAR(25) CHARACTER SET NONE;

CREATE DOMAIN IMAGEM AS
BLOB SUB_TYPE 0 SEGMENT SIZE 80;

CREATE DOMAIN NOME AS
VARCHAR(50) CHARACTER SET NONE;

CREATE DOMAIN RG AS
VARCHAR(25) CHARACTER SET NONE;

CREATE DOMAIN TELEFONE AS
VARCHAR(20) CHARACTER SET NONE;

CREATE DOMAIN TEXTO AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET NONE;

CREATE DOMAIN UF AS
VARCHAR(2) CHARACTER SET NONE;



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE CARNE (
    COD_CARN          CODIGO /* CODIGO = INTEGER NOT NULL */,
    NUMERO_DOC        VARCHAR(22) CHARACTER SET NONE NOT NULL,
    CONTRATO          CODIGO /* CODIGO = INTEGER NOT NULL */,
    DATA_CONTRATO     DATA /* DATA = TIMESTAMP */,
    NOME_CLIENTE      NOME /* NOME = VARCHAR(50) */,
    CODIGO            VARCHAR(11) CHARACTER SET NONE,
    RG                RG /* RG = VARCHAR(25) */,
    CPF               CPF /* CPF = VARCHAR(18) */,
    TE                VARCHAR(25) CHARACTER SET NONE,
    ENDERECO          ENDERECO /* ENDERECO = VARCHAR(50) */,
    BAIRRO            BAIRRO /* BAIRRO = VARCHAR(30) */,
    CIDADE            CIDADE /* CIDADE = VARCHAR(25) */,
    CEP               CEP /* CEP = VARCHAR(10) */,
    ESTADO            ESTADO /* ESTADO = VARCHAR(25) */,
    UF                UF /* UF = VARCHAR(2) */,
    NUMERO_PARCELA    VARCHAR(5) CHARACTER SET NONE,
    DATA_VENCIMENTO   DATA /* DATA = TIMESTAMP */,
    MES_REFERENCIA    VARCHAR(15) CHARACTER SET NONE,
    VALOR_MENSAL      DINHEIRO /* DINHEIRO = NUMERIC(18,2) */,
    DATA_PAGAMENTO    DATA /* DATA = TIMESTAMP */,
    VALOR_PAGO        DINHEIRO /* DINHEIRO = NUMERIC(18,2) */,
    OBS               VARCHAR(50) CHARACTER SET NONE,
    SITUACAO          VARCHAR(1) CHARACTER SET NONE,
    ANO_BASE          VARCHAR(4) CHARACTER SET NONE,
    USUARIO           VARCHAR(20) CHARACTER SET NONE,
    PAGAMENTO_MENSAL  VARCHAR(2) CHARACTER SET NONE,
    DIA_VENCIMENTO    VARCHAR(2) CHARACTER SET NONE,
    MODELOS           VARCHAR(10) CHARACTER SET NONE
);

CREATE TABLE CEPS (
    CODIGO    CODIGO /* CODIGO = INTEGER NOT NULL */,
    NOME_CID  CIDADE /* CIDADE = VARCHAR(25) */,
    CEP_CID   CEP /* CEP = VARCHAR(10) */,
    ESTADO    ESTADO /* ESTADO = VARCHAR(25) */,
    UF        UF /* UF = VARCHAR(2) */
);

CREATE TABLE CLIENTES (
    COD_CLIE          CODIGO /* CODIGO = INTEGER NOT NULL */,
    CODIGO            VARCHAR(11) CHARACTER SET NONE,
    DATA_CADASTRO     DATA /* DATA = TIMESTAMP */,
    NOME_CLIENTE      NOME /* NOME = VARCHAR(50) */,
    RELIGIAO          VARCHAR(30) CHARACTER SET NONE,
    ESTADO_CIVIL      VARCHAR(25) CHARACTER SET NONE,
    SEXO              VARCHAR(9) CHARACTER SET NONE,
    DATA_NASCIMENTO   DATA /* DATA = TIMESTAMP */,
    RG                RG /* RG = VARCHAR(25) */,
    CPF               CPF /* CPF = VARCHAR(18) */,
    TE                VARCHAR(25) CHARACTER SET NONE,
    ENDERECO          ENDERECO /* ENDERECO = VARCHAR(50) */,
    PONTO_REFERENCIA  VARCHAR(35) CHARACTER SET NONE,
    BAIRRO            BAIRRO /* BAIRRO = VARCHAR(30) */,
    CIDADE            CIDADE /* CIDADE = VARCHAR(25) */,
    CEP               CEP /* CEP = VARCHAR(10) */,
    ESTADO            ESTADO /* ESTADO = VARCHAR(25) */,
    UF                UF /* UF = VARCHAR(2) */,
    TELEFONE          TELEFONE /* TELEFONE = VARCHAR(20) */,
    PAGAMENTO_MENSAL  VARCHAR(2) CHARACTER SET NONE,
    DIA_VENCIMENTO    VARCHAR(2) CHARACTER SET NONE,
    MODELOS           VARCHAR(10) CHARACTER SET NONE,
    APELIDO_PROMOTOR  VARCHAR(25) CHARACTER SET NONE,
    CODIGO_P          VARCHAR(11) CHARACTER SET NONE,
    OBS               TEXTO /* TEXTO = BLOB SUB_TYPE 1 SEGMENT SIZE 80 */,
    FOTO              IMAGEM /* IMAGEM = BLOB SUB_TYPE 0 SEGMENT SIZE 80 */,
    USUARIO           VARCHAR(20) CHARACTER SET NONE,
    TC                CADASTRO /* CADASTRO = VARCHAR(2) */,
    NOME_EMPRESARIAL  VARCHAR(116) CHARACTER SET NONE,
    NOME_FANTASIA     VARCHAR(56) CHARACTER SET NONE,
    CNPJ              VARCHAR(18) CHARACTER SET NONE,
    IE                VARCHAR(11) CHARACTER SET NONE,
    NOME_RESPONSAVEL  NOME /* NOME = VARCHAR(50) */,
    RAMO_ATIVIDADE    VARCHAR(30) CHARACTER SET NONE,
    FAX               TELEFONE /* TELEFONE = VARCHAR(20) */,
    EMAIL             NOME /* NOME = VARCHAR(50) */
);

CREATE TABLE DEPENDE (
    COD_DEPE         CODIGO /* CODIGO = INTEGER NOT NULL */,
    CODIGO           VARCHAR(11) CHARACTER SET NONE,
    NOME_DEPENDENTE  NOME /* NOME = VARCHAR(50) */,
    PARENTESCO       VARCHAR(20) CHARACTER SET NONE,
    USUARIO          VARCHAR(20) CHARACTER SET NONE
);

CREATE TABLE EMPRESA (
    NOME_EMPRESARIAL      VARCHAR(116) CHARACTER SET NONE,
    NOME_FANTASIA         VARCHAR(56) CHARACTER SET NONE,
    CNPJ                  VARCHAR(18) CHARACTER SET NONE NOT NULL,
    IE                    VARCHAR(11) CHARACTER SET NONE,
    SLOGAN                VARCHAR(30) CHARACTER SET NONE,
    ENDERECO              ENDERECO /* ENDERECO = VARCHAR(50) */,
    BAIRRO                BAIRRO /* BAIRRO = VARCHAR(30) */,
    CEP                   CEP /* CEP = VARCHAR(10) */,
    CIDADE                CIDADE /* CIDADE = VARCHAR(25) */,
    ESTADO                ESTADO /* ESTADO = VARCHAR(25) */,
    UF                    UF /* UF = VARCHAR(2) */,
    TELEFONE              TELEFONE /* TELEFONE = VARCHAR(20) */,
    FAX                   TELEFONE /* TELEFONE = VARCHAR(20) */,
    EMAIL                 NOME /* NOME = VARCHAR(50) */,
    WEBSITE               NOME /* NOME = VARCHAR(50) */,
    SOCIO_1               NOME /* NOME = VARCHAR(50) */,
    SOCIO_2               NOME /* NOME = VARCHAR(50) */,
    GERENTE               NOME /* NOME = VARCHAR(50) */,
    LOGO_EMPRESA          IMAGEM /* IMAGEM = BLOB SUB_TYPE 0 SEGMENT SIZE 80 */,
    JUROS                 DOUBLE PRECISION,
    MULTA                 DOUBLE PRECISION,
    TAXA_ADMIN            DINHEIRO /* DINHEIRO = NUMERIC(18,2) */,
    VALOR_SM              DINHEIRO /* DINHEIRO = NUMERIC(18,2) */,
    INSTRUCAO_CARNE_CLI   VARCHAR(38) CHARACTER SET NONE,
    INSTRUCAO_CARNE_COM1  VARCHAR(38) CHARACTER SET NONE,
    INSTRUCAO_CARNE_COM2  VARCHAR(38) CHARACTER SET NONE,
    INSTRUCAO_CARNE_COM3  VARCHAR(38) CHARACTER SET NONE,
    USUARIO               VARCHAR(20) CHARACTER SET NONE
);

CREATE TABLE INATIVOS (
    COD_CLIE          CODIGO /* CODIGO = INTEGER NOT NULL */,
    CODIGO            VARCHAR(11) CHARACTER SET NONE NOT NULL,
    DATA_CADASTRO     DATA /* DATA = TIMESTAMP */,
    NOME_CLIENTE      NOME /* NOME = VARCHAR(50) */,
    RELIGIAO          VARCHAR(30) CHARACTER SET NONE,
    ESTADO_CIVIL      VARCHAR(25) CHARACTER SET NONE,
    SEXO              VARCHAR(9) CHARACTER SET NONE,
    DATA_NASCIMENTO   DATA /* DATA = TIMESTAMP */,
    RG                RG /* RG = VARCHAR(25) */,
    CPF               CPF /* CPF = VARCHAR(18) */,
    TE                VARCHAR(25) CHARACTER SET NONE,
    ENDERECO          ENDERECO /* ENDERECO = VARCHAR(50) */,
    PONTO_REFERENCIA  VARCHAR(35) CHARACTER SET NONE,
    BAIRRO            BAIRRO /* BAIRRO = VARCHAR(30) */,
    CIDADE            CIDADE /* CIDADE = VARCHAR(25) */,
    CEP               CEP /* CEP = VARCHAR(10) */,
    ESTADO            ESTADO /* ESTADO = VARCHAR(25) */,
    UF                UF /* UF = VARCHAR(2) */,
    TELEFONE          TELEFONE /* TELEFONE = VARCHAR(20) */,
    PAGAMENTO_MENSAL  VARCHAR(2) CHARACTER SET NONE,
    DIA_VENCIMENTO    VARCHAR(2) CHARACTER SET NONE,
    MODELOS           VARCHAR(10) CHARACTER SET NONE,
    OBS               TEXTO /* TEXTO = BLOB SUB_TYPE 1 SEGMENT SIZE 80 */,
    FOTO              IMAGEM /* IMAGEM = BLOB SUB_TYPE 0 SEGMENT SIZE 80 */,
    DATA_MOVIDO       DATA /* DATA = TIMESTAMP */,
    USUARIO           VARCHAR(20) CHARACTER SET NONE,
    RAZAO_MOVIDO      VARCHAR(25) CHARACTER SET NONE,
    TC                CADASTRO /* CADASTRO = VARCHAR(2) */,
    NOME_EMPRESARIAL  VARCHAR(116) CHARACTER SET NONE,
    NOME_FANTASIA     VARCHAR(56) CHARACTER SET NONE,
    CNPJ              VARCHAR(18) CHARACTER SET NONE,
    IE                VARCHAR(11) CHARACTER SET NONE,
    NOME_RESPONSAVEL  NOME /* NOME = VARCHAR(50) */,
    RAMO_ATIVIDADE    VARCHAR(30) CHARACTER SET NONE,
    FAX               TELEFONE /* TELEFONE = VARCHAR(20) */,
    EMAIL             NOME /* NOME = VARCHAR(50) */
);

CREATE TABLE PLANOS (
    COD_PLAN          CODIGO NOT NULL /* CODIGO = INTEGER NOT NULL */,
    CONTRATO          CODIGO /* CODIGO = INTEGER NOT NULL */,
    DATA_CONTRATO     DATA /* DATA = TIMESTAMP */,
    NOME_CLIENTE      NOME /* NOME = VARCHAR(50) */,
    CODIGO            VARCHAR(11) CHARACTER SET NONE,
    RG                RG /* RG = VARCHAR(25) */,
    CPF               CPF /* CPF = VARCHAR(18) */,
    TE                VARCHAR(25) CHARACTER SET NONE,
    ENDERECO          ENDERECO /* ENDERECO = VARCHAR(50) */,
    BAIRRO            BAIRRO /* BAIRRO = VARCHAR(30) */,
    CIDADE            CIDADE /* CIDADE = VARCHAR(25) */,
    CEP               CEP /* CEP = VARCHAR(10) */,
    ESTADO            ESTADO /* ESTADO = VARCHAR(25) */,
    UF                UF /* UF = VARCHAR(2) */,
    PAGAMENTO_MENSAL  VARCHAR(2) CHARACTER SET NONE,
    DIA_VENCIMENTO    VARCHAR(2) CHARACTER SET NONE,
    MODELOS           VARCHAR(10) CHARACTER SET NONE,
    APELIDO_PROMOTOR  VARCHAR(25) CHARACTER SET NONE,
    CODIGO_P          VARCHAR(11) CHARACTER SET NONE,
    TAXA_ADMIN        DINHEIRO /* DINHEIRO = NUMERIC(18,2) */,
    VALOR_MENSAL      DINHEIRO /* DINHEIRO = NUMERIC(18,2) */,
    USUARIO           VARCHAR(20) CHARACTER SET NONE
);

CREATE TABLE PROMOTOR (
    COD_PROM          CODIGO /* CODIGO = INTEGER NOT NULL */,
    CODIGO_P          VARCHAR(11) CHARACTER SET NONE,
    NOME_PROMOTOR     NOME /* NOME = VARCHAR(50) */,
    APELIDO_PROMOTOR  VARCHAR(25) CHARACTER SET NONE,
    USUARIO           VARCHAR(20) CHARACTER SET NONE
);

CREATE TABLE USUARIOS (
    NOME_USUARIO  VARCHAR(20) CHARACTER SET NONE NOT NULL,
    SENHA         VARCHAR(15) CHARACTER SET NONE,
    ANTERIOR      VARCHAR(15) CHARACTER SET NONE,
    USUARIO       VARCHAR(20) CHARACTER SET NONE
);


INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (1, 'ABAIARA', '63.240-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (2, 'ACARAPE', '62.785-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (3, 'ACARAU', '62.580-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (4, 'ACOPIARA', '63.560-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (5, 'AIUABA', '63.575-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (6, 'ALCANTARAS', '62.120-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (7, 'ALTANEIRA', '63.195-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (8, 'ALTO SANTO', '62.970-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (9, 'AMONTADA', '62.540-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (10, 'ANTONINA DO NORTE', '63.570-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (11, 'APUIARES', '62.630-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (12, 'AQUIRAZ', '61.700-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (13, 'ARACATI', '62.800-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (14, 'ARACOIABA', '62.750-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (15, 'ARARENDA', '62.210-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (16, 'ARARIPE', '63.170-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (17, 'ARATUBA', '62.762-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (18, 'ARNEIROZ', '63.670-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (19, 'ASSAR�', '63.140-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (20, 'AURORA', '63.360-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (21, 'BAIXIO', '63.320-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (22, 'BANABUI�', '63.960-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (23, 'BARBALHA', '63.180-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (24, 'BARREIRA', '62.795-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (25, 'BARRO', '63.380-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (26, 'BARROQUINHA', '62.410-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (27, 'BATURIT�', '62.760-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (28, 'BEBERIBE', '62.840-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (29, 'BELA CRUZ', '62.570-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (30, 'BOA VIAGEM', '63.870-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (31, 'BREJO SANTO', '63.260-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (32, 'CAMOCIM', '62.400-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (33, 'CAMPOS SALES', '63.150-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (34, 'CANIND�', '62.700-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (35, 'CAPISTRANO', '62.748-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (36, 'CARIDADE', '62.730-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (37, 'CARIR�', '62.184-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (38, 'CARIRIACU', '63.220-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (39, 'CARIUS', '63.530-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (40, 'CARNAUBAL', '62.375-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (41, 'CASCAVEL', '62.850-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (42, 'CATARINA', '63.595-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (43, 'CATUNDA', '62.297-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (44, 'CAUCAIA', '61.600-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (45, 'CEDRO', '63.400-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (46, 'CHAVAL', '62.420-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (47, 'CHORO', '63.950-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (48, 'CHOROZINHO', '62.875-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (49, 'COREAU', '62.160-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (50, 'QUITERIANOPOLIS', '63.650-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (51, 'CRATEUS', '63.700-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (52, 'CRATO', '63.100-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (53, 'CROATA', '62.390-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (54, 'CRUZ', '62.595-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (55, 'ERERE', '63.470-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (56, 'EUSEBIO', '61.760-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (57, 'FARIAS BRITO', '63.185-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (58, 'FORQUILHA', '62.115-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (59, 'FORTALEZA', '60.000-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (60, 'FORTIM', '62.815-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (61, 'FRECHEIRINHA', '62.340-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (62, 'GENERAL SAMPAIO', '62.738-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (63, 'GRACA', '62.365-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (64, 'GRANJA', '62.430-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (65, 'GRANJEIRO', '63.230-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (66, 'GROAIRAS', '62.190-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (67, 'GUAIUBA', '61.890-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (68, 'GUARACIABA DO NORTE', '62.380-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (69, 'GUARAMIRANGA', '62.766-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (70, 'HIDROLANDIA', '62.270-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (71, 'HORIZONTE', '62.880-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (72, 'IBARETAMA', '63.970-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (73, 'IBIAPINA', '62.360-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (74, 'IBICUITINGA', '62.955-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (75, 'ICAPUI', '62.810-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (76, 'IC�', '63.430-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (77, 'IGUATU', '63.500-000', 'CEARA', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (78, 'INDEPENDENCIA', '63.640-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (79, 'IPAPORANGA', '62.215-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (80, 'IPAUMIRIM', '63.340-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (81, 'IPU', '62.250-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (82, 'IPUEIRAS', '62.230-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (83, 'IRACEMA', '62.980-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (84, 'IRAUCUBA', '62.620-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (85, 'ITAICABA', '62.820-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (86, 'ITAITINGA', '61.880-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (87, 'ITAPAGE', '62.600-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (88, 'ITAPIPOCA', '62.500-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (89, 'ITAPI�NA', '62.740-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (90, 'ITAREMA', '62.590-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (91, 'ITATIRA', '62.720-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (92, 'JAGUARETAMA', '63.480-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (93, 'JAGUARIBARA', '63.490-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (94, 'JAGUARIBE', '63.475-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (95, 'JAGUARUANA', '62.823-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (96, 'JARDIM', '63.290-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (97, 'JATI', '63.275-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (98, 'JIJOCA DE JERICOACOARA', '62.598-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (99, 'JUAZEIRO DO NORTE', '63.000-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (100, 'JUCAS', '63.580-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (101, 'LAVRAS DA MANGABEIRA', '63.300-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (102, 'LIMOEIRO DO NORTE', '62.930-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (103, 'MADALENA', '63.860-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (104, 'MARACANAU', '61.900-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (105, 'MARANGUAPE', '61.940-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (106, 'MARCO', '62.560-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (107, 'MARTINOPOLE', '62.450-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (108, 'MASSAPE', '62.140-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (109, 'MAURITI', '63.210-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (110, 'MERUOCA', '62.130-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (111, 'MILAGRES', '63.250-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (112, 'MILHA', '63.635-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (113, 'MIRAIMA', '62.530-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (114, 'MISSAO VELHA', '63.200-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (115, 'MOMBACA', '63.610-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (116, 'MONSENHOR TABOSA', '63.780-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (117, 'MORADA NOVA', '62.940-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (118, 'MORAUJO', '62.480-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (119, 'MORRINHOS', '62.550-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (120, 'MUCAMBO', '62.170-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (121, 'MULUNGU', '62.764-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (122, 'NOVA OLINDA', '63.165-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (123, 'NOVA RUSSAS', '62.200-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (124, 'NOVO ORIENTE', '63.740-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (125, 'OCARA', '62.755-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (126, 'OROS', '63.520-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (127, 'PACAJUS', '62.870-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (128, 'PACATUBA', '61.800-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (129, 'PACOTI', '62.770-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (130, 'PACUJA', '62.180-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (131, 'PALHANO', '62.910-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (132, 'PALMACIA', '62.780-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (133, 'PARACURU', '62.680-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (134, 'PARAIPABA', '62.685-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (135, 'PARAMBU', '63.680-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (136, 'PARAMOTI', '62.736-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (137, 'PEDRA BRANCA', '63.630-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (138, 'PENAFORTE', '63.280-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (139, 'PENTECOSTE', '62.640-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (140, 'PEREIRO', '63.460-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (141, 'PINDORETAMA', '62.860-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (142, 'PIQUET CARNEIRO', '63.605-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (143, 'PIRES FERREIRA', '62.255-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (144, 'PORANGA', '62.220-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (145, 'PORTEIRAS', '63.270-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (146, 'POTENGI', '63.160-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (147, 'POTIRETAMA', '62.990-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (148, 'QUIXADA', '63.900-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (149, 'QUIXELO', '63.515-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (150, 'QUIXERAMOBIM', '63.800-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (151, 'QUIXERE', '62.920-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (152, 'REDEN��O', '62.790-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (153, 'RERIUTABA', '62.260-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (154, 'RUSSAS', '62.900-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (155, 'SABOEIRO', '63.590-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (156, 'SALITRE', '63.155-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (157, 'SANTA QUITERIA', '62.280-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (158, 'SANTANA DO ACARAU', '62.150-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (159, 'SANTANA DO CARIRI', '63.190-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (160, 'SAO BENEDITO', '62.370-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (161, 'SAO GONCALO DO AMARANTE', '62.670-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (162, 'SAO JOAO DO JAGUARIBE', '62.965-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (163, 'SAO LUIS DO CURU', '62.665-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (164, 'SENADOR POMPEU', '63.600-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (165, 'SENADOR SA', '62.470-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (166, 'SOBRAL', '62.000-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (167, 'SOLONOPOLE', '63.620-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (168, 'TABULEIRO DO NORTE', '62.960-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (169, 'TAMBORIL', '63.750-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (170, 'TARRAFAS', '63.145-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (171, 'DEPUTADO IRAPUAN PINHEIRO', '63.645-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (172, 'TAU�', '63.660-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (173, 'TEJUCUOCA', '62.610-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (174, 'TIANGU�', '62.320-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (175, 'TRAIRI', '62.690-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (176, 'TURURU', '62.655-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (177, 'UBAJARA', '62.350-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (178, 'UMARI', '63.310-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (179, 'UMIRIM', '62.660-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (180, 'URUBURETAMA', '62.650-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (181, 'URUOCA', '62.460-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (182, 'VARJOTA', '62.265-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (183, 'V�RZEA ALEGRE', '63.540-000', 'CEAR�', 'CE');
INSERT INTO CEPS (CODIGO, NOME_CID, CEP_CID, ESTADO, UF) VALUES (184, 'VI�OSA DO CEAR�', '62.300-000', 'CEAR�', 'CE');

COMMIT WORK;

INSERT INTO PROMOTOR (COD_PROM, CODIGO_P, NOME_PROMOTOR, APELIDO_PROMOTOR, USUARIO) VALUES (22, '022', 'JAMES', 'JAMES', 'JAMES');

COMMIT WORK;

INSERT INTO USUARIOS (NOME_USUARIO, SENHA, ANTERIOR, USUARIO) VALUES ('ADMIN', 'htq2LB', 'htq2LB', NULL);

COMMIT WORK;


/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE CARNE ADD PRIMARY KEY (COD_CARN);
ALTER TABLE CLIENTES ADD PRIMARY KEY (COD_CLIE);
ALTER TABLE DEPENDE ADD PRIMARY KEY (COD_DEPE);
ALTER TABLE EMPRESA ADD PRIMARY KEY (CNPJ);
ALTER TABLE INATIVOS ADD PRIMARY KEY (CODIGO);
ALTER TABLE PLANOS ADD PRIMARY KEY (COD_PLAN);
ALTER TABLE PROMOTOR ADD PRIMARY KEY (COD_PROM);
ALTER TABLE USUARIOS ADD PRIMARY KEY (NOME_USUARIO);
COMMIT WORK;
