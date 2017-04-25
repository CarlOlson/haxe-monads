package;

import utest.Assert;
import monads.Monads.*;

class TestPair {
    public function new() {};

    public function setup() {}

    public function teardown() {}

    public function test_has_left_and_right() {
	var pair = makePair(0, 1);

	Assert.equals(pair.left, 0);
	Assert.equals(pair.right, 1);
    }

    public function test_can_have_mixed_types() {
	var pair = makePair(0, "hello");

	Assert.is(pair.left, Int);
	Assert.is(pair.right, String);
    }
}