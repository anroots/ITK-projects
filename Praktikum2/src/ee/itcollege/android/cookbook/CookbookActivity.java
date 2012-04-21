package ee.itcollege.android.cookbook;

import java.util.ArrayList;
import java.util.List;

import android.app.AlertDialog;
import android.app.TabActivity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import ee.itcollege.android.cookbook.Recepie;

public class CookbookActivity extends TabActivity implements TabContentFactory,
		OnTabChangeListener {

	private static final String TAG_RECIPE = "Recipe";
	private static final String TAG_SHOPPING_LIST = "ShoppingList";
	// Holds recepie list items
	private ArrayAdapter<String> listAdapter;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);

		TabHost tabHost = getTabHost();
		Resources res = getResources();

		TabSpec recipeTabSpec = tabHost
				.newTabSpec(TAG_RECIPE)
				.setIndicator(getString(R.string.tab_recipe),
						res.getDrawable(R.drawable.ic_launcher))
				.setContent(this);
		TabSpec shoppingListTabSpec = tabHost
				.newTabSpec(TAG_SHOPPING_LIST)
				.setIndicator(getString(R.string.tab_list),
						res.getDrawable(R.drawable.ic_launcher))
				.setContent(this);

		tabHost.addTab(recipeTabSpec);
		tabHost.addTab(shoppingListTabSpec);

		tabHost.setOnTabChangedListener(this);
	}

	public View createTabContent(String tag) {
		if (TAG_RECIPE.equals(tag)) {

			Recepie recepie = new Recepie();

			View recepieView = View.inflate(this, R.layout.recipe, null);

			// Set recepie text
			TextView name = (TextView) recepieView
					.findViewById(R.id.recepieName);
			name.setText(recepie.getName());

			// ... description
			TextView desc = (TextView) recepieView
					.findViewById(R.id.recepieDescription);
			desc.setText(recepie.getDescription());

			// ... img
			ImageView img = (ImageView) recepieView
					.findViewById(R.id.recepieImg);
			Bitmap bitmap = BitmapFactory.decodeResource(getResources(),
					recepie.getImg());
			img.setImageBitmap(bitmap);

			// ... ingredients
			TextView ingredients = (TextView) recepieView
					.findViewById(R.id.recepieIngredients);

			String text = "";
			String[] ingredientsList = recepie.getIngredients();
			if (ingredientsList.length > 0) {
				for (int i = 0; i < ingredientsList.length; i++) {
					text += ingredientsList[i] + "\n";
				}
			} else {
				text = "None! The cake is a lie!";
			}
			ingredients.setText(text);

			return recepieView;
		} else if (TAG_SHOPPING_LIST.equals(tag)) {
			return View.inflate(this, R.layout.list, null);
		}
		return null;
	}

	public void onTabChanged(String tabId) {
		if (TAG_SHOPPING_LIST.equals(tabId)) {
			ListView listView = (ListView) findViewById(R.id.list);

			List<String> items = new ArrayList<String>();
			listAdapter = new ArrayAdapter<String>(this,
					android.R.layout.simple_list_item_1, items);
			listView.setAdapter(listAdapter);

			// Listener for a long press for delete
			listView.setOnItemLongClickListener(new OnItemLongClickListener() {

				public boolean onItemLongClick(AdapterView<?> arg0, View arg1,
						int pos, long arg3) {

					Context context = arg1.getContext();
					TextView item = (TextView) arg1;
					final String itemIndex = (String) item.getText();

					AlertDialog.Builder builder = new AlertDialog.Builder(
							context);
					builder.setMessage("Delete this item?")
							.setCancelable(false)
							.setPositiveButton("Yes",
									new DialogInterface.OnClickListener() {

										public void onClick(
												DialogInterface dialog, int id) {
											listAdapter.remove(itemIndex);
											listAdapter.notifyDataSetChanged();
										}
									})
							.setNegativeButton("No",
									new DialogInterface.OnClickListener() {
										public void onClick(
												DialogInterface dialog, int id) {
											dialog.cancel();
										}
									});
					AlertDialog alert = builder.create();
					alert.show();

					return false;
				}
			});
						
			Button button = (Button) findViewById(R.id.add);
			final EditText input = (EditText) findViewById(R.id.editText);

			button.setOnClickListener(new OnClickListener() {
				public void onClick(View v) {
					listAdapter.add(input.getText().toString());
					input.setText("");
				}
			});
		}
	}

}