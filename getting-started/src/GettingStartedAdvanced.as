package {
	import flash.display.Shape;
	import flash.display.Sprite;

	import hype.extended.behavior.MouseFollowSpring;

	[SWF(width="550", height="310", backgroundColor="#ffffff", frameRate="60")]
	public class GettingStartedAdvanced extends Sprite {

		public function GettingStartedAdvanced() {

			for (var i:uint=0; i<500; i++) {
				var circle:Shape = new Shape();
				circle.graphics.beginFill(0xFF3300 * Math.random());
				circle.graphics.drawCircle(0, 0,10 * Math.random());
				addChild(circle);

				var followBehavior:MouseFollowSpring = new MouseFollowSpring(circle, 0.8 * Math.random() , 0.1 * Math.random());
				followBehavior.start();
			}

		}
	}
}