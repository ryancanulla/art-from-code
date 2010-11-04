package com.ryancanulla.assets
{
    import flash.display.Shape;

    public class RandomShape extends Asset
    {

        public function RandomShape() {
            super();
        }

        override public function draw():void {

            //graphics.lineStyle(2,0x000000);

            // define the fill
            graphics.beginFill(0x000000); //set the color

            // establish a new Vector object for the commands parameter
            var star_commands:Vector.<int> = new Vector.<int>();

            // use  the Vector array push() method to add moveTo() and lineTo() values
            // 1 moveTo command followed by 3 lineTo commands
            star_commands.push(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

            // establish a new Vector object for the data parameter
            var star_coord:Vector.<Number> = new Vector.<Number>();

            // use the Vector array push() method to add a set of coordinate pairs
            star_coord.push(0, 0, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, Math.random() * 50, 0, 0);
            graphics.drawPath(star_commands, star_coord);
        }
    }
}
