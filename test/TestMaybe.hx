import utest.Assert;
import Monads.*;
import Maybe.MaybeImpl;

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

    public function test_and_should_stop_with_none() {
    	Assert.equals(none() && just(1), none());
	Assert.same(just(0) && just(1), just(1));
    }
}