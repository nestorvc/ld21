package
{
    import org.flixel.*;

    public class GameTracker
    {
        public var _score:Number;

        public var _api:KongApi;

        private static var _instance:GameTracker = null;
		public function GameTracker() {
        }

        private static function get instance():GameTracker {
            if(_instance == null) {
                _instance = new GameTracker();
                _instance._playerPos = new FlxPoint(0,0);
                _instance._timeRemaining = 30;
            }

            return _instance;
        }

        public static function get score():Number {
            return instance._score;
        }

        public static function set score(value:Number):void {
            instance._score = value;
        }

        public static function get api():KongApi {
            return instance._api;
        }

        public static function set api(value:KongApi):void {
            instance._api = value;
        }
    }
}
