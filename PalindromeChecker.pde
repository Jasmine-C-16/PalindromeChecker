public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word, String str){

  if (reverse(word).equals(str))
    return true;
  else 
    return false;
}

public String reverse(String str){
    String sNew = new String();
    for (int i=str.length()-1; i>=0; i--)
      sNew+=str.substring(i,i+1);
    return sNew.toLowerCase();
}

public String ugh(String str){
  String o=word;
  for (int i=0; i<word.length(); i++){
    if (word.substring(i,i+1).equals(" ")==false)
      o += word.substring(i,i+1);
  }
  String m=o;
  for (int i=0; i<o.length(); i++)
     if (Character.isLetter(o.charAt(i))==true)
       m+=o.charAt(i);
  m.toLowerCase();
  return m;
}
