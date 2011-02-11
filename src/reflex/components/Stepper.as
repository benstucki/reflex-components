package reflex.components
{
	
	import reflex.behaviors.SlideBehavior;
	import reflex.behaviors.StepBehavior;
	import reflex.data.Position;

	public class Stepper extends SliderDefinition
	{
		
		public function Stepper()
		{
			super();
			position = new Position();
			//skin = new StepperGraphic();
			behaviors.addItem(new StepBehavior(this));
		}
		
	}
}