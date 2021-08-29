class DatosCentro < ApplicationRecord

	TABLA_FIELDS = [
		['nombre_espaniol', 'normal']
	]

	mount_uploader :doc_aprobatorio, ArchivoUploader
	mount_uploader :doc_extension, ArchivoUploader

end
