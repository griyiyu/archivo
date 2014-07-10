class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office
  
  # Crea una nueva instancia de step que tiene la oficina "mesa de entrada"
  def self.start
    office = Office.where(name: 'Mesa de entrada').first
    create({ :office => office })
  end
  
  
  # Crea una nueva instancia de Step que tiene la oficina "Archivo" y si no existe la oficina, la crea
  def self.archivate
    officeName = 'Archivo'
    office = Office.where(name: officeName).first
    unless office
      Office.create({ :name => officeName })
      office = Office.where(name: officeName).first
    end
    create({ :office => office })
  end
  
end
