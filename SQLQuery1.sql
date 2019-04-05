USE upisi
DROP TABLE polaznici
GO
CREATE TABLE polaznici (
sifra INT NOT NULL,
ime NCHAR(50) NOT NULL,
prezime NCHAR(50) NOT NULL,
mjesto_stanovanja NCHAR(25)
CONSTRAINT chk_sifra CHECK (sifra BETWEEN 1 AND 1000)
)

GO
