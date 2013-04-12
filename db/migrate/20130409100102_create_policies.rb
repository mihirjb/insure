class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :pnum
      t.string :ptype
      t.datetime :depositedate
      t.datetime :duedate
      t.string :personinsured
      t.string :premium
      t.string :insurancecompany
      t.string :sumassured

      t.timestamps
    end
  end
end
