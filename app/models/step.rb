class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office
  attr_accessor :email
  before_save :assing_person
  
  # Crea una nueva instancia de step que tiene la oficina "mesa de entrada"
  def self.first_step
    create({ :office => Office.start_office })
  end
  
  
  # Crea una nueva instancia de Step que tiene la oficina "Archivo" y si no existe la oficina, la crea
  def self.archivate
    create({ :office => Office.archivate_office })
  end
  
  
  private
    def assing_person
      self.person ||= Person.find_or_create_by(email: email)
    end  

end
