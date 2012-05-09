package ee.itcollege.android.praktikum5;

import ee.itcollege.android.praktikum5.fragment.TweetAuthorFragment;
import ee.itcollege.android.praktikum5.fragment.TweetListFragment.OnTweetClickedListener;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;

public class Praktikum5AuthorActivity extends FragmentActivity implements
		OnTweetClickedListener {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.author);

		Intent intent = getIntent();
		String authorName = intent.getStringExtra("authorName");
		String authorId = intent.getStringExtra("authorId");

		FragmentManager fragmentManager = getSupportFragmentManager();
		FragmentTransaction fragmentTransaction = fragmentManager
				.beginTransaction();

		TweetAuthorFragment fragment = new TweetAuthorFragment(authorName,
				authorId) {
			@Override
			public void onStart() {
				Log.d("AuthorActivity", "onStart...");
				super.onStart();

				showTweetsFromUser();
			}
		};

		fragmentTransaction.add(R.id.author_group, fragment);
		fragmentTransaction.commit();
	}

	@Override
	public void onTweetClicked(Tweet tweet) {
		Log.d("AuthorActivity",
				"Clicked on tweet by author " + tweet.getAuthorName());
	}
}