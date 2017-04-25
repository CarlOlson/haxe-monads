import utest.Assert;

class TestCase {
  var field : String;
  public function new() {};

  public function setup() {
    field = "some";
  }

  public function testFieldIsSome() {
    Assert.equals("some", field);
  }

  public function teardown() {
    field = null; // not really needed
  }
}