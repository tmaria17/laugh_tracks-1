require 'rails_helper'

RSpec.describe Comedian do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :city}
  end

  describe 'relationships' do
    it {should have_many :specials}
  end

  describe 'methods' do
    it 'should find all comedians for a certain age' do
      comedian_1 = Comedian.create(name:"Maria Bamford", age: 48, city: "Eagle Rock", photo_url: "https://m.media-amazon.com/images/M/MV5BMTI4MzQzMjQ3M15BMl5BanBnXkFtZTYwMTU1OTAz._V1_UX214_CR0,0,214,317_AL_.jpg")
      comedian_2 = Comedian.create(name:"Jessica Williams", age: 29, city: "New York City", photo_url: "https://m.media-amazon.com/images/M/MV5BMTgzMTk3NjgyMl5BMl5BanBnXkFtZTcwMjY2NzkyNw@@._V1_UX214_CR0,0,214,317_AL_.jpg" )
      expect(Comedian.get_age(29)[0]).to eq(comedian_2)
    end
  end
end
