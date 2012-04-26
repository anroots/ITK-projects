package ee.itcollege.android.praktikum3.client;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class PhotoDLClientActivity extends Activity {
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
	}

	public void onDownloadClick(View view) {

		// Get URI
		TextView input = (TextView) findViewById(R.id.editText1);
		String textViewText = input.getText().toString();

		// Create intent, start activity
		Intent intent = new Intent();
		intent.setAction(Intent.ACTION_GET_CONTENT)
				.setType("image/*")
				.putExtra("ee.itcollege.android.praktikum3.uploader.EXTRA_URL",
						textViewText).addCategory(Intent.CATEGORY_DEFAULT);

		startActivity(intent);
	}
}