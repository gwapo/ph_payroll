class CreateCompanyBranches < ActiveRecord::Migration
  def self.up
    create_table :company_branches do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.text :descriptions

      t.timestamps
    end
  end

  def self.down
    drop_table :company_branches
  end
end
