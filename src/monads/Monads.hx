package monads;
import haxe.macro.*;

class Monads {
    private function new() {}

    public static function makePair<T, R>(left:T, right:R):Pair<T, R> {
	return new Pair(left, right);
    }

    public static function just<T>(value:T):Maybe<T> {
    	return Maybe.just(value);
    }

    public static function none<T>():Maybe<T> {
    	return Maybe.none();
    }

    macro public static function bind<T>(pair:ExprOf<Maybe<T>>, value:ExprOf<T>) {
	return macro
	    switch($pair) {
	    case Just(_value):
		$value = _value;
		true;
	    case None:
		false;
	    }
    }

    macro public static function bindPair<T, R>(pair:ExprOf<Maybe<Pair<T,R>>>,
						left:ExprOf<T>,
						right:ExprOf<R>) {
	return macro
	    switch($pair) {
	    case Just(_pair):
		$left = _pair.left;
	        $right = _pair.right;
		true;
	    case None:
		false;
	    };
    }
}