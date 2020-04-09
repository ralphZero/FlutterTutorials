class Quote {
  String author;
  String text;

//If we used named parameters
  Quote({this.text, this.author});

//What we would do.
  /* Quote(String mAuthor,String mText){
    this.author = mAuthor;
    this.text = mText;
  } */
}
