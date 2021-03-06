module BankAccounts
  class ValidateNewTransaction
    def initialize(amount:, transaction_type:, bank_account_id:, user:)
      @amount           = amount.try(:to_f)
      @transaction_type = transaction_type
      @bank_account_id  = bank_account_id
      @bank_account     = BankAccount.where(id: @bank_account_id).first
      @user             = user
      @errors           = []
    end

    def execute!
      validate_existence_of_account!
      validate_authorized_user!

      if @transaction_type == "withdraw"  and @bank_account.present?
        validate_withdraw!
      end

      @errors
    end

    private
    def validate_authorized_user!
      if !["TELLER", "ADMIN", "MANAGER"].include?(@user.role)
        @errors << "only admin can add a transaction"
      end
    end

    def validate_withdraw!
      if @bank_account.balance - @amount < 0.00
        @errors << "Not enouth funds"
      end
    end

    def validate_existence_of_account!
      if @bank_account.blank?
        @errors << "Account not found"
      end
    end
  end
end
