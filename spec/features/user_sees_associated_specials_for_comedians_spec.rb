require 'rails_helper'

describe 'as a user visits the comedian index' do
  it 'displays comedian specials' do
    comedian_1 = Comedian.create(name:"Maria Bamford", age: 48, city: "Eagle Rock")
    special_1 = comedian_1.specials.create(title: "Maria Bamford: The Special Special Special!", run_time: 49)
    special_2 = comedian_1.specials.create(title: "Maria Bamford: Old Baby", run_time: 64)

    comedian_2 = Comedian.create(name:"Hannah Gadsby", age: 41, city: "Smithton")
    special_3 = comedian_2.specials.create(title: "Nanette", run_time: 69)


    visit '/comedians'
    
    expect(page).to have_content(comedian_2.name)
    expect(page).to have_content(comedian_2.age)
    expect(page).to have_content(comedian_2.city)
    expect(page).to have_content(special_3.title)
    expect(page).to have_content(special_3.run_time)

    within(first(".comedian")) do
      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_1.city)
      expect(page).to have_content(special_1.title)
      expect(page).to have_content(special_1.run_time)
      expect(page).to have_content(special_2.title)
      expect(page).to have_content(special_2.run_time)
    end
  end
end
