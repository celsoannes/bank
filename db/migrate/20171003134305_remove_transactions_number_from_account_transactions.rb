class RemoveTransactionsNumberFromAccountTransactions < ActiveRecord::Migration[5.1]
  def change
    remove_column :account_transactions, :transactions_number, :string
  end
end
