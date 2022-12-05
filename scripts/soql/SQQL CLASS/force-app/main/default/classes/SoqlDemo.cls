public class SoqlDemo {
    public static void accountSOQL_1() {

        list<account> listAccount = [select id, name from account where name like '%a%'];
        system.debug('list of account -->' +listAccount);

    }

    public static void accountSOQL_11() {
        account acc = [select id, name, phone, AccountNumber from account order by createddate desc limit 1];
        system.debug(acc);

        string accName= acc.Name;
        string accphone= acc.phone;
        system.debug('acc name is' + accName + ', acc phone is ' + accPhone + ', account number is ' + acc.AccountNumber);
        
    }

    public static void accountSOQL_3() {
        List<Account> listAcc = [select id, name, phone, accountnumber from account order by createddate desc];
        
        for (Account eachAcc : listAcc){
            string accName = eachAcc.Name;
            string accphone = eachAcc.Phone;
            system.debug( 'acc name is' + accName + ', acc phone is ' + accphone + ',  account number is ' + eachacc.accountnumber);
            
        }
       
    }
    public static void accountSOQL_filter( string accNameFilter) {

        List<Account> listAcc = [select id, name, phone from account where name = : accNameFilter];
        system.debug ('list of accounts ->' + listAcc);
        
    }
}
