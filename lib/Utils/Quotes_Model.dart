class QuotesModel{
  String? quote;
  String? author;

  List<QuotesModel> QuoteModalList = [];

  QuotesModel({this.quote,this.author});

  factory QuotesModel.formQuote(Map m1)
  {
    return QuotesModel(author: m1['author'],quote: m1['quote']);
  }

  QuotesModel.toList(List l1)
  {
    for(int i=0; i<l1.length; i++)
      {
        QuoteModalList.add(QuotesModel.formQuote(l1[i]));
      }
  }
}