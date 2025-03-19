class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :homephone
      t.string :mobile
      t.string :address
      t.string :string
      t.date :birthday

      t.timestamps
    end
  end
end
