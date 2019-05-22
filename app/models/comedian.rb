class Comedian < ApplicationRecord
  has_many :specials
  validates_presence_of :name, :age, :city

  def self.get_age(age)
    Comedian.where(age: age)
  end
end
