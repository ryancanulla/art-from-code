package com.ryancanulla.assets
{
    import flash.display.Shape;

    public class DoubleCircle extends Asset
    {
        public function DoubleCircle() {
            super();
        }

        override public function draw():void {
            var shape:Shape = new Shape();
            shape.graphics.beginFill(0x000000);
            //shape.graphics.drawCircle(0,0,Math.random() * 4);
            shape.graphics.drawCircle(0, 0, Math.random());
            shape.graphics.endFill();
            addChild(shape);

            var shape2:Shape = new Shape();
            shape2.graphics.beginFill(0x000000);
            shape2.graphics.drawCircle(shape.width, 0, shape.width / 2);
            shape2.graphics.endFill();
            addChild(shape2);

            var shape3:Shape = new Shape();
            shape3.graphics.beginFill(0x000000);
            shape3.graphics.drawCircle(shape.width * 2, 0, shape.width / 2);
            shape3.graphics.endFill();
            addChild(shape3);

            var shape4:Shape = new Shape();
            shape4.graphics.beginFill(0x000000);
            shape4.graphics.drawCircle(shape.width * 3, 0, shape.width / 2);
            shape4.graphics.endFill();
            addChild(shape4);
        }
    }
}
