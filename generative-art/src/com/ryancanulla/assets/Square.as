package com.ryancanulla.assets
{
    import flash.display.Shape;

    public class Square extends Asset
    {
        public function Square() {
            super();
        }

        override public function draw():void {
            var shape:Shape = new Shape();
            shape.graphics.beginFill(0x000000);
            shape.graphics.drawRect(0, 0, .1, Math.random() * 500);
            shape.graphics.endFill();
            addChild(shape);
        }
    }
}
