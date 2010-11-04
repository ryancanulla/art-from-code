package
{
    import com.ryancanulla.assets.Asset;
    import com.ryancanulla.assets.Circle;
    import com.ryancanulla.assets.Cube3D;
    import com.ryancanulla.assets.DoubleCircle;
    import com.ryancanulla.assets.IAsset;
    import com.ryancanulla.assets.Oval;
    import com.ryancanulla.assets.RandomOffice;
    import com.ryancanulla.assets.RandomShape;
    import com.ryancanulla.assets.Square;
    import com.ryancanulla.assets.StringArtFromCode;

    import flash.display.GradientType;
    import flash.display.Graphics;
    import flash.display.Shape;
    import flash.display.SpreadMethod;
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.geom.ColorTransform;
    import flash.geom.Matrix;

    import org.papervision3d.objects.primitives.Cube;

    [SWF(width="550", height="310", backgroundColor="#ffffff", frameRate="60")]
    public class GenerativeArt extends Sprite
    {

        private var count:Number = 0;
        private var maxscale:Number = 15;
        private var minscale:Number = 1;
        private var maxrotation:Number = 180;
        private var offsetX:Number = 100;
        private var offsetY:Number = 100;
        private var marginX:Number = 125;
        private var marginY:Number = 50;
        //A2C1C6,86B1B7,AECBAD,CFDCB0,D6E1D1
        private var colorPalete:Array = [ 0xF0C755,0xE2AD3B, 0xBF5C00, 0x901811, 0x5C110F ];

        //private var assets:DesignAssets;
        private var assetCollection:Array;
        private var designAsset:Asset;

        public function GenerativeArt() {
            addEventListener(MouseEvent.CLICK, onMouseClick);
            createBackground();

            var shape:Cube3D = new Cube3D();
            //scaleX = 5;
            //scaleY = 5;
            //addChild(shape);
            addEventListener(Event.ENTER_FRAME, onEnterFrame);
        }

        private function onEnterFrame(e:Event):void {
            if (count < 70) {
                count++;
                createDesign();
            }
        }

        private function createDesign():void {
            var isText:Boolean = false;
            var is3D:Boolean = false;

            var index:uint = Math.round(Math.random() * 9);
            maxscale = 15;

            switch (index) {
                case 0:
                    designAsset = new RandomOffice();
                    maxscale = 50 * Math.random();
                    isText = false;
                    is3D = false;
                    break;
                case 1:
                    designAsset = new Oval();
                    isText = false;
                    is3D = false;
                    break;
                case 2:
                    designAsset = new DoubleCircle();
                    maxscale = 1;
                    isText = false;
                    is3D = false;
                    trace("double circle");
                    break;
                case 3:
                    designAsset = new Square();
                    maxscale = 2;
                    isText = false;
                    is3D = false;
                    break;
                case 4:
                    designAsset = new DoubleCircle();
                    isText = false;
                    is3D = false;
                    maxscale = 2;
                    break;
                case 5:
                    designAsset = new RandomOffice();
                    maxscale = 15 * Math.random();
                    isText = false;
                    is3D = false;
                    break;
                case 6:
                    designAsset = new Square();
                    maxscale = 15 * Math.random();
                    isText = false;
                    is3D = false;
                    break;
                case 7:
                    designAsset = new DoubleCircle();
                     maxscale = 2;
                    //designAsset.scaleX = 5;
                    //designAsset.scaleY = 5;
                    isText = false;
                    is3D = true;
                    break;
                case 8:
                    designAsset = new Square();
                    maxscale = 2;
                    isText = false;
                    is3D = false;
                    break;
                case 9:
                    designAsset = new DoubleCircle();
                    maxscale = 2;
                    isText = false;
                    is3D = false;
                    break;
                case 10:
                    designAsset = new DoubleCircle();
                    maxscale = 2;
                    isText = false;
                    is3D = false;
                    break;
                case 11:
                    designAsset = new DoubleCircle();
                    maxscale = 5;
                    isText = false;
                    is3D = false;
                    break;
                case 12:
                    designAsset = new DoubleCircle();
                    maxscale = 2;
                    isText = false;
                    is3D = false;
                    break;
            }

            designAsset.x = Math.random() * offsetX + marginX;
            designAsset.y = Math.random() * offsetY + marginY;

            offsetX = designAsset.x;
            offsetY = designAsset.y;

            designAsset.scaleX = designAsset.scaleY = Math.random() * maxscale + minscale;

            if (isText == false) {
                var c:ColorTransform = new ColorTransform();
                c.color = colorPalete[Math.ceil(Math.random() * colorPalete.length) - 1];
                designAsset.transform.colorTransform = c;
            }
            if (is3D == true) {

            }

            designAsset.alpha = Math.random();
            designAsset.rotation = Math.random() * maxrotation;

            addChild(designAsset);

        }

        private function removeComposite():void {
            while (numChildren > 0) {
                //eliminates all of the childs from the main timeline
                removeChildAt(0)
            }
        }

        private function createBackground():void {
            var shape1:Shape = new Shape();
            var matrix:Matrix = new Matrix();
            matrix.createGradientBox(550, 310, (Math.PI / 180) * 90, 0, 00);
            var colors:Array = [ 0xFFF8E3, 0xFFFFFF, 0xFFF8E3 ];
            var alphas:Array = [ 1.0, 1.0, 1.0 ];
            var ratios:Array = [ 0, 90, 200 ];

            shape1.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, matrix);
            shape1.graphics.drawRect(0.0, 0.0, 550, 310);
            shape1.graphics.endFill();
            addChild(shape1);
        }

        private function onMouseClick(e:MouseEvent):void {
            removeComposite();
            count = 0;
            createBackground();
            createDesign();
        }
    }
}
