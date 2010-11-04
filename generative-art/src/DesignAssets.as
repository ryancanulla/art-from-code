package {
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class DesignAssets extends EventDispatcher {

		private var _selectedIndex:uint;
		private var _assetCollection:Array;

		public function DesignAssets() {}

		public function set selectedIndex(e:uint):void {
			_selectedIndex = e - 1;
		}

		public function get assetCollection(): Array {
			return _assetCollection as Array;
		}

		public function get totalAssets():Number {
			return _assetCollection.length + 1;
		}


	}
}