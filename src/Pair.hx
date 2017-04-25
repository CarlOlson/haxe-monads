typedef PairImpl<T, R> = { left:T, right:R };

abstract Pair<T, R>(PairImpl<T, R>) {
    inline public function new(left:T, right:R)
	this = {left: left, right: right};

    public var left(get, never):T;
    public var right(get, never):R;

    inline private function get_left():T
	return this.left;

    inline private function get_right():R
	return this.right;
}