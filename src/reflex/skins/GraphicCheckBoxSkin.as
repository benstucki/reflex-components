package reflex.skins
{
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import reflex.layouts.BasicLayout;
	import reflex.text.Label;
	import reflex.text.TextFieldDisplay;

	public class GraphicCheckBoxSkin extends GraphicSkin
	{
		
		public var labelDisplay:Label;
		
		public function GraphicCheckBoxSkin()
		{
			super();
			labelDisplay = new Label();
			labelDisplay.style = "left: 10; right: 10; top: 5; bottom: 5;";
			layout = new BasicLayout();
			content = [labelDisplay];
		}
		
		override protected function render(currentState:String):void {
			graphics.clear();
			switch(currentState) {
				case "up":
					renderUp();
					break;
				case "over":
					renderOver();
					break;
				case "down":
					renderDown();
					break;
				case "upAndSelected":
					renderUp();
					break;
				case "overAndSelected":
					renderOver();
					break;
				case "downAndSelected":
					renderDown();
					break;
			}
		}
		
		private function renderUp():void {
			graphics.beginFill(0xFFFFFF, 1);
			graphics.drawRect(0, 0, width, height);
			graphics.endFill();
		}
		
		private function renderOver():void {
			graphics.beginFill(0xFF0000, 1);
			graphics.drawRect(0, 0, width, height);
			graphics.endFill();
		}
		
		private function renderDown():void {
			graphics.beginFill(0x00FF00, 1);
			graphics.drawRect(0, 0, width, height);
			graphics.endFill();
		}
		
	}
}