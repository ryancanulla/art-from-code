package com.ryancanulla.assets
{
    import org.papervision3d.materials.ColorMaterial;
    import org.papervision3d.materials.utils.MaterialsList;
    import org.papervision3d.objects.primitives.Cube;
    import org.papervision3d.view.BasicView;

    public class Cube3D extends Asset
    {
        private var _cube:Cube;

        public function Cube3D()
        {
            super();
        }

        override public function draw():void {

            var materials:MaterialsList = new MaterialsList();
            materials.addMaterial(new ColorMaterial(0x990000, 1), "all");
            materials.addMaterial(new ColorMaterial(0x660000, 1), "bottom");
            materials.addMaterial(new ColorMaterial(0x330000, 1), "top");
            materials.addMaterial(new ColorMaterial(0xCC0000, 1), "right");
            materials.addMaterial(new ColorMaterial(0x550000, 1), "left");

            _cube = new Cube(materials, 10, 10, 10);
            _cube.pitch(Math.random()*100);
            _cube.yaw(Math.random()*500);
            scene.addChild(_cube);

            start();

        }

        override public function get object():Object {
            return _cube;
        }
    }
}
