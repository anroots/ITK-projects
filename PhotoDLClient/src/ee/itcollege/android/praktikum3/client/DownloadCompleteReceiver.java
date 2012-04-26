package ee.itcollege.android.praktikum3.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

public class DownloadCompleteReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		Log.d("BcastReceive", "Received!");

		Toast.makeText(context, "Download completed!", Toast.LENGTH_LONG)
				.show();
	}

}
