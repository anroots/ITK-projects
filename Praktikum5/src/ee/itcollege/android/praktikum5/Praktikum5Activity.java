package ee.itcollege.android.praktikum5;

import ee.itcollege.android.praktikum5.fragment.TweetAuthorFragment;
import ee.itcollege.android.praktikum5.fragment.TweetListFragment.OnTweetClickedListener;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

public class Praktikum5Activity extends FragmentActivity implements OnTweetClickedListener {
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
	}

	@Override
	public void onTweetClicked(Tweet tweet) {
		TweetAuthorFragment fragment = (TweetAuthorFragment) getSupportFragmentManager().findFragmentById(R.id.fragment_tweet_author);
		if (fragment != null && fragment.isVisible()) {
			fragment.showTweetsFromUser(tweet.getAuthorName(), tweet.getAuthorId());
		} else {
			// TODO
		}
		
	}
}