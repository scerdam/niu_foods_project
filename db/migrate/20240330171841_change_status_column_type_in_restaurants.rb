class ChangeStatusColumnTypeInRestaurants < ActiveRecord::Migration[7.0]
  def up
    # Cambiar la columna status de string a integer
    change_column :restaurants, :status, :integer, using: 'CASE WHEN status = "error" THEN 0 ELSE 1 END'

    # Agregar un enum para la columna status
    change_column_default :restaurants, :status, from: nil, to: 1
  end

  def down
    # Revertir los cambios en caso de rollback
    change_column_default :restaurants, :status, from: 1, to: nil
    change_column :restaurants, :status, :string
  end
end
