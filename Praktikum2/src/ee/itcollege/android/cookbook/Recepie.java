package ee.itcollege.android.cookbook;

public class Recepie {
	
	public String getName() {
		return "Apple Oatmeal!";
	}
	
	
	public String getDescription() {
		return new StringBuilder()
				.append("On a cutting board, use a sharp knife to cut the apple or pear into 4 pieces. Cut out the core and throw it away. Chop each piece.\r\n\r\n")
				.append("In a saucepan, put the chopped apple or pear, apple juice or cider, oats, raisins or dates, and cinnamon. Stir with a wooden spoon to mix. Put the pan on the burner. Turn the burner to medium-high heat. Cook just till bubbly. Turn the burner to low. Simmer, uncovered, for 5 minutes, stirring now and then. Turn off the burner. Remove the saucepan from the burner.\r\n\r\n")
				.append("With a large spoon, put the oatmeal into 4 cereal bowls. Serve immediately with milk and brown sugar, if you like.\r\n\r\n")
				.append("This can also be made in the microwave. Just reduce the liquid to 2 and 1/2 cups. Microwave the stirred ingredients on high for 3 minutes in a covered microwaveable 2-quart casserole dish. Stir and microwave 3 minutes more.\r\n\r\n")
				.toString();
	}
	
	public int getImg() {
		return R.drawable.apple;
	}
	
	public String[] getIngredients() {
		return new String[]{
				"1 medium apple or pear",
				"3 cups apple juice or cider",
				"1 and 1/3 cups regular rolled oats",
				"1/4 cup raisins or chopped pitted dates",
				"1/4 teaspoon ground cinnamon",
				"milk (optional)",
				"brown sugar (optional)"
		};
	}
}
