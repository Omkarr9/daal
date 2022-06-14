import java.util.Scanner;
import java.util.StringTokenizer;
public
class Customer
{
private
    String name;
private
    String dob;
public
    void Read()
    {
        System.out.println("Enter customer name : ");
        Scanner sc = new Scanner(System.in);
        name = sc.next();
System.out.println("Enter customer DOB (dd/mm/yyyy): "); dob = sc.next();
String datePattern = "\\d{2}/\\d{2}/\\d{4}";
while (!(dob.matches(datePattern)))
{
System.out.println("Please enter the date in dd/mm/yyyy format!"); dob = sc.next();
}
    }
public
    void Display()
    {
        StringTokenizer st = new StringTokenizer(dob, "/");
        String[] seq = new String[10];
        int i;
        System.out.print("Customer name and DOB is : " +name);
        System.out.print("\n");
        System.out.print("" + st.nextToken());
        for(i=0; i<2; i++){
        	 System.out.print("/" + st.nextToken());
        }
        System.out.println("\n");
    }
public
    static void main(String args[])
    {
        Customer c1 = new Customer();
        c1.Read();
        c1.Display();
    }
}
