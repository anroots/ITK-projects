package ee.itcollege.android.praktikum3.downloader;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class PhotoDownloaderActivity extends Activity {
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
	}

	public void doUpload(View view) {
		EditText input = (EditText) findViewById(R.id.input);
		Intent intent = new Intent(this, ConfirmDownloadActivity.class);
		intent.putExtra(ConfirmDownloadActivity.EXTRA_URL, input.getText()
				.toString());
		startActivity(intent);
	}
}