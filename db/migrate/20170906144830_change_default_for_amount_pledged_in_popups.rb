class ChangeDefaultForAmountPledgedInPopups < ActiveRecord::Migration[5.1]
  def change
    change_column_default :popups, :amount_pledged, 0
    change_column_default :popups, :funding_goal, 0
  end
end
