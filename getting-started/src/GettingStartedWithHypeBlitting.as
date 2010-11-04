package {
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.filters.BlurFilter;

	import hype.extended.behavior.MouseFollowSpring;
	import hype.extended.rhythm.FilterRhythm;
	import hype.framework.core.TimeType;
	import hype.framework.display.BitmapCanvas;

	[SWF(width="550", height="310", backgroundColor="#ffffff", frameRate="60")]
	public class GettingStartedWithHypeBlitting extends Sprite {

		public function GettingStartedWithHypeBlitting() {

			var container:Sprite = new Sprite();
			var circle:Shape = new Shape();
			var canvas:BitmapCanvas = new BitmapCanvas(550, 310);
			var blur:BlurFilter = new BlurFilter(5, 5, 3);
			var blurRhythm:FilterRhythm = new FilterRhythm([blur], canvas.bitmap.bitmapData);
			var followBehavior:MouseFollowSpring = new MouseFollowSpring(circle, 0.8, 0.1);

			circle.graphics.beginFill(0xFF3300 * Math.random());
			circle.graphics.drawCircle(0,0,15);

			canvas.startCapture(container, true);
			followBehavior.start();
			blurRhythm.start(TimeType.ENTER_FRAME, 1);

			container.addChild(circle);
			addChild(container);
			addChild(canvas);

		}
	}
}