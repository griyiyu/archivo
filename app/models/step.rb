class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office
  
  # Crea una nueva instancia de step que tiene la oficina "mesa de entrada"
  def start
    office = Office.where(name: 'Mesa de entrada').first
    create({ :office => office })
  end
  
  
  # Crea una nueva instancia de Step ue tiene la oficina "Archivo" y si no existe la oficina la crea
  def archivate
    officeName = 'Archivo'
    office = Office.where(name: officeName).first
    if (office == nil)
      Office.create({ :name => officeName })
      office = Office.where(name: officeName).first
    end
    create({ :office => office })
  end
  
end
