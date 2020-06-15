class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def list_roles
    characters.map do |r|
      "#{r.name} - #{r.show.name}"
    end
  end

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end
