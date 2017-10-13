class RemoveTransationNumberFromAccountTransactions < ActiveRecord::Migration[5.1]
  def change
    remove_column :account_transactions, :transation_number, :string
  end
end
