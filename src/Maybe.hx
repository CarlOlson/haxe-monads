enum MaybeImpl<T> {
    None;
    Just(value:T);
}

abstract Maybe<T>(MaybeImpl<T>) from MaybeImpl<T> to MaybeImpl<T> {
    inline private function new() {
	this = None;
    }

    public static function just<T>(value:T):Maybe<T> {
	return cast Just(value);
    }

    public static function none<T>():Maybe<T> {
	return cast None;
    }

    @:op(A && B)
    private static function and<T>(a:Maybe<T>, b:Maybe<T>):Maybe<T> {
	switch(a) {
	case Just(v):
	    return b;
	case None:
	    return None;
	}
    }
}