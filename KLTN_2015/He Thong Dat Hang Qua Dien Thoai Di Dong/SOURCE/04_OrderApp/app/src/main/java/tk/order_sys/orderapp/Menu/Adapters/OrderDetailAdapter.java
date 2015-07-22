package tk.order_sys.orderapp.Menu.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.TextView;

import org.json.JSONObject;

import java.util.ArrayList;

import tk.order_sys.Interface.HTTPAsyncResponse;
import tk.order_sys.mapi.models.ContentCart;
import tk.order_sys.orderapp.R;

/**
 * Created by HieuNguyen on 4/13/2015.
 */
public class OrderDetailAdapter extends ArrayAdapter  {
    Context context;
    int layoutRes;
    ArrayList<ContentCart> cartItems;

    public OrderDetailAdapter(Context context, int resource, ArrayList<ContentCart> objects) {
        super(context, resource, objects);
        this.context = context;
        this.layoutRes = resource;
        cartItems = objects;
    }

    @Override
    public int getCount() {
        return cartItems.size();
    }

    @Override
    public Object getItem(int position) {
        return cartItems.get(position);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = null;
        LayoutInflater mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        if (convertView == null) {
            view = mInflater.inflate(layoutRes, parent, false);
        } else {
            view = convertView;
        }

        TextView itemTitle = (TextView) view.findViewById(R.id.txtView_productTitle);
        TextView itemPrice = (TextView) view.findViewById(R.id.txtView_productPrice);
        TextView itemTotal = (TextView) view.findViewById(R.id.txtView_product_total);
        TextView itemQuanty = (TextView) view.findViewById(R.id.txtEdit_productQuanty);

        ContentCart cartItem = (ContentCart) getItem(position);

        itemTitle.setText((CharSequence) cartItem.name);
        itemPrice.setText((CharSequence) String.format("%,d", Long.valueOf(cartItem.price)) + " đồng");
        itemTotal.setText((CharSequence) String.format("%,d", Long.valueOf(cartItem.price) * Long.valueOf(cartItem.qty)) + " đồng");
        itemQuanty.setText((CharSequence) cartItem.qty);


        return view;
    }

}