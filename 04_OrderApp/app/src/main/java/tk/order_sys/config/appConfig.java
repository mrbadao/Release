package tk.order_sys.config;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/**
 * Created by HieuNguyen on 4/3/2015.
 */

public class appConfig {
    private static final String _remoteWebUrl = "http://web.order-sys.tk/site/";
    private static final String _remoteApiUrl = "http://mapi.order-sys.tk/";
    private static final String _localApiUrl = "http://mapi.order-sys.tk/";
    private static final String _sharePreferenceTag = "tk.order_sys.orderapp";

    public static String getSharePreferenceTag(){
        return _sharePreferenceTag;
    }

    public static String getRemoteWebUrl() {
        return _remoteWebUrl;
    }

    public static String getApiUrl(boolean flag) {
        return flag ? _remoteApiUrl : _localApiUrl;
    }

    public static boolean isNetworkAvailable(Context context) {
        ConnectivityManager connectivityManager
                = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
