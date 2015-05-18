package tk.order_sys.orderapp.Dialogs;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.provider.Settings;
import android.text.InputType;
import android.widget.EditText;

/**
 * Created by HieuNguyen on 4/17/2015.
 */
public class OrderAppDialog {

    public OrderAppDialog(){

    }

    public static void showAlertDialog(Context context, String Title, String msg){
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

        alertDialogBuilder.setTitle(Title);
        alertDialogBuilder.setMessage(msg);

        alertDialogBuilder.setNegativeButton("Xác Nhận", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        });

        AlertDialog alertDialog = alertDialogBuilder.create();

        alertDialog.show();
    }

    public static void showNetworkAlertDialog(Context context){
        final Context _context = context;
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

        alertDialogBuilder.setTitle("Cài đặt mạng");
        alertDialogBuilder.setMessage("Hiện không có kết nối internet. Bạn có muốn đến menu cài đặt không ?");

        alertDialogBuilder.setPositiveButton("Cài đặt", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                Intent intent = new Intent(Settings.ACTION_WIFI_SETTINGS);
                _context.startActivity(intent);
            }
        });

        alertDialogBuilder.setNegativeButton("Hủy bỏ", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        });

        AlertDialog alertDialog = alertDialogBuilder.create();

        alertDialog.show();
    }
}
