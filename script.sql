CREATE TABLE apprenant(
   unique_apprenant_number INT,
   first_name_apprenant VARCHAR(50),
   last_name_apprenant VARCHAR(50),
   address_apprenant TEXT,
   born_date_apprenant DATE,
   PRIMARY KEY(unique_apprenant_number)
);

CREATE TABLE formateur(
   unique_formateur_number INT,
   first_name_formateur VARCHAR(50),
   last_name_formateur VARCHAR(50),
   PRIMARY KEY(unique_formateur_number)
);

CREATE TABLE module(
   unique_module_number INT,
   version_module INT,
   title_module TEXT,
   objectif_module TEXT,
   content_module TEXT,
   time_module TEXT,
   tag_module TEXT,
   PRIMARY KEY(unique_module_number),
   FOREIGN KEY(unique_formateur_number) REFERENCE formateur(unique_formateur_number),
   FOREIGN KEY(unique_apprenant_number) REFERENCE apprenant(unique_apprenant_number)
);

CREATE TABLE formation(
   unique_formation_number INT,
   title_formation TEXT,
   PRIMARY KEY(unique_formation_number),
   FOREIGN KEY(unique_module_number) REFERENCE module(unique_module_number),
   FOREIGN KEY(unique_formateur_number) REFERENCE formateur(unique_formateur_number),
   FOREIGN KEY(unique_apprenant_number) REFERENCE apprenant(unique_apprenant_number)
);
   
