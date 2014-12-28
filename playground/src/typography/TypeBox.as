package playground.src.typography 
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import playground.src.Main;
	import playground.src.shapes.SimpleRectangle;
	import playground.src.shapes.SimpleRoundedRectangle;
	
	public class TypeBox extends Sprite
	{
		private var _x:int;
		private var _y:int;
		private var _width:int;
		private var _height:int;
		private var _color:Number;
		private var _textfield:TextField;
		private var _breakbutton:SimpleRoundedRectangle;
		public var content:String
		private var _letters:Sprite;
		
		public function TypeBox(xposition:int,yposition:int,width:int,height:int,fontsize:int=14,color:Number=0x000000) 
		{	
			
			
			
			_x = xposition;
			_y = yposition;
			_width = width;
			_height = height;
			_color = color;
			
			_textfield = new TextField();
			_textfield.border = true;
			_textfield.type = "input";
			_textfield.x = _x;
			_textfield.y = _y;
			_textfield.width = _width;
			_textfield.height = _height;
			_textfield.selectable = true;
			_textfield.textColor = _color;
			
			addChild(_textfield);
			
			_breakbutton = new SimpleRoundedRectangle(_x + _width, _y, 10, 10);
			_breakbutton.addEventListener(MouseEvent.CLICK, onBreakClick);
			addChild(_breakbutton);
		}
		
		private function onBreakClick(e:MouseEvent):void
		{
			breakText();
		}
		
		
		
		public function writeText(content:String):void {
			_textfield.text = content;
		}
		
		public function breakText():void {
			content = new String();
			content = _textfield.text;
			_letters = new Sprite();
			
			for (var i = 0; i <= _textfield.length - 1; i++) {
				
				var glyph:Sprite = new Sprite;
				var char:TextField = new TextField();
				char.text = content.charAt(i);
				char.selectable = false;
				glyph.addChild(char);
				glyph.addEventListener(MouseEvent.MOUSE_DOWN, onDown);
				glyph.addEventListener(MouseEvent.MOUSE_UP, onUp);
				_letters.addChild(glyph);
				glyph.x = (_textfield.width / _textfield.length)*i;
				glyph.y = _textfield.y;
				
			}
			
			addChild(_letters);
			removeChild(_breakbutton);
			removeChild(_textfield);
		}
		
		private function onDown(e:MouseEvent):void 
		{
			e.currentTarget.startDrag();
		}
		
		private function onUp(e:MouseEvent):void 
		{
			e.currentTarget.stopDrag();
		}
		
	}

}