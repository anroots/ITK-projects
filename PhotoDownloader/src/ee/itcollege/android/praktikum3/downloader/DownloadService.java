package ee.itcollege.android.praktikum3.downloader;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;

public class DownloadService extends Service implements Runnable {

	private String url;

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onStart(Intent intent, int startId) {
		super.onStart(intent, startId);
		url = intent.getExtras().getString(ConfirmDownloadActivity.EXTRA_URL);
		new Thread(this).start();
	}

	@Override
	public void run() {
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

	}

}
