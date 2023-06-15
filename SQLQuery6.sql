DROP TABLE ANGAJATI;
DROP TABLE SECTII;
DROP TABLE achiztii;
DROP TABLE activitati;

GO
CREATE TABLE ANGAJATI (
IDAngajat int PRIMARY KEY IDENTITY,
Nume varchar(20) NOT NULL,
Prenume varchar(20) NOT NULL,
DataNasterii datetime,
Adresa varchar(50),
Salariu decimal DEFAULT 2800, IdSectie int)

CREATE TABLE achizitii (
  IDAchizitie int PRIMARY KEY  NOT NULL,
  IDFurnizor int NOT NULL,
  IDComponenta int NOT NULL,
  IDAchizitor int NOT NULL,
  Data datetime NOT NULL,
  Nrcomponente int NOT NULL,
  Pretunitar int NOT NULL)

 DROP TABLE achizitii

CREATE TABLE activitati (
  IDProiect int NOT NULL,
  IDAngajat int NOT NULL,
  Ore int NOT NULL)

  CREATE TABLE clienti (
  IDClient int PRIMARY KEY NOT NULL,
  Nume varchar(20) NOT NULL,
  Prenume varchar(20) NOT NULL,
  Adresa varchar(20) NOT NULL
) ;

DROP TABLE clienti

CREATE TABLE componente (
  IDComponenta int PRIMARY KEY NOT NULL,
  Denumire varchar(20) NOT NULL,
  Descriere varchar(100) NOT NULL
) ;

DROP TABLE componente

CREATE TABLE compozitii (
  IDComponenta int PRIMARY KEY NOT NULL,
  IDProdus int NOT NULL,
  Nrcomponente int NOT NULL
) ;

DROP TABLE compozitii

DROP TABLE dependenti

CREATE TABLE dependenti (
  IDAngajat int IDENTITY NOT NULL,
  Nume varchar(20) NOT NULL,
  Prenume varchar(20) NOT NULL,
  DataNasterii datetime NOT NULL,
  GradRudenie varchar(20) NOT NULL
) ;

INSERT INTO dependenti VALUES('Soldatu','Aurel','06/06/1985','SOT');



CREATE TABLE furnizori (
  IDFurnizor int PRIMARY KEY NOT NULL,
  Nume varchar(20) NOT NULL,
  Prenume varchar(20) NOT NULL,
  Adresa varchar(20) NOT NULL
) ;

DROP TABLE furnizori

CREATE TABLE ingineri (
  IDAngajat int  NOT NULL,
  Specialitatea varchar(20) NOT NULL
) ;

CREATE TABLE produse (
  IDProdus int PRIMARY KEY NOT NULL,
  Denumire varchar(20) NOT NULL,
  Descriere varchar(100) NOT NULL
) ;

DROP TABLE produse

CREATE TABLE proiecte (
  IDProiect int PRIMARY KEY NOT NULL,
  Denumire varchar(20) NOT NULL,
  Termen date NOT NULL,
  Buget int NOT NULL
) ;

DROP TABLE proiecte

CREATE TABLE secretare (
  IDAngajat int PRIMARY KEY IDENTITY NOT NULL,
  Vitezaredactare varchar(20) NOT NULL
) ;

DROP TABLE secretare

CREATE TABLE vanzari (
  IDVanzare int NOT NULL,
  IDProdus int NOT NULL,
  IDClient int NOT NULL,
  IDVanzator int NOT NULL,
  Data int NOT NULL,
  Nrproduse int NOT NULL
) ;

CREATE TABLE activitati(
IDProiect int PRIMARY KEY NOT NULL,
IDAngajat int NOT NULL,
ore time
);

DROP TABLE activitati



GO
CREATE TABLE SECTII (IdSectie int PRIMARY KEY IDENTITY, Nume varchar(50) NOT NULL, Buget decimal)

GO
ALTER TABLE ANGAJATI ADD CONSTRAINT FK_ANGAJATI FOREIGN KEY(IdSectie) REFERENCES SECTII(IdSectie)

ALTER TABLE DEPENDENTI ADD CONSTRAINT FK_DEPENDETI FOREIGN KEY(IdAngajat) REFERENCES ANGAJATI(IdAngajat)

ALTER TABLE INGINERI ADD CONSTRAINT FK_INGINERI FOREIGN KEY(IdAngajat) REFERENCES ANGAJATI(IdAngajat)

ALTER TABLE SECRETARE ADD CONSTRAINT FK_SECRETARE FOREIGN KEY(IdAngajat) REFERENCES ANGAJATI(IdAngajat)

ALTER TABLE SECTII ADD CONSTRAINT FK_SECTII FOREIGN KEY(IdSectie) REFERENCES ANGAJATI(IdAngajat)

ALTER TABLE ACHIZITII ADD CONSTRAINT FK_ACHIZTII FOREIGN KEY(IDAchizitie) REFERENCES ANGAJATI(IdAngajat)

ALTER TABLE ACHIZITII ADD CONSTRAINT FK_ACHIZTII2 FOREIGN KEY(IDAchizitie) REFERENCES furnizori(IDFurnizor)

ALTER TABLE COMPOZITII ADD CONSTRAINT FK_COMPOZITII FOREIGN KEY(IDComponenta) REFERENCES componente(IdComponenta)




GO
INSERT INTO SECTII VALUES ('ATI', 20000);
INSERT INTO SECTII VALUES ('CHIRURGIE', 20000);
INSERT INTO SECTII VALUES ('ORL', 20000);
INSERT INTO SECTII VALUES ('APN', 20000);
INSERT INTO SECTII VALUES ('MAI', 20000);
INSERT INTO SECTII VALUES ('IPJ', 20000);


INSERT INTO ANGAJATI VALUES ('Popescu' , 'Matei' , '02/25/1987','Str.Lipscanilor nr.78', 25000,1 );
INSERT INTO ANGAJATI VALUES ('Teodorescu' , 'Mircea' , '03/25/1989','Str.Baraganului nr.81', 30000,2);
INSERT INTO ANGAJATI VALUES ('Mateescu' , 'Mihnea' , '04/21/1990','Str.Bucovat nr.92', 35000,3 );
INSERT INTO ANGAJATI VALUES ('Pieptea' , 'Marius' , '05/20/1993','Str.Lipscanilor nr.95', 45000,4 );
INSERT INTO ANGAJATI VALUES ('Sosoi' , 'Carol' , '01/16/1999','Str.Ambasadei nr.100', 95000,5 );
INSERT INTO ANGAJATI VALUES ('Andreea' , 'Georgiana' , '02/25/1995','Str.Trenului nr.200', 70000,6);
INSERT INTO ANGAJATI VALUES ('Andrei' , 'Postescu' , '02/25/1999','Str.Frunzisului nr.155', 65000,2 );
INSERT INTO ANGAJATI VALUES ('Dinu' , 'Cristian' , '02/20/1990','Str.Tufanelelor nr.115', 90000,6 );
INSERT INTO ANGAJATI VALUES ('Andreescu' , 'Marcel' , '06/25/1978','Str.Calugaritei nr.79', 25000,1 );
INSERT INTO ANGAJATI VALUES ('Petrica' , 'Cristian' , '08/25/2000','Str.Leului nr.92', 33000,3 );
INSERT INTO dependenti VALUES('Mateescu', 'Andrei','02/06/1989','UNCHI');
INSERT INTO dependenti VALUES('Vlaescu', 'Mircea','01/05/1979','BUNIC');
INSERT INTO dependenti VALUES('Soldatu', 'Aurel','01/04/1985','SOT');

-- tabela studenti , tabela discipline , tabela cataloage


SELECT * FROM ANGAJATI
SELECT * FROM dependenti
SELECT * FROM SECTII

