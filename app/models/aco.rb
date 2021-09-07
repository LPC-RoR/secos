class Aco < ApplicationRecord

	TIPOS_EVENTO = [
		'Conferencia',
		'Seminario',
		'Foro',
		'Exhibición',
		'Workshop',
		'Competencia',
		'Concurso',
		'Video Conferencia',
		'Otro'
	]

	ALCANCES = [
		'Nacional',
		'Internacional'
	]

	PAISES = [
		'Abganistán',
		'Albania',
		'Alemania',
		'Andorra',
		'Angola',
		'Anguila',
		'Antigua y Barbuda',
		'Antillas Holandesas',
		'Arabia Saudita',
		'Argelia',
		'Argentina',
		'Armenia',
		'Aruba',
		'Australia',
		'Austria',
		'Azerbaiján',
		'Bahamas, Las',
		'Bahréin',
		'Bangladesh',
		'Barbados',
		'Bélgica',
		'Belice',
		'Benín',
		'Bermudas',
		'Bielorrusia',
		'Birmania (Myanmar',
		'Bolivia',
		'Bosnia y Herzegovina',
		'Botswana',
		'Brasil',
		'Brunéi',
		'Bulgaria',
		'Burkina Faso',
		'Burundi',
		'Bután',
		'Cabo Verde',
		'Cambodia',
		'Camerún',
		'Canadá',
		'Chad',
		'Chile',
		'China',
		'Chipre	',
		'Colombia',
		'Comoras',
		'Corea del Norte',
		'Corea del Sur',
		'Costa de Marfil',
		'Costa Rica',
		'Croacia',
		'Cuba',
		'Curazao',
		'Dinamarca',
		'Djibouti',
		'Dominica',
		'Ecuador',
		'Egipto',
		'El Congo',
		'El Líbano',
		'El Salvador',
		'Emiratos Árabes Unidos',
		'Eritrea',
		'Escocia',
		'Eslovaquia',
		'Eslovenia',
		'España',
		'Estados Unidos de America',
		'Estonia',
		'Etiopía',
		'Federación de San Cristobal y Nieves',
		'Fiji',
		'Filipinas',
		'Finlandia',
		'Francia',
		'Gabón',
		'Gales',
		'Gambia',
		'Georgia',
		'Ghana',
		'Gibraltar',
		'Granada',
		'Grecia',
		'Guam',
		'Guatemala',
		'Guernsey',
		'Guinea',
		'Guinea Ecuatorial',
		'Guyana',
		'Haití',
		'Holanda/Países Bajos',
		'Honduras',
		'Hungría',
		'India',
		'Indonesia',
		'Inglaterra',
		'Irak',
		'Irán',
		'Irlanda',
		'Isla Mauricio',
		'Islandia',
		'Islas Caimán',
		'Islas Feroe',
		'Islas Malvinas',
		'Islas Marshall',
		'Islas Salomón',
		'Israel',
		'Italia',
		'Jamaica',
		'Japón',
		'Jersey',
		'Jordania',
		'Kazajistán',
		'Kenia',
		'Kirguistán',
		'Kiribati',
		'Kosovo',
		'Kuwait',
		'Laos',
		'Lesoto',
		'Letonia',
		'Liberia',
		'Libia',
		'Liechtenstein',
		'Lituania',
		'Luxemburgo',
		'Macao',
		'Macedonia',
		'Madagascar',
		'Malasia',
		'Malaui',
		'Maldivas, Las',
		'Mali',
		'Malta',
		'Marruecos',
		'Mauritania',
		'México',
		'Micronesia',
		'Moldavia',
		'Mónaco',
		'Mongolia',
		'Montserrat',
		'Montenegro',
		'Mozambique',
		'Namibia',
		'Nauru',
		'Nepal',
		'Nicaragua',
		'Níger',
		'Nigeria',
		'Niue',
		'Noruega',
		'Nueva Zelandia',
		'Omán',
		'Otro',
		'Pakistán',
		'Palaos',
		'Palestina',
		'Panamá',
		'Papúa Nueva Guinea',
		'Paraguay',
		'Perú',
		'Polonia',
		'Portugal',
		'Puerto Rico',
		'Qatar',
		'Reino de los Países Bajos',
		'República Árabe Saharaui Democrática',
		'República Centroafricana',
		'República Checa',
		'República del Congo',
		'República Democrática de Santo Tomé y Príncipe',
		'República Democrática del Congo',
		'República Dominicana',
		'Ruanda',
		'Rumania',
		'Rusia',
		'Samoa',
		'San Vicente y las Granadinas',
		'Santa Lucía',
		'Senegal',
		'Serbia',
		'Seychelles',
		'Sierra Leona',
		'Singapur',
		'Siria',
		'Somalia',
		'Sri Lanka',
		'Suazilandia',
		'Sudáfrica',
		'Sudán',
		'Sudán del Sur',
		'Suecia',
		'Suiza',
		'Surinam',
		'Tailandia',
		'Taiwan',
		'Tajikistan',
		'Tanzania',
		'Timor Oriental',
		'Togo',
		'Tonga',
		'Trinidad y Tobago',
		'Túnez',
		'Turkmenistán',
		'Turquía',
		'Tuvalu',
		'Ucrania',
		'Uganda',
		'Uruguay',
		'Uzbekistán',
		'Vanuatu',
		'Venezuela',
		'Vietnam',
		'Yemen',
		'Yibuti',
		'Zambia',
		'Zimbabwe'
	]

	TABLA_FIELDS = [
		['titulo_actividad', 'normal'], 
	]

	has_many :aco_pos
	has_many :publico_objetivos, through: :aco_pos

end
