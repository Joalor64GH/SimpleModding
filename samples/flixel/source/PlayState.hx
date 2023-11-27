package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
    override public function create()
    {
        Paths.clearStoredMemory();
        Paths.clearUnusedMemory();

        super.create();

        var text:FlxText = new FlxText(0, 0, 0, "Hello World", 64);
        text.screenCenter();
        add(text);
    }

    override public function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.M)
        {
            FlxG.switchState(new ModsState());
        }

        super.update(elapsed);
    }
}