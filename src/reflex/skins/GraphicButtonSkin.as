package reflex.skins
{
	import flash.display.GradientType;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import reflex.layouts.BasicLayout;
	import reflex.text.Label;
	import reflex.text.TextFieldDisplay;

	public class GraphicButtonSkin extends GraphicSkin
	{
		
		public var labelDisplay:Label;
		
		private var cornerRadius:Number = 2;
		
		public function GraphicButtonSkin()
		{
			super();
			labelDisplay = new Label();
			labelDisplay.style = "left: 10; right: 10; top: 5; bottom: 5;";
			layout = new BasicLayout();
			content = [labelDisplay];
		}
		
		override protected function render(currentState:String):void {
			if(graphics) {
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
				}
			}
		}
		
		private function renderUp():void {
			var r:Number = 90*Math.PI/180;
			var r2:Number = 270*Math.PI/180;
			var m:Matrix = new Matrix(Math.cos(r), Math.sin(r), -Math.sin(r), Math.cos(r));
			var m2:Matrix = new Matrix(Math.cos(r2), Math.sin(r2), -Math.sin(r2), Math.cos(r2));
			
			var ew:Number = cornerRadius*2;
			
			graphics.lineStyle(0, 0, 0, true, "normal");
			
			// shadow
			graphics.beginGradientFill(GradientType.LINEAR, [0x000000, 0x000000], [0.01, 0.07], [0, 255], m);
			graphics.drawRoundRect(-1, -1, unscaledWidth+2, unscaledHeight+2, ew, ew);
			graphics.endFill();
			
			// fill
			graphics.beginGradientFill(GradientType.LINEAR, [0xFFFFFF, 0xD8D8D8], [0.85, 0.85], [0, 255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// lowlight fill
			graphics.beginGradientFill(GradientType.LINEAR, [0x000000, 0x000000, 0x000000], [0.0627, 0.0099, 0], [0,  int(0.48*255),  /*int(0.48001*255)*/255], m2);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// highlight fill
			graphics.beginGradientFill(GradientType.LINEAR, [0xFFFFFF, 0xFFFFFF, 0xFFFFFF], [0.33, 0.33, 0], [0, int(0.48*255),  /*int(0.48001*255)*/255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// highlight stroke
			
			graphics.lineStyle(1, 0, 1, true, "normal");
			graphics.lineGradientStyle(GradientType.LINEAR, [0xFFFFFF, 0xD8D8D8], [1, 1], [0, 255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			
			// border
			//graphics.lineStyle(1);
			graphics.lineGradientStyle(GradientType.LINEAR, [0x000000, 0x000000], [0.5625, 0.75], [0, 255], m);
			graphics.drawRoundRect(0, 0, unscaledWidth, unscaledHeight, ew, ew);
		}
		
		private function renderOver():void {
			var r:Number = 90*(Math.PI/180);
			var r2:Number = 270*(Math.PI/180);
			var m:Matrix = new Matrix(Math.cos(r), Math.sin(r), -Math.sin(r), Math.cos(r));
			var m2:Matrix = new Matrix(Math.cos(r2), Math.sin(r2), -Math.sin(r2), Math.cos(r2));
			
			var ew:Number = cornerRadius*2;
			
			graphics.lineStyle(0, 0, 0, true, "normal");
			
			// shadow
			graphics.beginGradientFill(GradientType.LINEAR, [0x000000, 0x000000], [0.01, 0.07], [0, 255], m);
			graphics.drawRoundRect(-1, -1, unscaledWidth+2, unscaledHeight+2, ew, ew);
			graphics.endFill();
			
			// fill
			graphics.beginGradientFill(GradientType.LINEAR, [0xBBBDBD, 0x9FA0A1], [0.85, 0.85], [0, 255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// lowlight fill
			graphics.beginGradientFill(GradientType.LINEAR, [0x000000, 0x000000, 0x000000], [0.0627, 0.0099, 0], [0, 122, 122], m2);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// highlight fill
			graphics.beginGradientFill(GradientType.LINEAR, [0xFFFFFF, 0xFFFFFF, 0xFFFFFF], [0.22, 0.22, 0], [0, 122, 122], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// highlight stroke
			graphics.lineStyle(1, 0, 1, true, "normal");
			graphics.lineGradientStyle(GradientType.LINEAR, [0xFFFFFF, 0xD8D8D8], [0.22, 0.22], [0, 255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			
			// border
			//graphics.lineStyle(1);
			graphics.lineGradientStyle(GradientType.LINEAR, [0x000000, 0x000000], [0.5625, 0.75], [0, 255], m);
			graphics.drawRoundRect(0, 0, unscaledWidth, unscaledHeight, ew, ew);
		}
		
		private function renderDown():void {
			var r:Number = 90*Math.PI/180;
			var r2:Number = 270*Math.PI/180;
			var m:Matrix = new Matrix(Math.cos(r), Math.sin(r), -Math.sin(r), Math.cos(r));
			var m2:Matrix = new Matrix(Math.cos(r2), Math.sin(r2), -Math.sin(r2), Math.cos(r2));
			
			var ew:Number = cornerRadius*2;
			
			graphics.lineStyle(0, 0, 0, true, "normal");
			
			// shadow
			graphics.beginGradientFill(GradientType.LINEAR, [0xFFFFFF, 0xFFFFFF], [0, 0.5], [0, 255], m);
			graphics.drawRoundRect(-1, -1, unscaledWidth+2, unscaledHeight+2, ew, ew);
			graphics.endFill();
			
			// fill
			graphics.beginGradientFill(GradientType.LINEAR, [0xAAAAAA, 0x929496], [0.85, 0.85], [0, 255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// lowlight fill
			graphics.beginGradientFill(GradientType.LINEAR, [0x000000, 0x000000, 0x000000], [0.0627, 0.0099, 0], [0,  int(0.48*255),  /*int(0.48001*255)*/255], m2);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// highlight fill
			graphics.beginGradientFill(GradientType.LINEAR, [0xFFFFFF, 0xFFFFFF, 0xFFFFFF], [0.12, 0.12, 0], [0, int(0.48*255),  /*int(0.48001*255)*/255], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			graphics.endFill();
			
			// highlight stroke
			graphics.lineStyle(1, 0, 1, true, "normal");
			graphics.lineGradientStyle(GradientType.LINEAR, [0x0000000, 0x000000, 0x000000, 0x000000, 0x000000], [0.25, 0.25, 0.07, 0.07, 0], [0, int(0.001*255), int(0.0011*255), int(0.965*255), int(0.9651*255)], m);
			graphics.drawRoundRect(1, 1, unscaledWidth-2, unscaledHeight-2, ew, ew);
			
			//graphics.lineStyle(1);
			graphics.lineGradientStyle(GradientType.LINEAR, [0x0000000, 0x000000], [0.09, 0], [0, int(0.001*255)], m);
			graphics.drawRoundRect(2, 2, unscaledWidth-4, unscaledHeight-4, ew, ew);
			
			
			// border
			//graphics.lineStyle(1);
			graphics.lineGradientStyle(GradientType.LINEAR, [0x000000, 0x000000], [0.6375, 0.85], [0, 255], m);
			graphics.drawRoundRect(0, 0, unscaledWidth, unscaledHeight, ew, ew);
		}
		
	}
}