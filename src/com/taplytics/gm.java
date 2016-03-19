package com.taplytics;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public class gm
{
  private static gm a;
  private static int b = 0;
  private static HashMap<String, HashSet<String>> c = new HashMap();
  private static HashMap<String, HashSet<String>> d = new HashMap();
  private static HashSet<String> e = new HashSet();
  private static final List<String> f = Arrays.asList(new String[] { "AnalogClock", "ImageView", "KeyboardView", "MediaRouteButton", "ProgressBar", "Space", "SurfaceView", "TextView", "TextureView", "ViewGroup", "ViewStub", "AbsListView", "AbsSeekBar", "AbsSpinner", "AbsoluteLayout", "AdapterView", "AdapterViewAnimator", "AdapterViewFlipper", "AppWidgetHostView", "AutoCompleteTextView", "Button", "CalendarView", "CheckBox", "CheckedTextView", "Chronometer", "CompoundButton", "ContentLoadingProgressBar", "DatePicker", "DialerFilter", "DigitalClock", "DrawerLayout", "EditText", "ExpandableListView", "ExtractEditText", "FragmentBreadCrumbs", "FragmentTabHost", "FrameLayout", "GLSurfaceView", "Gallery", "GestureOverlayView", "GridLayout", "GridView", "HorizontalScrollView", "ImageButton", "ImageSwitcher", "LinearLayout", "ListView", "MediaController", "MultiAutoCompleteTextView", "NumberPicker", "PagerTabStrip", "PagerTitleStrip", "QuickContactBadge", "RadioButton", "RadioGroup", "RatingBar", "RelativeLayout", "ScrollView", "SearchView", "SeekBar", "SlidingDrawer", "SlidingPaneLayout", "Spinner", "StackView", "SwipeRefreshLayout", "Switch", "TabHost", "TabWidget", "TableLayout", "TableRow", "TextClock", "TimePicker", "ToggleButton", "TwoLineListItem", "VideoView", "ViewAnimator", "ViewFlipper", "ViewFlipper", "ViewPager", "WebView", "ZoomButton", "ZoomControls", "View" });
  private static final HashSet<String> g = new HashSet(Arrays.asList(new String[] { "setAlpha", "setHapticFeedbackEnabled", "setVisibility", "setPadding", "setWidth", "setHeight", "setBackgroundColor", "setBackgroundDrawable" }));
  private static final HashSet<String> h = new HashSet(Arrays.asList(new String[] { "getAlpha", "isHapticFeedbackEnabled", "getVisibility", "getWidth", "getHeight", "getPaddingLeft", "getPaddingTop", "getPaddingRight", "getPaddingBottom", "getBackground" }));
  private static final HashSet<String> i = new HashSet(Arrays.asList(new String[] { "setText", "setHint", "setLineSpacing", "setMaxLines", "setTextSize", "setGravity" }));
  private static final HashSet<String> j = new HashSet(Arrays.asList(new String[] { "getText", "getHint", "getLineSpacingExtra", "getMaxLines", "getTextSize", "getGravity" }));
  private static final HashSet<String> k = new HashSet(Arrays.asList(new String[] { "setImageAlpha", "setScaleType", "setImageDrawable" }));
  private static final HashSet<String> l = new HashSet(Arrays.asList(new String[] { "getImageAlpha", "getScaleType", "getDrawable" }));
  
  private gm()
  {
    try
    {
      String str = fy.e().p().getPackageName();
      b = epgetPackageManagergetApplicationInfo128icon;
      e = new HashSet(f);
      c.put("View", g);
      d.put("View", h);
      i.addAll(g);
      c.put("TextView", i);
      j.addAll(h);
      d.put("TextView", j);
      k.addAll(g);
      c.put("ImageView", k);
      l.addAll(h);
      d.put("ImageView", l);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ck.c("error setting ");
      }
    }
  }
  
  public static gm a()
  {
    if (a != null) {
      return a;
    }
    a = new gm();
    return a;
  }
  
  public HashMap<String, HashSet<String>> b()
  {
    return c;
  }
  
  public HashMap<String, HashSet<String>> c()
  {
    return d;
  }
  
  public HashSet<String> d()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */