import java.util.Scanner;
class Stack
{
private
    int top;
private
    int[] item;
    Stack(int size)
    {
        top = -1;
        item = new int[size];
    }
public
    void push(int data)
    {
        if (top == item.length - 1)
        {
            System.out.println("Stack Overflow");
        }
        else
        {
            item[++top] = data;
        }
    }
public
    int pop()
    {
        if (top < 0)
        {
            System.out.println("Stack Underflow");
            return 0;
        }
        else
        {
            System.out.println("Poped item is : " + item[top]);
            return item[top--];
        }
    }
public
    void display()
    {
        if (top == -1)
        {
            System.out.println("Stack is empty");
        }
        else
        {
            System.out.print("Stack Items : ");
            for (int i = 0; i <= top; i++)
            {
                System.out.print(item[i] + " ");
            }
            System.out.println("<-top");
        }
    }
} // close class stack
class StackDemo
{
public
    static void main(String[] args)
    {
        Stack stk = new Stack(3);
        boolean rerun = true;
        int choice, num;
        Scanner sc = new Scanner(System.in);
        do
        {
            System.out.println("\nMENU: 1)Push 2)Pop 3)Display 4)Exit ");
            System.out.println("Enter your choice: ");
            choice = sc.nextInt();
            switch (choice)
            {
            case 1:
                System.out.println("Enter Item to be Pushed to stack: ");
                num = sc.nextInt();
                stk.push(num);
                break;
            case 2:
                stk.pop();
                break;
            case 3:
                stk.display();
                break;
            case 4:
                rerun = false;
                break;
            default:
                System.out.println("Invalid Choice");
            }
        } while (rerun == true);
    }
}
