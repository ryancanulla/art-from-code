package com.ryancanulla.assets
{
    import flash.display.Sprite;

    public class RandomOffice extends Asset
    {
        public function RandomOffice() {
            super();
        }

        override public function draw():void {

            var shape:Sprite = new Sprite();
            shape.graphics.beginFill(0x000000, 1);
            shape.graphics.moveTo(0, 0);
            shape.graphics.curveTo(30 * Math.random(), 30, 20 * Math.random(), 20);
            shape.graphics.curveTo(30 * Math.random(), 10 * Math.random(), 15 * Math.random(), 5 * Math.random());
            shape.graphics.curveTo(0, 0, 10 * Math.random(), 10);
            shape.graphics.endFill();
            addChild(shape);

        }
    }
}

