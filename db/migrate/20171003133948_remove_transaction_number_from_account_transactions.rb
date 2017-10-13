class RemoveTransactionNumberFromAccountTransactions < ActiveRecord::Migration[5.1]
  def change
    remove_column :account_transactions, :transations_number, :string
  end
end
