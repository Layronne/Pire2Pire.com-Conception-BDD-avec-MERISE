CREATE TABLE Human(
   UuidHuman INT,
   FirstNameHuman VARCHAR(50),
   LastNameHuman VARCHAR(50),
   address VARCHAR(50),
   BirthDateHuman VARCHAR(50),
   PRIMARY KEY(UuidHuman)
);

CREATE TABLE Tag(
   UuidTag INT,
   Tag VARCHAR(50),
   PRIMARY KEY(UuidTag)
);

CREATE TABLE Former(
   UuidFormer INT pk,
   UuidHuman INT NOT NULL,
   PRIMARY KEY(UuidFormer),
   UNIQUE(UuidHuman),
   FOREIGN KEY(UuidHuman) REFERENCES Human(UuidHuman)
);

CREATE TABLE Student(
   UuidStudent INT,
   UuidHuman INT NOT NULL,
   PRIMARY KEY(UuidStudent),
   UNIQUE(UuidHuman),
   FOREIGN KEY(UuidHuman) REFERENCES Human(UuidHuman)
);

CREATE TABLE Course(
   UuidCourse INT,
   TitleCourse VARCHAR(50),
   ObjectifCourse VARCHAR(50),
   TimeCourse TIME,
   ContentCourse TEXT,
   ImgCourse VARCHAR(50),
   VideoCourse VARCHAR(50),
   UuidFormer INT NOT NULL,
   PRIMARY KEY(UuidCourse),
   FOREIGN KEY(UuidFormer) REFERENCES Former(UuidFormer)
);

CREATE TABLE Formations(
   UuidFormation INT,
   NameFormation VARCHAR(50),
   UuidFormer INT NOT NULL,
   PRIMARY KEY(UuidFormation),
   FOREIGN KEY(UuidFormer) REFERENCES Former(UuidFormer)
);

CREATE TABLE Chapter(
   UuidChapter INT,
   NbrChapter DECIMAL(15,2),
   UuidCourse INT NOT NULL,
   PRIMARY KEY(UuidChapter),
   FOREIGN KEY(UuidCourse) REFERENCES Course(UuidCourse)
);

CREATE TABLE Participate(
   UuidFormation INT,
   UuidStudent INT,
   PRIMARY KEY(UuidFormation, UuidStudent),
   FOREIGN KEY(UuidFormation) REFERENCES Formations(UuidFormation),
   FOREIGN KEY(UuidStudent) REFERENCES Student(UuidStudent)
);

CREATE TABLE complete(
   UuidCourse INT,
   UuidStudent INT,
   status LOGICAL,
   PRIMARY KEY(UuidCourse, UuidStudent),
   FOREIGN KEY(UuidCourse) REFERENCES Course(UuidCourse),
   FOREIGN KEY(UuidStudent) REFERENCES Student(UuidStudent)
);

CREATE TABLE Belongs(
   UuidFormation INT,
   UuidChapter INT,
   PRIMARY KEY(UuidFormation, UuidChapter),
   FOREIGN KEY(UuidFormation) REFERENCES Formations(UuidFormation),
   FOREIGN KEY(UuidChapter) REFERENCES Chapter(UuidChapter)
);

CREATE TABLE contain(
   UuidCourse INT,
   UuidTag INT,
   PRIMARY KEY(UuidCourse, UuidTag),
   FOREIGN KEY(UuidCourse) REFERENCES Course(UuidCourse),
   FOREIGN KEY(UuidTag) REFERENCES Tag(UuidTag)
);

CREATE TABLE Validate(
   UuidStudent INT,
   UuidChapter INT,
   status LOGICAL,
   PRIMARY KEY(UuidStudent, UuidChapter),
   FOREIGN KEY(UuidStudent) REFERENCES Student(UuidStudent),
   FOREIGN KEY(UuidChapter) REFERENCES Chapter(UuidChapter)
);
