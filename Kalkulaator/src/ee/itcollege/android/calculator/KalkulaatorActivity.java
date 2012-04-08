package ee.itcollege.android.calculator;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class KalkulaatorActivity extends Activity {

	protected TextView display;
	boolean isAddingDigits = false;
	Calculator calc = new Calculator();

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		display = (TextView) findViewById(R.id.display);
	}

	public void onClearClicked(View view) {
		display.setText("0");
		calc.reset();
	}
	/**
	 * 
	 * @param view
	 */
	public void onDigitClicked(View view) {
		Button button = (Button) view;

		if (!isAddingDigits) {
			display.setText("");
		}
		
		String txt = button.getText().toString();
		String currentText = display.getText().toString();
		
		// Already has decimal point
		if (currentText.indexOf(".") != -1 && txt.equals(".")) {
			return;
		}

		display.setText(currentText	+ txt);

		isAddingDigits = true;
	}

	/**
	 * 
	 * @param view
	 */
	public void onOperationClicked(View view) {
		isAddingDigits = false;
		Button btn = (Button) view;
		Double result = calc.performOperation(btn.getText().toString());
		display.setText(String.valueOf(result));
	}

	/**
	 * 
	 * @param view
	 */
	public void onEnterClicked(View view) {
		isAddingDigits = false;
		calc.addNumber(Double.parseDouble(display.getText().toString()));
	}
}