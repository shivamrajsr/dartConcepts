void main() async{
//   List<int> originals = [1,2,3];
//   List<int> originalsTwo = originals;
//   originalsTwo.add(4);
//   print(originals);
//   print(originalsTwo);

  String s = await printDelayed();
  print(s);

  Stream<int> numStr = generateNumbers();
  await for(int n in numStr){
    print("e rhaa: $n");
  }
}

Future<String> printDelayed() async{
  Future<String> delayedFuture = Future.delayed(Duration(seconds:2),
          (){
        // print("delayed messg");
        return "delayed one";
      });
  return delayedFuture;

}

Stream<int> generateNumbers() async*{
  for(int i=1;i<=3;i++){
    await Future.delayed(Duration(seconds:1));
    yield i;
  }

}