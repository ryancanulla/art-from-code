package com.ryancanulla.assets
{
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import flash.display.BlendMode;
    import flash.text.TextField;
    import flash.text.TextFormat;

    public class StringArtFromCode extends Asset
    {

        public function StringArtFromCode() {
            super();
        }

        override public function draw():void {
            var text:TextField = new TextField;
            var format:TextFormat = new TextFormat;
            format.size = 50;
            format.font = "Arial";
            format.bold = false;
            text.text = "infinity";
            //text.scaleX = 1;
            //text.scaleY = 1;
            text.setTextFormat(format);
            addChild(text);

            var bitmapData:BitmapData = new BitmapData(80, 20);
            bitmapData.draw(text);

            var bitmap:Bitmap = new Bitmap(bitmapData);
            bitmap.blendMode = BlendMode.MULTIPLY;
            //bitmap.scaleX = 1;
            //bitmap.scaleY = 1;
            this.addChild(bitmap);

            //addChild(text);
        }
    }
}
