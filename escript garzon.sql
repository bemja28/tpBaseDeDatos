INSERT INTO usuarios VALUES
(DEFAULT);
INSERT INTO usuarios (id, name, email)
	VALUES (1, 'John', 'John@gmail.com')
		 , (2, 'Mary', 'Mary@gmail.com')
		 , (3, 'Alice', 'Alice@gmail.com')
		 , (4, 'Jacob', 'Jacob@gmail.com')
		 , (5, 'Julie', 'Julie@gmail.com')
         , (6, 'Malcom', 'Malcom@gmail.com')
         , (7, 'Mariano', 'Mariano@gmail.com')
         , (8, 'Mauro', 'Mauro@gmail.com')
         , (9, 'Marcela', 'Marcela@gmail.com')
         , (10, 'Juan', 'Juan@gmail.com') ;
         
         
INSERT INTO categories (name)
	VALUES ("Naturaleza"),
    ("Animales"),
    ("Musica"),
    ("Deportes"),
    ("Vacaciones"),
    ("Medicina"),
    ("Computacion"),
    ("Tiendas"),
    ("Muebles"),
    ("Mascotas");
    
INSERT INTO notas (id,title, date_create, date_edit, descripcion, eliminar, usuario_id, categories_id)

	VALUES (DEFAULT, "PERRO", "2010-01-14 00:00:00", "2010-01-15 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,1,1),
    (DEFAULT, "PERRO1", "2010-01-14 00:00:00", "2010-01-15 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,2,2),
    (DEFAULT, "PERRO2", "2010-01-14 00:00:00", "2010-01-15 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,3,3),
    (DEFAULT, "PERRO3", "2010-01-14 00:00:00", "2010-01-16 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,4,4),
    (DEFAULT, "PERRO4", "2010-01-14 00:00:00", "2010-01-17 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,5,5),
    (DEFAULT, "PERRO5", "2010-01-14 00:00:00", "2010-01-18 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,6,6),
    (DEFAULT, "PERRO6", "2010-01-14 00:00:00", "2010-01-19 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,7,7),
    (DEFAULT, "PERRO7", "2010-01-14 00:00:00", "2010-01-11 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,8,8),
    (DEFAULT, "PERRO8", "2010-01-14 00:00:00", "2010-01-12 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,9,9),
    (DEFAULT, "PERRO9", "2010-01-14 00:00:00", "2010-01-13 00:00:00", "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",default,10,10);
    
    
		 
         
         






