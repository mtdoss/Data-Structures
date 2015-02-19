function cyclic(firstLink) {
  slowRunner = firstLink;
  fastRunner = firstLink;

  for (var i = 0; i < 2; i++) {
    fastRunner = fastRunner.next;
    if (fastRunner === this.last) {
      return false;
    }
    if (fastRunner === slowRunner) {
      return true; 
    }
  }
  slowRunner = slowRunner.next;
}
