

DROP TABLE CONSULTA_PROCEDIMENTO CASCADE CONSTRAINTS;
DROP TABLE TRIAGEM_SOCIAL CASCADE CONSTRAINTS;
DROP TABLE CONSULTA CASCADE CONSTRAINTS;
DROP TABLE PROCEDIMENTO CASCADE CONSTRAINTS;
DROP TABLE DENTISTA CASCADE CONSTRAINTS;
DROP TABLE BENEFICIARIO CASCADE CONSTRAINTS;




CREATE TABLE BENEFICIARIO (
    id_beneficiario NUMBER,
    nome            VARCHAR2(150) NOT NULL,
    senha           VARCHAR2(50)  NOT NULL,
    sexo            CHAR(1),
    endereco        VARCHAR2(255),
    telefone        VARCHAR2(15),
    email           VARCHAR2(100),
    cpf             CHAR(11)      NOT NULL,
    CONSTRAINT pk_beneficiario PRIMARY KEY (id_beneficiario),
    CONSTRAINT uk_beneficiario_cpf UNIQUE (cpf),
    CONSTRAINT ck_beneficiario_sexo CHECK (sexo IN ('M','F'))
);


CREATE TABLE DENTISTA (
    id_dentista         NUMBER,
    nome                VARCHAR2(150) NOT NULL,
    crm                 VARCHAR2(15)  NOT NULL,
    telefone            VARCHAR2(15),
    email               VARCHAR2(100),
    horario_atendimento VARCHAR2(50),
    CONSTRAINT pk_dentista PRIMARY KEY (id_dentista),
    CONSTRAINT uk_dentista_crm UNIQUE (crm)
);

CREATE TABLE PROCEDIMENTO (
    id_procedimento   NUMBER,
    nome_procedimento VARCHAR2(200) NOT NULL,
    tempo             NUMBER,
    descricao         VARCHAR2(600),
    CONSTRAINT pk_procedimento PRIMARY KEY (id_procedimento)
);

CREATE TABLE CONSULTA (
    id_consulta     NUMBER,
    data            DATE        NOT NULL,
    hora            VARCHAR2(5) NOT NULL,
    diagnostico     VARCHAR2(600),
    id_dentista     NUMBER      NOT NULL,
    id_beneficiario NUMBER      NOT NULL,
    CONSTRAINT pk_consulta PRIMARY KEY (id_consulta),
    CONSTRAINT fk_consulta_dentista     FOREIGN KEY (id_dentista)     REFERENCES DENTISTA(id_dentista),
    CONSTRAINT fk_consulta_beneficiario FOREIGN KEY (id_beneficiario) REFERENCES BENEFICIARIO(id_beneficiario)
);

CREATE TABLE TRIAGEM_SOCIAL (
    id_triagem         NUMBER,
    data_triagem       DATE          NOT NULL,
    avaliacao_condicao VARCHAR2(400),
    id_beneficiario    NUMBER        NOT NULL,
    CONSTRAINT pk_triagem PRIMARY KEY (id_triagem),
    CONSTRAINT fk_triagem_beneficiario FOREIGN KEY (id_beneficiario) REFERENCES BENEFICIARIO(id_beneficiario),
    CONSTRAINT uk_triagem_benef UNIQUE (id_beneficiario)
);

CREATE TABLE CONSULTA_PROCEDIMENTO (
    id_consulta     NUMBER       NOT NULL,
    id_procedimento NUMBER       NOT NULL,
    valor           NUMBER(10,2) NOT NULL,
    CONSTRAINT pk_consulta_procedimento PRIMARY KEY (id_consulta, id_procedimento),
    CONSTRAINT fk_cp_consulta     FOREIGN KEY (id_consulta)     REFERENCES CONSULTA(id_consulta),
    CONSTRAINT fk_cp_procedimento FOREIGN KEY (id_procedimento) REFERENCES PROCEDIMENTO(id_procedimento)