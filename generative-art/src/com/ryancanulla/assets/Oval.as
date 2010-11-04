package com.ryancanulla.assets
{
    import flash.display.Shape;

    public class Oval extends Asset
    {
        public function Oval() {
            super();
        }

        override public function draw():void {
            var shape:Shape = new Shape();
            shape.graphics.beginFill(0x000000);
            shape.graphics.drawEllipse(0, 0, Math.random() * 5, Math.random() * 10);
            shape.graphics.endFill();
            addChild(shape);
        }
    }
}
