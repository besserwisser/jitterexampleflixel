package;

import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{

	public var testSprite: FlxSprite;

	override public function create():Void
	{
		super.create();
		this.bgColor = FlxColor.WHITE;
		this.camera.antialiasing = true;
		this.testSprite = new FlxSprite(null, null, "assets/images/pig.png");
		this.testSprite.x += this.testSprite.width / 2;
		this.testSprite.y += this.testSprite.height / 2;
		add(this.testSprite);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		this.testSprite.angle += 0.1;
	}
}
