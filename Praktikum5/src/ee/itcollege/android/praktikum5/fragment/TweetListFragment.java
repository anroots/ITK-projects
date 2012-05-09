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
import android.content.Context;
import android.os.AsyncTask;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import ee.itcollege.android.praktikum5.Tweet;
import ee.itcollege.android.praktikum5.adapter.TweetAdapter;

public class TweetListFragment extends ListFragment {
	private ArrayList<Tweet> tweets = new ArrayList<Tweet>();
	
	private OnTweetClickedListener listener;

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		listener = (OnTweetClickedListener) activity;
		getSearchResults();
	}

	private void getSearchResults() {
		try {
			URL url = new URL(
					"http://search.twitter.com/search.json?rpp=10&include_entities=false&q="
							+ URLEncoder.encode("eesti"));
			new GetUrlContents().execute(url);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}

	private void requestComplete(String response) {
		Log.d("TweetAuthorFragment", "requestComplete()");
		
		tweets.clear();
		try {
			JSONObject json = new JSONObject(response);
			JSONArray results = json.getJSONArray("results");
			for (int i = 0; i < results.length(); i++) {
				JSONObject tweetJson = (JSONObject) results.get(i);
				String text = tweetJson.getString("text");
				String userName = tweetJson.getString("from_user_name");
				String userId = tweetJson.getString("from_user_id");
				
				Tweet tweet = new Tweet();
				tweet.setAuthorName(userName);
				tweet.setAuthorId(userId);
				tweet.setText(text);
				
				tweets.add(tweet);
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		TweetAdapter adapter = new TweetAdapter(getActivity());
		adapter.setTweets(tweets); 
		setListAdapter(adapter);
	}
	
	public interface OnTweetClickedListener {
		public void onTweetClicked(Tweet tweet);
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


	@Override
	public void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);
		listener.onTweetClicked(tweets.get(position));
	}
	
	

}
