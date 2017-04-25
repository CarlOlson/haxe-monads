import utest.Assert;
import Monads.*;

class TestMaybe {
    public function new() {};

    public function setup() {}

    public function teardown() {}

    public function test_has_only_two_possibilities() {
	switch(just(0)) {
	case Just(v):
	    Assert.equals(v, 0);
	case None:
	    Assert.fail();
	}

	switch(none()) {
	case Just(v):
	    Assert.fail();
	case None:
	    Assert.pass();
	}
    }
}