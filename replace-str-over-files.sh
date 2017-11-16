##############################################################################
# substitute #replace #string #in #multiple #files #exclude #folder #dir.

# replace string occurrences over dir/folder files.
# examples:
# grep -rl 'windows' ./ | xargs sed -i 's/windows/linux/g'
# grep -rl --exclude-dir='.git' 'CashRegisterIncomeAndExpenses' ./ | xargs sed -i 's/CashRegisterIncomeAndExpenses/CashRegister/g'

grep -rl  'string1' somedir/ | xargs sed -i 's/string1/string2/g' 

