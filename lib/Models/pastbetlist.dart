class PastBets {
  final String imgt1;
  final String imgt2;
  final String result;
  final int t1goals;
  final int t2goals;

  PastBets({
    this.imgt1,
    this.imgt2,
    this.result,
    this.t1goals,
    this.t2goals,
  });
  static List<PastBets> mybets = [
    PastBets(
      imgt1: "assets/t1.jpg",
      imgt2: "assets/t1.jpg",
      result: "t1 win",
      t1goals: 2,
      t2goals: 1,
    ),
    PastBets(
      imgt1: "assets/t3.jpg",
      imgt2: "assets/t4.jpg",
      result: "t2 win",
      t1goals: 2,
      t2goals: 5,
    ),
    PastBets(
      imgt1: "assets/t1.jpg",
      imgt2: "assets/t2.jpg",
      result: "t1 win",
      t1goals: 3,
      t2goals: 2,
    ),
  ];
}
