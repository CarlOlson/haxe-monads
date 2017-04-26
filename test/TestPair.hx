package;

import utest.Assert;
import monads.Monads;
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

    public function test_pairBind_assigns_values() {
	var left = null,
	    right = null,
	    pair = makePair(0, 1);

	Assert.isFalse(bindPair(none(), left, right));
	Assert.isTrue(bindPair(just(pair), left, right));

	Assert.equals(left, 0);
	Assert.equals(right, 1);
    }

    public function test_can_cast_with_implementation() {
	function mytest (pair:Pair<Int, Int>) {
	    return 0;
	}

	var pair = {left: 0, right: 1};
	mytest(pair); // compile error
	Assert.pass();
    }
}