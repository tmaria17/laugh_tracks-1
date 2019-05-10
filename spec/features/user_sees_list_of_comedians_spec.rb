require 'rails_helper'

describe 'as a user visits the comedian index' do
  it 'displays comedian attributes' do
    comedian_1 = Comedian.create(name:"Maria Bamford", age: 48, city: "Eagle Rock")
    comedian_2 = Comedian.create(name:"Jessica Williams", age: 29, city: "New York City")

    visit '/comedians'
    
    expect(page).to have_content(comedian_2.name)
    expect(page).to have_content(comedian_2.age)
    expect(page).to have_content(comedian_2.city)

    within(first(".comedian")) do
      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_1.city)
    end
  end
end
