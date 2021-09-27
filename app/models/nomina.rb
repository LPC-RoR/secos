class Nomina < ApplicationRecord

	NOMINA = [
		['Ricardo Barra Ríos',        'ricbarra@udec.cl'],
		['Javiera Bianchi Díaz',      'javierabianchi@socioecologiacostera.cl'],
		['Bernardo Broitman Rojas',   'bernardo.broitman@uai.cl'],
		['Loretto Contreras Porcia',  'lorettocontreras@unab.cl'],
		['Rodrigo Estevez Weinstein', 'restevezw@santotomas.cl'],
		['Laura Farías',              'laura.farias@udec.cl'],
		['Nelson Lagos Suárez',       'nlagoss@santotomas.cl'],
		['Marco Lardies Carrasco',    'marco.lardies@uai.cl'],
		['María José Martínez Harms', 'mariajosesmart@gmail.com'],
		['Carolina Martínez Reyes',   'carolina.marine@gmail.com'],
		['Fernando Mejías Baeza',     'fernandomejias@socioecologiacostera.cl'],
		['Laura Nahuelhual Muñoz',    'laura.nahuel@gmail.com'],
		['Sergio Navarrete',          'snavarrete@bio.puc.cl'],
		['Fernanda Oyarzún Dunlop',   'fernanda.oyarzun@ucsc.cl'],
		['Roberto Ponce Oliva',       'rdanielponce@gmail.com'],
		['Francisca Reyes Mensy',     'freyesm@uc.cl'],
		['Carolina Rojas Quezada',    'carolina.rojas@uc.cl'],
		['Gonzalo Saldías Yau',       'gsaldias@ubiobio.cl'],
		['Nicolás Segovia Cortés',    'nsegoviac@gmail.com'],
		['Fadia Tala González',       'ftala@ucn.cl'],
		['Genevieve Tremblay',        'gentremblaze@gmail.com'],
		['Cristian Vargas Gálvez',    'crvargas@udec.cl'],
		['Felipe Vásquez Lavín',      'fvlavin@gmail.com'],
		['Rodrigo Wiff Onetto',       'rodrigo.wiff@gmail.com']
	]

	TABLA_FIELDS = [
		['nombre', 'normal'], 
		['email',  'normal']
	]

 	FORM_FIELDS = [
		['email', 'entry'],
		['tipo',  'entry']
	]

	validates :email, presence: true
	validates :email, uniqueness: true

end
