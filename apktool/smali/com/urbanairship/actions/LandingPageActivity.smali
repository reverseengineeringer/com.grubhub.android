.class public Lcom/urbanairship/actions/LandingPageActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final LANDING_PAGE_BACKGROUND_COLOR:Ljava/lang/String; = "com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR"

.field private static final LANDING_PAGE_RETRY_DELAY_MS:J = 0x4e20L

.field public static final LANDING_PAGE_VIEW_KEY:Ljava/lang/String; = "com.urbanairship.action.LANDING_PAGE_VIEW"


# instance fields
.field private error:Ljava/lang/Integer;

.field private handler:Landroid/os/Handler;

.field private uri:Landroid/net/Uri;

.field private webView:Lcom/urbanairship/widget/UAWebView;

.field private webViewBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/LandingPageActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/urbanairship/actions/LandingPageActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/urbanairship/actions/LandingPageActivity;)Lcom/urbanairship/widget/UAWebView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/actions/LandingPageActivity;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/actions/LandingPageActivity;->crossFade(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private createDefaultLandingPageView()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 310
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v1, Lcom/urbanairship/widget/UAWebView;

    invoke-direct {v1, p0}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;)V

    .line 312
    const v2, 0x102000c

    invoke-virtual {v1, v2}, Lcom/urbanairship/widget/UAWebView;->setId(I)V

    .line 314
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 323
    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 325
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-object v0
.end method

.method private crossFade(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xc8

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    .line 268
    if-eqz p1, :cond_0

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    if-eqz p2, :cond_1

    .line 273
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 282
    :cond_3
    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/actions/LandingPageActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/urbanairship/actions/LandingPageActivity$2;-><init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private restartActivity(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 405
    const-string v0, "Relaunching activity"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 414
    if-eqz p2, :cond_0

    .line 415
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 418
    :cond_0
    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 419
    return-void
.end method


# virtual methods
.method protected loadLandingPage()V
    .locals 2

    .prologue
    .line 338
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage(J)V

    .line 339
    return-void
.end method

.method protected loadLandingPage(J)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/UAWebView;->stopLoading()V

    .line 355
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/actions/LandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/LandingPageActivity$3;-><init>(Lcom/urbanairship/actions/LandingPageActivity;)V

    iget-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading landing page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 368
    iget v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    iget v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebView;->setBackgroundColor(I)V

    .line 373
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 374
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/widget/UAWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 377
    :cond_3
    iput-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    .line 380
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_4

    .line 387
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebView;->loadRichPushMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 388
    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessage;->markRead()V

    goto :goto_0

    .line 390
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto/16 :goto_0

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCloseButtonClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 302
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 105
    const-string v0, "Creating landing page activity."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    const-string v0, "LandingPageActivity - Started activity with null intent"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 192
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    :goto_1
    const-string v2, "com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    .line 119
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->handler:Landroid/os/Handler;

    .line 120
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    .line 122
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 123
    const-string v0, "LandingPageActivity - No landing page uri to load."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 128
    :cond_3
    const-string v1, "com.urbanairship.action.LANDING_PAGE_VIEW"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    if-eq v0, v3, :cond_5

    .line 130
    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->setContentView(I)V

    .line 135
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 143
    :cond_4
    const v0, 0x102000c

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/widget/UAWebView;

    iput-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    .line 144
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 146
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    if-eqz v1, :cond_7

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_6

    .line 148
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/urbanairship/widget/UAWebView;->setAlpha(F)V

    .line 153
    :goto_3
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    new-instance v2, Lcom/urbanairship/actions/LandingPageActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/actions/LandingPageActivity$1;-><init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/widget/UAWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    .line 132
    :cond_5
    invoke-direct {p0}, Lcom/urbanairship/actions/LandingPageActivity;->createDefaultLandingPageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {v1, v4}, Lcom/urbanairship/widget/UAWebView;->setVisibility(I)V

    goto :goto_3

    .line 188
    :cond_7
    const-string v0, "LandingPageActivity - A UAWebView with id android.R.id.primary is not defined in the custom layout.  Unable to show the landing page."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 196
    const-string v0, "LandingPageActivity - New intent received for landing page"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->restartActivity(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 198
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/UAWebView;->onPause()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/UAWebView;->stopLoading()V

    .line 256
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/UAWebView;->onResume()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage()V

    .line 242
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 221
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStarted(Landroid/app/Activity;)V

    .line 222
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 229
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStopped(Landroid/app/Activity;)V

    .line 230
    return-void
.end method
