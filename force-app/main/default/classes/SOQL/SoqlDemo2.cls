public class SoqlDemo2 {
    public static void soqlchildToPareny_1() {
        List<contact> listContacts = [select id, name, account.name, account.industry from contact where account.industry = 'Energy'];
        system.debug (listContacts);
        for (contact eachContact : listContacts){
            string accName = eachContact.account.name;
            system.debug('contact name= ' + eachContact.Name + 'its acc name is' + accName);
        }

    }
}
