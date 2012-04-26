package ee.itcollege.android.praktikum3.downloader;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class ConfirmDownloadActivity extends Activity {

	public static final String EXTRA_URL = "ee.itcollege.android.praktikum3.uploader.EXTRA_URL";
	private String url;

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.confirm);

		url = getIntent().getExtras().getString(EXTRA_URL);
		TextView text = (TextView) findViewById(R.id.text);
		String questionText = String.format(getString(R.string.question), url);
		text.setText(questionText);
	}

	public void confirmDownload(View view) {
		Intent intent = new Intent(this, DownloadService.class);
		intent.putExtra(EXTRA_URL, url);
		startService(intent);
		finish();
	}
}