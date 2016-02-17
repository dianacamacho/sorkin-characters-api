class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :show
      t.string :job_title

      t.timestamps 
    end
  end
end
