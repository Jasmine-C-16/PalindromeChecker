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

public boolean palindrome( String str){
  String h = str;
  h = noSpace(h);
  h = noCaps(h);
  h = isLetter(h);
  System.out.println(h);
  if (reverse(h).equals(h)==true)
    return true;
  else 
    return false;
}

public String reverse(String str){
    String sNew = new String();
    for (int i=str.length()-1; i>=0; i--)
      sNew+=str.substring(i,i+1);
    return sNew;
}

public String noCaps(String str){
  //System.out.println(c);
  return str.toLowerCase();
}

public String isLetter(String str){

  if(str.length() == 0)
    return "";
  else if(Character.isLetter(str.charAt(0)))
    return str.charAt(0) + isLetter(str.substring(1));
  else
    return isLetter(str.substring(1));
}

public String noSpace(String str){
  String o="";
  for (int i=0; i<str.length(); i++){
    if (str.substring(i,i+1).equals(" ")==false)
      o += str.substring(i,i+1);
  }
  return o;
}
