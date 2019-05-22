require 'rails_helper'

describe 'as a user visits the comedian index' do
  it 'displays comedian specials' do
    comedian_1 = Comedian.create(name:"Maria Bamford", age: 48, city: "Eagle Rock")
    special_1 = comedian_1.specials.create(title: "Maria Bamford: The Special Special Special!", run_time: 49)
    special_2 = comedian_1.specials.create(title: "Maria Bamford: Old Baby", run_time: 64)

    comedian_2 = Comedian.create(name:"Hannah Gadsby", age: 34, city: "Smithton")
    special_3 = comedian_2.specials.create(title: "Nanette", run_time: 69)


    visit '/comedians?age=34'
    
    expect(page).to have_content(comedian_2.name)
    expect(page).to_not have_content(comedian_1.name)
  end
end
