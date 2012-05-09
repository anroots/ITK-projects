package ee.itcollege.android.praktikum5.fragment;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.os.AsyncTask;
import android.support.v4.app.ListFragment;
import android.util.Log;
import ee.itcollege.android.praktikum5.Tweet;
import ee.itcollege.android.praktikum5.adapter.TweetAdapter;

public class TweetAuthorFragment extends ListFragment {
	private ArrayList<Tweet> tweets = new ArrayList<Tweet>();
	private String userName;
	private String userId;

	public TweetAuthorFragment() {
		
	}
	
	public TweetAuthorFragment(String userName, String userId) {
		this.userName = userName;
		this.userId = userId;
	}
	
	public void showTweetsFromUser() {
		setListShown(false);
		getUserTweets(userId);
	}
	
	public void showTweetsFromUser(String userName, String userId) {
		this.userName = userName;
		setListShown(false);
		getUserTweets(userId);
	}

	public void getUserTweets(String userId) {
		Log.d("TweetAuthorFragment", "getUserTweets(" + userId + ")");
		try {
			String api_url = 
					"http://api.twitter.com/1/statuses/user_timeline.json?trim_user=true&include_entities=false&user_id="
							+ URLEncoder.encode(userId);
			
			URL url = new URL(api_url);
			new GetUrlContents().execute(url);
			Log.d("TweetAuthorFragment","Executing request...");
		} catch (MalformedURLException e) {
			e.printStackTrace();
			Log.d("TweetAuthorFragment","Loading tweets failed.");
		}
	}

	private void requestComplete(String response) {
		Log.d("TweetAuthorFragment", "requestComplete()");
		tweets.clear();
		try {
			JSONArray results = new JSONArray(response);
			for (int i = 0; i < results.length(); i++) {
				JSONObject tweetJson = (JSONObject) results.get(i);
				String text = tweetJson.getString("text");

				Tweet tweet = new Tweet();
				tweet.setAuthorName(userName);
				tweet.setText(text);

				tweets.add(tweet);
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		TweetAdapter adapter = new TweetAdapter(getActivity());
		adapter.setTweets(tweets);
		setListAdapter(adapter);
		setListShown(true);
	}

	private class GetUrlContents extends AsyncTask<URL, Void, String> {

		@Override
		protected String doInBackground(URL... params) {
			StringBuilder sb = new StringBuilder();

			try {

				HttpURLConnection connection = (HttpURLConnection) params[0]
						.openConnection();
				BufferedReader reader = new BufferedReader(
						new InputStreamReader(connection.getInputStream()));

				String line;
				while ((line = reader.readLine()) != null) {
					sb.append(line);
				}
				reader.close();
				connection.disconnect();

			} catch (IOException e) {
				e.printStackTrace();
			}
			return sb.toString();
		}

		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			requestComplete(result);
		}
	}

	public void onAttach(Activity activity) {
		super.onAttach(activity);
	}

}
