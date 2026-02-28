<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:background="#F0F4F8">

    <!-- Header -->
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:background="#0078D7"
        android:orientation="vertical"
        android:padding="16dp"
        android:elevation="4dp">

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="🚌 Bus Stop 60119"
            android:textColor="#FFFFFF"
            android:textSize="22sp"
            android:textStyle="bold" />

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="Opp Boon Keng Stn"
            android:textColor="#CCE5FF"
            android:textSize="14sp"
            android:layout_marginTop="2dp" />
    </LinearLayout>

    <!-- Last updated + refresh row -->
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal"
        android:padding="12dp"
        android:gravity="center_vertical">

        <TextView
            android:id="@+id/tvLastUpdated"
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Pull down to refresh"
            android:textColor="#666666"
            android:textSize="13sp" />

        <Button
            android:id="@+id/btnRefresh"
            android:layout_width="wrap_content"
            android:layout_height="36dp"
            android:text="🔄 Refresh"
            android:textSize="13sp"
            android:backgroundTint="#0078D7"
            android:textColor="#FFFFFF"
            android:paddingHorizontal="14dp" />
    </LinearLayout>

    <!-- Swipe-to-refresh wrapping the scroll view -->
    <androidx.swiperefreshlayout.widget.SwipeRefreshLayout
        android:id="@+id/swipeRefresh"
        android:layout_width="match_parent"
        android:layout_height="0dp"
        android:layout_weight="1">

        <ScrollView
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:clipToPadding="false"
            android:paddingBottom="16dp">

            <LinearLayout
                android:id="@+id/busContainer"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:orientation="vertical"
                android:padding="12dp" />

        </ScrollView>
    </androidx.swiperefreshlayout.widget.SwipeRefreshLayout>

    <!-- Status / error bar -->
    <TextView
        android:id="@+id/tvStatus"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:background="#FFEBCD"
        android:text=""
        android:textColor="#B8460A"
        android:textSize="13sp"
        android:padding="10dp"
        android:visibility="gone" />

</LinearLayout>
