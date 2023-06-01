WebBanking{version     = 1.00,
           url         = "https://moneymoney-app.com/onlinebanking",
           services    = {"Premium Account"},
           description = "Demo"}

function SupportsBank (protocol, bankCode)
  return protocol == ProtocolWebBanking and bankCode == "Premium Account"
end

function InitializeSession (protocol, bankCode, username, reserved, password)
  -- Login.
end

function ListAccounts (knownAccounts)
  -- Return array of accounts.
  local account = {
    name = "Premium Account",
    owner = "Jane Doe",
    accountNumber = "111222333444",
    bankCode = "80007777",
    currency = "EUR",
    type = AccountTypeGiro
  }
  return {account}
end

function RefreshAccount (account, since)
  -- Return balance and array of transactions.
  local transaction = {
    bookingDate = 1325764800,
    purpose = "Hello World!",
    amount = 42.00
  }
  return {balance=42.00, transactions={transaction}}
end

function EndSession ()
  -- Logout.
end
