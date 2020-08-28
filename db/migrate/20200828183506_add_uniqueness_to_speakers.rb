class AddUniquenessToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_index :speakers, :email, unique: true
    add_index :speakers, :full_name, unique: true
  end
end
