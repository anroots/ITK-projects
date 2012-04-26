package ee.itcollege.android.praktikum3.downloader;

import android.app.IntentService;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class DownloadService extends IntentService {

	public static final String DL_COMPLETE = "ee.itcollege.android.praktikum3.downloader.DOWNLOADED";
	public DownloadService() {
		super("ExampleDownloadService");
	}

	private String url;

	@Override
	public void onHandleIntent(Intent intent) {
		url = intent.getExtras().getString(ConfirmDownloadActivity.EXTRA_URL);
		download();
		stopSelf();
	}



	private void download() {
		Log.d("DownloadService", "Downloading " + url);
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		Log.d("DownloadService", "Download complete " + url);

		// Broadcast DL complete
		Intent intent = new Intent();
		intent.setAction(DL_COMPLETE);
		sendBroadcast(intent);
	}

}
