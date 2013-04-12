class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :companyorindividual
      t.string :address
      t.string :city
      t.string :state
      t.integer :landlinephone
      t.integer :mobilenumber
      t.string :contperson

      t.timestamps
    end
  end
end
