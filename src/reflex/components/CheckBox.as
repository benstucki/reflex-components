package reflex.components
{
	import reflex.behaviors.ButtonBehavior;
	import reflex.behaviors.SelectBehavior;
	import reflex.binding.Bind;
	import reflex.skins.GraphicCheckBoxSkin;

	public class CheckBox extends ButtonDefinition
	{
		public function CheckBox(label:String = "")
		{
			super();
			this.label = label;
			skin = new GraphicCheckBoxSkin();
			behaviors.addItem(new ButtonBehavior(this));
			behaviors.addItem(new SelectBehavior(this));
			Bind.addBinding(this, "skin.labelDisplay.text", this, "label", false);
			Bind.addBinding(this, "skin.currentState", this, "currentState", false);
			measured.width = 210;
			measured.height = 45;
		}
	}
}