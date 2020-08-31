class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
    	t.string :email, :null => false
    	t.string :firstname, :limit => 30, :null => false
    	t.string :lastname, :limit => 30, :null => false
    	t.string :password_digest
      	t.timestamps
    end
  end
end
