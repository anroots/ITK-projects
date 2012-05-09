package ee.itcollege.android.praktikum5.adapter;

import java.util.List;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import ee.itcollege.android.praktikum5.R;
import ee.itcollege.android.praktikum5.Tweet;

public class TweetAdapter extends BaseAdapter {

	private Context context;
	private List<Tweet> tweets;

	public TweetAdapter(Context context) {
		this.context = context;
	}

	public void setTweets(List<Tweet> tweets) {
		this.tweets = tweets;
		notifyDataSetChanged();
	}

	@Override
	public int getCount() {
		return tweets.size();
	}

	@Override
	public Object getItem(int position) {
		return tweets.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View view = View.inflate(context, R.layout.tweet, null);
		TextView name = (TextView) view.findViewById(R.id.tweeter_name);
		TextView text = (TextView) view.findViewById(R.id.tweet_text);

		Tweet tweet = tweets.get(position);
		name.setText(tweet.getAuthorName());
		text.setText(tweet.getText());

		return view;
	}

}
