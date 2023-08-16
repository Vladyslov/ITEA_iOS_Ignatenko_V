



class BankAccount {
    private var accountNumber: String
    open var balance: Double
    
    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }
    
    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposited $\(amount). New balance: $\(balance)")
        }
    }
    func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
            print("Withdrawn $\(amount) New balance: $\(balance)")
        }
    }
    func checkBalance() {
        print("Current balance: $\(balance)")
    }
}

class SavingsAccount: BankAccount {
    private var interestRate: Double
   
    init(accountNumber: String, initialBalance: Double, interestRate: Double) {
            self.interestRate = interestRate
        super.init(accountNumber: accountNumber, balance: initialBalance)
        }
    
    func addInterest() {
        let interestAmount = balance * interestRate
        deposit(amount: interestAmount)
        print("Interest added: $\(interestAmount)")
    }
}


let  savingAccount = SavingsAccount(accountNumber: "9876543", initialBalance: 1000, interestRate: 0.05)
savingAccount.deposit(amount: 500)
savingAccount.withdraw(amount: 300)
savingAccount.addInterest()
savingAccount.checkBalance()
