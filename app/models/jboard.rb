class Jboard < ActiveRecord::Base

  belongs_to :user

  def self.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      all
    end
  end

  CATEGORY = %w(Chief Investigation Dispatch EMT Paramedic Firefighter Firefighter/EMT Firefighter/Paramedic
              Training Wildland Administration Other)


end