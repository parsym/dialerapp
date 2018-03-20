class AddNumberToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :number, :string
  end
end
