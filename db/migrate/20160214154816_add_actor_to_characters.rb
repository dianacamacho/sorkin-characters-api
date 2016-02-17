class AddActorToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :actor_first_name, :string
    add_column :characters, :actor_last_name, :string
  end
end
