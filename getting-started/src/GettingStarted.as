package {
	import flash.display.Shape;
	import flash.display.Sprite;

	import hype.extended.behavior.MouseFollowSpring;

	[SWF(width="550", height="310", backgroundColor="#ffffff", frameRate="60")]
	public class GettingStarted extends Sprite {

		public function GettingStarted() {

			var circle:Shape = new Shape();
			circle.graphics.beginFill(0xFF3300);
			circle.graphics.drawCircle(0,0,5);
			addChild(circle);

			var followBehavior:MouseFollowSpring = new MouseFollowSpring(circle, 0.8, 0.1);
			followBehavior.start();

		}
	}
}