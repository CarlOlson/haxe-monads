package;

import utest.Runner;
import utest.ui.Report;

class TestAll {
  public static function main() {
    var runner = new Runner();
    runner.addCase(new TestMaybe());
    runner.addCase(new TestPair());
    Report.create(runner);
    runner.run();
  }
}