class Instas < ActiveRecord::Migration[5.2]
  def change
  	create_table :instas do |t|
  		t.text :author
  		t.text :url
  		t.string :title
  		t.timestamps
  	end
  end
end
