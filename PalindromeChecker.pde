
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
  for(int i = 0; i < word.length(); i++)
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
    if(Character.isLetter(str.charAt(i))==true)
    sNew = sNew + str.substring(i, i+1);
    return sNew;
}