package com.tyroo.contentdemo;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import com.tyroo.contentsdk.sdk.TyrooVidAiSdk;

public class MainActivity extends AppCompatActivity implements TyrooVidAiSdk.TyrooAdListener {

    private static final String TAG = "MainActivity";
    Button btnOfferWallListAds;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnOfferWallListAds = (Button) findViewById(R.id.btn_offerwall_ads);

        btnOfferWallListAds.setOnClickListener(goDiscoverClick);

        preLoadRequest();

    }

    private View.OnClickListener goDiscoverClick = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            startActivity(new Intent(MainActivity.this, OfferwallVideoListActivity.class));
        }
    };


    @Override
    protected void onDestroy() {
        //InitiateTyrooSdk.destroyInstance();
       // RefWatcher refWatcher = DemoApplication.getRefWatcher(this);
       // refWatcher.watch(this);

        super.onDestroy();
    }

    @Override
    public void onBackPressed() {
        //adView.removeAllViews();
        super.onBackPressed();
    }

    @Override
    public void onAdLoaded(String placementId) {
        Log.d(TAG, "onAdLoaded: "+placementId);
    }

    @Override
    public void onAdDisplayed() {
        Log.d(TAG, "onAdDisplayed");
    }

    @Override
    public void onAdOpened() {
        Log.d(TAG, "onAdOpened");
    }

    @Override
    public void onAdClosed() {
        Log.d(TAG, "onAdClosed");
    }

    @Override
    public void onAdCompleted() {
        Log.d(TAG, "onAdCompleted");
    }

    @Override
    public void onAdClicked() {
        Log.d(TAG, "onAdClicked");
    }

    @Override
    public void onAdLeftApplication() {
        Log.d(TAG, "onAdLeftApplication");
    }

    @Override
    public void onFailure(String errorMsg) {
        Log.e(TAG, "onFailure: " + errorMsg);
    }

    private void preLoadRequest() {
        TyrooVidAiSdk.preLoadAds(getApplicationContext(), "1701", "009", true, new TyrooVidAiSdk.AdPreloadListener() {
            @Override
            public void onPreloadSuccess(String placementId) {
                Log.d(TAG, "onPreloadSuccess: "+placementId);
            }

            @Override
            public void onPreloadError(String errorMsg) {
                Log.e(TAG,"onPreloadError: "+errorMsg);
            }
        });
    }
}
