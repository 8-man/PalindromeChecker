
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String deku = new String();
  for(int i = word.length()-1; i >= 0; i--)
  {
  if(Character.isLetter(word.charAt(i))== true)
  {
    deku = deku + word.substring(i, i+1);
  }
  }
  if(reverse(word.toLowerCase()).equals(deku.toLowerCase()))
  {
    return true;
  }
  else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length()-1;
    for(int i = last; i >= 0; i--)
    sNew = sNew + str.substring(i, i+1);
    return sNew;
}
public String spaces(String todo)
{
  String deku = new String();
  for(int i = 0; i < todo.length(); i++)
  if(Character.isLetter(todo.charAt(i)) == true)
  deku = deku + todo.substring(i, i+1);
  return deku;
}