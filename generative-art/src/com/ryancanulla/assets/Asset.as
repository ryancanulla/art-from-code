package com.ryancanulla.assets
{
    import flash.display.Sprite;
    import flash.events.Event;

    import org.papervision3d.view.BasicView;

    public class Asset extends BasicView implements IAsset
    {
        private var _object:Object;

        public function Asset() {
            super(550,310,false);
            camera.fov = 30;
            draw();
        }

        public function draw():void {

        }
        public function get object():Object {
            return new Object;
        }

        public function remove():void {

        }
        public function start():void {
            startRendering();
        }
        public function stop():void {
            stopRendering();
        }
        override protected function onRenderTick(e:Event = null):void {
           // counter++;

            //camera.x = Math.sin(counter * 0.02) * 2000;
            //trace(camera.x);

            //cube.yaw((300 - mouseX) * 0.01);
           // cube.pitch((300 - mouseY) * 0.02);

            //camera.x(300) -
            //sphere.roll((mouseX * mouseY) * 0.01);

            super.onRenderTick(e);
        }

    }
}
