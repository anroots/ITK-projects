package ee.itcollege.android.praktikum6;

import java.io.IOException;
import java.util.List;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;
import com.google.android.maps.OverlayItem;

public class Praktikum6Activity extends MapActivity {

	private AddressOverlay addressOverlay;
	private LocationOverlay locationOverlay;
	private MapView mapView;

	private LocationManager locationManager;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		mapView = (MapView) findViewById(R.id.map);
		mapView.setBuiltInZoomControls(true);

		Drawable drawable = this.getResources().getDrawable(
				R.drawable.bugdroid_small);

		addressOverlay = new AddressOverlay(drawable, this);

		Drawable arrow = this.getResources().getDrawable(
				R.drawable.arrow_down_32x32);

		locationOverlay = new LocationOverlay(arrow, this);

		locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);

		Location lastKnown = getLastKnownLocation();
		
		if (lastKnown != null) {
			Log.d("Praktikum6Activity","Updating last known location!");
			updateDeviceLocation(lastKnown);
		}

		// ITK
		mapView.getController().setCenter(new GeoPoint(59395831, 24662546));

		listenLocationUpdates();
	}
	
	private void listenLocationUpdates(){

		LocationListener locationListener = new LocationListener() {
		    public void onLocationChanged(Location location) {
		      updateDeviceLocation(location);
		    }

		    public void onStatusChanged(String provider, int status, Bundle extras) {}

		    public void onProviderEnabled(String provider) {}

		    public void onProviderDisabled(String provider) {}
		  };

		locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, locationListener);
	}

	private Location getLastKnownLocation(){
		
		Location lastKnownLocation = locationManager
				.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);

		if (lastKnownLocation != null) {
			Log.d("Praktikum6Activity","Got LastKnownLocation via NETWORK_PROVIDER.");
			return lastKnownLocation;
		}
		
		Log.d("Praktikum6Activity", "No idea on the last known location from NetworkProvider...");
		lastKnownLocation = locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);
		
		if (lastKnownLocation != null) {
			Log.d("Praktikum6Activity","Got LastKnownLocation via GPS_PROVIDER.");
			return lastKnownLocation;
		}
		
		Log.d("Praktikum6Activity","No idea on the last know location from GPSProvider...");
		return null;
	}
	
	/**
	 * 
	 * @param location
	 */
	private void updateDeviceLocation(Location location) {		
		
		Log.d("Praktikum6Activity","Updating location");
		
		GeoPoint point = new GeoPoint(
				(int) (location.getLatitude() * 1e6),
				(int) (location.getLongitude() * 1e6));

		String snippetText = String.valueOf(location.getLatitude())
				+ ", " + String.valueOf(location.getLongitude());

		OverlayItem overlayitem = new OverlayItem(point, "Your location",
				snippetText);
		locationOverlay.addOverlay(overlayitem);

		List<Overlay> mapOverlays = mapView.getOverlays();
		
		if (!mapOverlays.contains(locationOverlay)) {
			mapOverlays.add(locationOverlay);
		}
		mapView.invalidate();
		
		Log.d("Praktikum6Activity","Location updated");
	}
	
	

	@Override
	protected boolean isRouteDisplayed() {
		return false;
	}

	public void onGoClicked(View view) {
		EditText input = (EditText) findViewById(R.id.address);
		AddressLookupTask addressLookupTask = new AddressLookupTask();
		addressLookupTask.execute(input.getText().toString());
	}

	private void onAddressLookupComplete(List<Address> addresses) {
		if (addresses == null) {
			Toast.makeText(this, R.string.address_lookup_failed,
					Toast.LENGTH_LONG).show();
			return;
		}
		for (Address address : addresses) {
			Log.d("Praktikum6Activity", "Adddress: " + address.toString());
			GeoPoint point = new GeoPoint((int) (address.getLatitude() * 1e6),
					(int) (address.getLongitude() * 1e6));

			String snippetText = String.valueOf(address.getLatitude()) + ", "
					+ String.valueOf(address.getLongitude());

			OverlayItem overlayitem = new OverlayItem(point,
					address.getThoroughfare(), snippetText);
			addressOverlay.addOverlay(overlayitem);
		}
		List<Overlay> mapOverlays = mapView.getOverlays();
		if (!mapOverlays.contains(addressOverlay)) {
			mapOverlays.add(addressOverlay);
		}
		mapView.invalidate();
	}

	private class AddressLookupTask extends
			AsyncTask<String, Void, List<Address>> {

		@Override
		protected List<Address> doInBackground(String... params) {
			Geocoder geocoder = new Geocoder(Praktikum6Activity.this);
			try {
				List<Address> addresses = geocoder.getFromLocationName(
						params[0], 10);
				return addresses;
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}

		@Override
		protected void onPostExecute(List<Address> result) {
			super.onPostExecute(result);
			onAddressLookupComplete(result);
		}

	}
}