class AddPhotoToComedians < ActiveRecord::Migration[5.1]
  def change
    add_column :comedians, :photo_url, :string
  end
end
