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
  String sNew = new String();
  String sTemp = new String();
  for (int i=0; i<word.length();i++)
  {
    if (!word.substring(i,i+1).equals(" ")&&!word.substring(i,i+1).equals("!")&&!word.substring(i,i+1).equals("'")&&!word.substring(i,i+1).equals(",") )
    {
      sTemp = sTemp +word.substring(i,i+1);
    }
  }
  for (int j = sTemp.length()-1; j>=0; j--)
  {
    sNew = sNew + sTemp.substring(j,j+1);
  }
  if(sTemp.equalsIgnoreCase(sNew))
  {
    return true;
  }
  //your code here
  return false;
}

