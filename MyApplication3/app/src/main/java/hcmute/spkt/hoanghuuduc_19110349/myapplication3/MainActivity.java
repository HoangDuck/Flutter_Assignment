package hcmute.spkt.hoanghuuduc_19110349.myapplication3;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button buttonClick;
    TextView textViewContent;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        addControl();
        addEvent();
    }

    private void addEvent() {
        buttonClick.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View view) {
                textViewContent.setText("Hello world");
                return false;
            }
        });
        buttonClick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this,"HCMUTE",Toast.LENGTH_LONG).show();
            }
        });
    }

    private void addControl() {
        buttonClick=findViewById(R.id.buttonClick);
        textViewContent=findViewById(R.id.textViewContent);
    }

}