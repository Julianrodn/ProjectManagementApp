class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :nit
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
