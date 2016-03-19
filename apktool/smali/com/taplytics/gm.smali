.class public Lcom/taplytics/gm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/taplytics/gm;

.field private static b:I

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    sput v4, Lcom/taplytics/gm;->b:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taplytics/gm;->c:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taplytics/gm;->d:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taplytics/gm;->e:Ljava/util/HashSet;

    .line 144
    const/16 v0, 0x53

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AnalogClock"

    aput-object v1, v0, v4

    const-string v1, "ImageView"

    aput-object v1, v0, v5

    const-string v1, "KeyboardView"

    aput-object v1, v0, v6

    const-string v1, "MediaRouteButton"

    aput-object v1, v0, v7

    const-string v1, "ProgressBar"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SurfaceView"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TextView"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TextureView"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ViewGroup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ViewStub"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AbsListView"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AbsSeekBar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AbsSpinner"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AbsoluteLayout"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "AdapterView"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "AdapterViewAnimator"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AdapterViewFlipper"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "AppWidgetHostView"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "AutoCompleteTextView"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Button"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CalendarView"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CheckBox"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CheckedTextView"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Chronometer"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CompoundButton"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ContentLoadingProgressBar"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "DatePicker"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "DialerFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "DigitalClock"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "DrawerLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "EditText"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "ExpandableListView"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ExtractEditText"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "FragmentBreadCrumbs"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "FragmentTabHost"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "FrameLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "GLSurfaceView"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gallery"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "GestureOverlayView"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "GridLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "GridView"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "HorizontalScrollView"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "ImageButton"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ImageSwitcher"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "LinearLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ListView"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "MediaController"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "MultiAutoCompleteTextView"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "NumberPicker"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "PagerTabStrip"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "PagerTitleStrip"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "QuickContactBadge"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "RadioButton"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "RadioGroup"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "RatingBar"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "RelativeLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "ScrollView"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "SearchView"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "SeekBar"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "SlidingDrawer"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "SlidingPaneLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Spinner"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "StackView"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "SwipeRefreshLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Switch"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "TabHost"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "TabWidget"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "TableLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "TableRow"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "TextClock"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "TimePicker"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "ToggleButton"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "TwoLineListItem"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "VideoView"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "ViewAnimator"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "ViewFlipper"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "ViewFlipper"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "ViewPager"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "WebView"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "ZoomButton"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "ZoomControls"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "View"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/taplytics/gm;->f:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "setAlpha"

    aput-object v2, v1, v4

    const-string v2, "setHapticFeedbackEnabled"

    aput-object v2, v1, v5

    const-string v2, "setVisibility"

    aput-object v2, v1, v6

    const-string v2, "setPadding"

    aput-object v2, v1, v7

    const-string v2, "setWidth"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "setHeight"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "setBackgroundColor"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "setBackgroundDrawable"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->g:Ljava/util/HashSet;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "getAlpha"

    aput-object v2, v1, v4

    const-string v2, "isHapticFeedbackEnabled"

    aput-object v2, v1, v5

    const-string v2, "getVisibility"

    aput-object v2, v1, v6

    const-string v2, "getWidth"

    aput-object v2, v1, v7

    const-string v2, "getHeight"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "getPaddingLeft"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "getPaddingTop"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "getPaddingRight"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "getPaddingBottom"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "getBackground"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->h:Ljava/util/HashSet;

    .line 203
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "setText"

    aput-object v2, v1, v4

    const-string v2, "setHint"

    aput-object v2, v1, v5

    const-string v2, "setLineSpacing"

    aput-object v2, v1, v6

    const-string v2, "setMaxLines"

    aput-object v2, v1, v7

    const-string v2, "setTextSize"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "setGravity"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->i:Ljava/util/HashSet;

    .line 206
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "getText"

    aput-object v2, v1, v4

    const-string v2, "getHint"

    aput-object v2, v1, v5

    const-string v2, "getLineSpacingExtra"

    aput-object v2, v1, v6

    const-string v2, "getMaxLines"

    aput-object v2, v1, v7

    const-string v2, "getTextSize"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "getGravity"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->j:Ljava/util/HashSet;

    .line 215
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "setImageAlpha"

    aput-object v2, v1, v4

    const-string v2, "setScaleType"

    aput-object v2, v1, v5

    const-string v2, "setImageDrawable"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->k:Ljava/util/HashSet;

    .line 217
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "getImageAlpha"

    aput-object v2, v1, v4

    const-string v2, "getScaleType"

    aput-object v2, v1, v5

    const-string v2, "getDrawable"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->l:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 58
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/taplytics/gm;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/gm;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/taplytics/gm;->e:Ljava/util/HashSet;

    .line 67
    sget-object v0, Lcom/taplytics/gm;->c:Ljava/util/HashMap;

    const-string v1, "View"

    sget-object v2, Lcom/taplytics/gm;->g:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/taplytics/gm;->d:Ljava/util/HashMap;

    const-string v1, "View"

    sget-object v2, Lcom/taplytics/gm;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/taplytics/gm;->i:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/gm;->g:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object v0, Lcom/taplytics/gm;->c:Ljava/util/HashMap;

    const-string v1, "TextView"

    sget-object v2, Lcom/taplytics/gm;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/taplytics/gm;->j:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/gm;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 73
    sget-object v0, Lcom/taplytics/gm;->d:Ljava/util/HashMap;

    const-string v1, "TextView"

    sget-object v2, Lcom/taplytics/gm;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/taplytics/gm;->k:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/gm;->g:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 76
    sget-object v0, Lcom/taplytics/gm;->c:Ljava/util/HashMap;

    const-string v1, "ImageView"

    sget-object v2, Lcom/taplytics/gm;->k:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/taplytics/gm;->l:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/gm;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 78
    sget-object v0, Lcom/taplytics/gm;->d:Ljava/util/HashMap;

    const-string v1, "ImageView"

    sget-object v2, Lcom/taplytics/gm;->l:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v0, "error setting "

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Lcom/taplytics/gm;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/taplytics/gm;->a:Lcom/taplytics/gm;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/taplytics/gm;->a:Lcom/taplytics/gm;

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/taplytics/gm;

    invoke-direct {v0}, Lcom/taplytics/gm;-><init>()V

    sput-object v0, Lcom/taplytics/gm;->a:Lcom/taplytics/gm;

    .line 30
    sget-object v0, Lcom/taplytics/gm;->a:Lcom/taplytics/gm;

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/taplytics/gm;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/taplytics/gm;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/taplytics/gm;->e:Ljava/util/HashSet;

    return-object v0
.end method
