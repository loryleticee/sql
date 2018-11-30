create table class(
id int(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY ,
nom varchar(100) NOT NULL
);

create table student (
id int(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY ,
nom varchar(255) NOT NULL ,
prenom varchar(255) NOT NULL,
email varchar(255) UNIQUE  NOT NULL,
id_class int (10) UNSIGNED NOT NULL,
FOREIGN KEY (id_class) REFERENCES class(id) 
);

create table absence (
id int(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY ,
date_abs date NOT NULL,
student_id int(10) UNSIGNED NOT NULL ,
FOREIGN KEY (student_id) REFERENCES student(id)
);

create table ass(
id int(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY ,
matiere varchar(100) UNIQUE NOT NULL ,
prof varchar(100) NOT NULL ,
date_ass date NOT NULL,
class_id int(10) UNSIGNED NOT NULL,
FOREIGN KEY (class_id ) REFERENCES class(id)
);

create table note (
id int(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY ,
score float UNSIGNED  NOT NULL,
ass_id int(10) UNSIGNED NOT NULL ,
student_id int (10) UNSIGNED NOT NULL,
FOREIGN KEY (ass_id ) REFERENCES ass(id),
FOREIGN KEY (student_id  ) REFERENCES student(id)
);


