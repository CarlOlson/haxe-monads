class Monads {
    private function new() {}

    public static function makePair<T, R>(left:T, right:R):Pair<T, R> {
	return {left: left, right: right};
    }
}