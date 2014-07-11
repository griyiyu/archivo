class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office
  
  # Crea una nueva instancia de step que tiene la oficina "mesa de entrada"
  def self.first_step
    create({ :office => Office.start_office })
  end
  
  
  # Crea una nueva instancia de Step que tiene la oficina "Archivo" y si no existe la oficina, la crea
  def self.archivate
    create({ :office => Office.archivate_office })
  end
  
end
