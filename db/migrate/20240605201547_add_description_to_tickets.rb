class AddDescriptionToTickets < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :description, :text
  end
end
