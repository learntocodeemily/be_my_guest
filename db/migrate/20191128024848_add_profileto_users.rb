class AddProfiletoUsers < ActiveRecord::Migration[5.2]
  def change
    def change
      add_column :users, :avatar, :string
      add_column :users, :diet, :string
      add_column :users, :allergy, :string

    end
  end
end
