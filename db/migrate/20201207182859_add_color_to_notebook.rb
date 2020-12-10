class AddColorToNotebook < ActiveRecord::Migration[6.0]
  def change
    add_column :notebooks, :color, :string
  end
end
