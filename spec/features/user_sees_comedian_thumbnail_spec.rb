require 'rails_helper'

describe 'as a user visits the comedian index' do
  it 'displays comedian thumbnail image' do
    comedian_1 = Comedian.create(name:"Maria Bamford", age: 48, city: "Eagle Rock", photo_url: "https://m.media-amazon.com/images/M/MV5BMTI4MzQzMjQ3M15BMl5BanBnXkFtZTYwMTU1OTAz._V1_UX214_CR0,0,214,317_AL_.jpg")
    comedian_2 = Comedian.create(name:"Jessica Williams", age: 29, city: "New York City", photo_url: "https://m.media-amazon.com/images/M/MV5BMTgzMTk3NjgyMl5BMl5BanBnXkFtZTcwMjY2NzkyNw@@._V1_UX214_CR0,0,214,317_AL_.jpg" )

    visit comedians_path
    
    expect(page).to have_css("img[src*='https://m.media-amazon.com/images/M/MV5BMTgzMTk3NjgyMl5BMl5BanBnXkFtZTcwMjY2NzkyNw@@._V1_UX214_CR0,0,214,317_AL_.jpg']")
    expect(page).to have_css("img[src*='https://m.media-amazon.com/images/M/MV5BMTI4MzQzMjQ3M15BMl5BanBnXkFtZTYwMTU1OTAz._V1_UX214_CR0,0,214,317_AL_.jpg']")
  end
end
