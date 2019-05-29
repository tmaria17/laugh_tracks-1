require 'rails_helper'
describe 'as a user visits the comedian index' do
  it 'displays comedian special count' do
    comedian_1 = Comedian.create(name:"Maria Bamford", age: 48, city: "Eagle Rock")
    special_1 = comedian_1.specials.create(title: "Maria Bamford: The Special Special Special!", run_time: 49)
    special_2 = comedian_1.specials.create(title: "Maria Bamford: Old Baby", run_time: 64)

    visit '/comedians'
    
    expect(page).to have_content("Special Count: 2")
  end
end
