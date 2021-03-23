CREATE TABLE Station (
        num_station int NOT NULL,
        nom_station varchar(50) NOT NULL
    ,CONSTRAINT Station_PK PRIMARY KEY (num_station)
);
CREATE TABLE Hotel (
        capacite_hotel varchar(50) NOT NULL,
        categorie_hotel varchar(50) NOT NULL,
        nom_hotel varchar(50) NOT NULL,
        adresse_hotel varchar(100) NOT NULL,
        num_hotel int NOT NULL,
        num_station int NOT NULL
    ,CONSTRAINT Hotel_PK PRIMARY KEY (num_hotel)
    ,CONSTRAINT Hotel_Station_FK FOREIGN KEY (num_station) REFERENCES Station(num_station)
);
CREATE TABLE Chambre (
        capacite_chambre varchar(50) NOT NULL,
        degre_confort varchar(50) NOT NULL,
        exposition varchar(50) NOT NULL,
        type_chambre varchar(50) NOT NULL,
        num_chambre int NOT NULL,
        num_hotel int NOT NULL
    ,CONSTRAINT Chambre_PK PRIMARY KEY (num_chambre)
    ,CONSTRAINT Chambre_Hotel_FK FOREIGN KEY (num_hotel) REFERENCES Hotel(num_hotel)
);
CREATE TABLE Client (
        adresse_client varchar (100) NOT NULL,
        nom_client varchar(50) NOT NULL,
        prenom_client varchar(50) NOT NULL,
        num_client int NOT NULL
    ,CONSTRAINT Client_PK PRIMARY KEY (num_client)
);

CREATE TABLE Reservation (
        num_chambre int NOT NULL,
        num_client int NOT NULL,
        date_debut varchar(50) NOT NULL,
        date_fin varchar(50) NOT NULL,
        date_reservation varchar(50) NOT NULL,
        montant_ decimal (6,2) NOT NULL,
        prix_total decimal (6,2) NOT NULL
    ,CONSTRAINT Reservation_PK PRIMARY KEY (num_chambre,num_client)
    ,CONSTRAINT Reservation_Chambre_FK FOREIGN KEY (num_chambre) REFERENCES Chambre(num_chambre)
    ,CONSTRAINT Reservation_Client_FK FOREIGN KEY (num_client) REFERENCES Client(num_client)
);
