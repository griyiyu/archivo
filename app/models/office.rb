class Office < ActiveRecord::Base

  def self.start_office
    find_or_create_by(name: 'Mesa de entrada')
  end
  
  def self.archivate_office
    find_or_create_by(name: 'Archivo')
  end

end
