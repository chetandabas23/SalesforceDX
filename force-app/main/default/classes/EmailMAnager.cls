public class EmailMAnager 
{
    //4COxERk9cyOk74kUQjPiWBIcJ
    //public method
	public static void sendmail(String address,string subject,string body)
    {
        //create an email message object
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {Address};
            mail.settoAddresses(toAddresses);
            mail.setsubject(subject);
            mail.setPlainTextBody(body);
        //pass this email message to the built-in sendemail results
        //of the messaging class
        Messaging.SendEmailResult[] results = Messaging.SendEmail(new Messaging.SingleEmailMessage[] {mail});
        //call a helper method to inspect the returned results
        inspectResults(results);
    }
    //helper method
    private static Boolean inspectResults(Messaging.SendEmailResult[] results)
    {
        Boolean Sendresult = true;

        for(Messaging.SendEmailResult res:Results)
        {
            if(res.isSuccess())
            {
                system.debug('Email sent Successfully');
            }
            else
            {
                sendResult = false;
                System.debug('the following errors occured:' +res.getErrors());
            }
        }
        return sendResult;
    }
    public static boolean checkresult()
    {
        boolean checkresult=true;
        return checkresult;
    }
}