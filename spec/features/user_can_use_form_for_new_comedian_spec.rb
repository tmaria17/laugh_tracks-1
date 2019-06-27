require 'rails_helper'

describe 'as a user visits the new form' do
  it 'creates a new comedian' do

    visit '/comedians/new'

    fill_in :comedian_name, with: "Harry Potter"
    fill_in :comedian_age, with: 25
    fill_in :comedian_city, with: "Hogwarts"

    click_on "Submit"

    comedian = Comedian.last

    expect(comedian.name).to eq("Harry Potter")
    expect(comedian.age).to eq(25)
    expect(comedian.city).to eq("Hogwarts")
    expect(current_path).to eq(comedians_path)
  end
end
