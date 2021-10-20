class Spending{
  //prop
  int spendId;
  String spendItems;
  DateTime spendTime;
  int spendMoney;
  //contructor
  Spending({
    required this.spendId,
    required this.spendItems,
    required this.spendTime,
    required this.spendMoney
  });
  //convert to a map for sql
  Map<String,dynamic> toMap(){
    return{
      'spendId':spendId,
      'spendItems':spendItems,
      'spendTime':spendTime,
      'spendMoney':spendMoney
    };
  }
}