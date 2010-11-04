package com.ryancanulla.assets
{
    import flash.display.Sprite;
    import flash.display.Shape;

    public class Circle extends Asset
    {

        public function Circle() {
            super();
        }

        override public function draw():void {
            var shape:Shape = new Shape();
            shape.graphics.beginFill(0x000000);
            shape.graphics.drawCircle(0, 0, Math.random() * 4);
            shape.graphics.endFill();
            addChild(shape);
        }
    }
}
