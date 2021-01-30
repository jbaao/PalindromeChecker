public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
 if (reverse(word).equals(reverse(reverse(word))))
  {
    return true;
  }
  
  return false;
}

public String reverse(String str)
{
   String words = new String();
  for (int i =str.length(); i>0; i--)
  {
    if(str.charAt(i-1) != ' ')
    {
      if(Character.isLetter(str.charAt(i-1)))
      {
      words = words + str.charAt(i-1);
      }
    }
  }
  return words.toLowerCase();
}

