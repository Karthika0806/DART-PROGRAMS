List<String> Countries = [];
void main() {
  //when we are using upper case it will print first
  Countries = [
    'india',
    'china',
    'america',
    'uke',
    'japan',
    'korea',
  ];

  Countries.sort((a, b) {
    return a.compareTo(b);
  });
}

//String sortS(a, b) {
  //return a.compareTo(b);
//}
