class AddStripeChargeId < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :stripe_charge_id, :string
    change_column :sales, :stripe_charge_id, :string, null: false
  end
end
