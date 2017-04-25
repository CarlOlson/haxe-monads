class Monads {
    private function new() {}

    public static function makePair<T, R>(left:T, right:R):Pair<T, R> {
	return {left: left, right: right};
    }

    public static function just<T>(value:T):Maybe<T> {
    	return Maybe.just(value);
    }

    public static function none<T>():Maybe<T> {
    	return Maybe.none();
    }
}