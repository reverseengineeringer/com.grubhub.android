.class public Lcom/taplytics/gq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static t:Lcom/taplytics/gq;


# instance fields
.field a:Z

.field b:J

.field c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Class;

.field private l:Ljava/util/HashMap;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/taplytics/b;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lorg/json/JSONObject;

.field private r:Lcom/taplytics/jo;

.field private s:Lcom/taplytics/jw;

.field private u:Landroid/view/ViewGroup;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/taplytics/gq;->f:Z

    .line 102
    iput-boolean v1, p0, Lcom/taplytics/gq;->h:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/gq;->i:Z

    .line 112
    iput-boolean v1, p0, Lcom/taplytics/gq;->j:Z

    .line 118
    iput-object v2, p0, Lcom/taplytics/gq;->k:Ljava/lang/Class;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/gq;->l:Ljava/util/HashMap;

    .line 137
    sget-object v0, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    iput-object v0, p0, Lcom/taplytics/gq;->n:Lcom/taplytics/b;

    .line 219
    iput-object v2, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/gq;->v:Ljava/util/Map;

    .line 229
    iput-boolean v1, p0, Lcom/taplytics/gq;->a:Z

    .line 234
    iput-wide v4, p0, Lcom/taplytics/gq;->b:J

    .line 236
    iput-wide v4, p0, Lcom/taplytics/gq;->c:J

    .line 243
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/taplytics/gq;->w:I

    .line 80
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/taplytics/gq;->y:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    :try_start_1
    const-string v0, "com.google.android.youtube.player.YouTubePlayerView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/gq;->k:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "Name not found"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private A()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 583
    new-instance v0, Lcom/taplytics/gt;

    invoke-direct {v0, p0}, Lcom/taplytics/gt;-><init>(Lcom/taplytics/gq;)V

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/gq;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/gq;->m:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/gq;Lcom/taplytics/jo;)Lcom/taplytics/jo;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/gq;->r:Lcom/taplytics/jo;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/gq;Lcom/taplytics/jw;)Lcom/taplytics/jw;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/gq;->s:Lcom/taplytics/jw;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/gq;Lcom/taplytics/sdk/TaplyticsDelayLoadListener;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/gq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/gq;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(FFLandroid/view/ViewGroup;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 672
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 674
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/taplytics/jk;->a(FFLandroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 675
    invoke-static {v0}, Lcom/taplytics/jk;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    const-string v2, "Err: vw jsn. "

    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 680
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/taplytics/gq;FFLandroid/view/ViewGroup;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/taplytics/gq;->a(FFLandroid/view/ViewGroup;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taplytics/gq;->x()V

    return-void
.end method

.method static synthetic a(Lcom/taplytics/gq;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/taplytics/gq;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/taplytics/gq;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    return-object v0
.end method

.method static synthetic b(Lcom/taplytics/gq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/gq;->p:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .prologue
    .line 856
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/taplytics/gq;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/taplytics/kb;->cat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 858
    new-instance v1, Lcom/taplytics/ha;

    invoke-direct {v1, p0, v0, p2}, Lcom/taplytics/ha;-><init>(Lcom/taplytics/gq;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 881
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 882
    new-instance v1, Lcom/taplytics/hb;

    invoke-direct {v1, p0}, Lcom/taplytics/hb;-><init>(Lcom/taplytics/gq;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    const-string v1, "error making delay screen"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private b(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V
    .locals 5

    .prologue
    .line 806
    :try_start_0
    iget-boolean v0, p0, Lcom/taplytics/gq;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/taplytics/kb;->cat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iput-object p1, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    .line 809
    iget-object v0, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsDelayLoadListener;->startDelay()V

    .line 810
    invoke-static {}, Lcom/taplytics/iz;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taplytics/gz;

    invoke-direct {v1, p0}, Lcom/taplytics/gz;-><init>(Lcom/taplytics/gq;)V

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    const-string v1, "Problem delaying loading"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/taplytics/gq;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/taplytics/gq;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/taplytics/gq;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/taplytics/gq;->h:Z

    return p1
.end method

.method static synthetic d(Lcom/taplytics/gq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/taplytics/gq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/taplytics/gq;)Lcom/taplytics/b;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->n:Lcom/taplytics/b;

    return-object v0
.end method

.method static synthetic g(Lcom/taplytics/gq;)Lcom/taplytics/jo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->r:Lcom/taplytics/jo;

    return-object v0
.end method

.method static synthetic h(Lcom/taplytics/gq;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taplytics/gq;->A()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/taplytics/gq;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/taplytics/gq;->t:Lcom/taplytics/gq;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/taplytics/gq;->t:Lcom/taplytics/gq;

    .line 206
    :goto_0
    return-object v0

    .line 204
    :cond_0
    new-instance v0, Lcom/taplytics/gq;

    invoke-direct {v0}, Lcom/taplytics/gq;-><init>()V

    sput-object v0, Lcom/taplytics/gq;->t:Lcom/taplytics/gq;

    .line 206
    sget-object v0, Lcom/taplytics/gq;->t:Lcom/taplytics/gq;

    goto :goto_0
.end method

.method static synthetic i(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taplytics/gq;->z()V

    return-void
.end method

.method static synthetic j(Lcom/taplytics/gq;)Lcom/taplytics/jw;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->s:Lcom/taplytics/jw;

    return-object v0
.end method

.method static synthetic k(Lcom/taplytics/gq;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/taplytics/gq;->d:Z

    return v0
.end method

.method static synthetic l(Lcom/taplytics/gq;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/taplytics/gq;->e:Z

    return v0
.end method

.method static synthetic m(Lcom/taplytics/gq;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/gq;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/taplytics/gq;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/taplytics/gq;->w:I

    return v0
.end method

.method private x()V
    .locals 4

    .prologue
    .line 313
    :try_start_0
    iget-wide v0, p0, Lcom/taplytics/gq;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 315
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 317
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taplytics/gq;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string v1, "Error setting statusbar offset"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private y()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taplytics/gq;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/taplytics/gq;->h:Z

    if-nez v0, :cond_1

    .line 373
    iput-boolean v4, p0, Lcom/taplytics/gq;->h:Z

    .line 374
    invoke-static {}, Lcom/taplytics/iz;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taplytics/hf;

    invoke-direct {v1, p0}, Lcom/taplytics/hf;-><init>(Lcom/taplytics/gq;)V

    iget-wide v2, p0, Lcom/taplytics/gq;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/taplytics/gq;->h:Z

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsDelayLoadListener;->delayComplete()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/gq;->x:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    .line 391
    iput-boolean v4, p0, Lcom/taplytics/gq;->h:Z

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/taplytics/gq;->r()V

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taplytics/hg;

    invoke-direct {v1, p0}, Lcom/taplytics/hg;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 831
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taplytics/gq;->c:J

    .line 832
    invoke-direct {p0, p1, p2, p3}, Lcom/taplytics/gq;->b(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    .line 833
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V
    .locals 4

    .prologue
    .line 843
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taplytics/gq;->c:J

    .line 844
    invoke-direct {p0, p1, p2, p3}, Lcom/taplytics/gq;->b(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    .line 845
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object p1, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    .line 262
    iput-boolean v0, p0, Lcom/taplytics/gq;->j:Z

    .line 263
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p1, v0, v1}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 264
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TLRefreshed"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/taplytics/gq;->a:Z

    .line 267
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/taplytics/gq;->j()V

    .line 282
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    new-instance v1, Lcom/taplytics/he;

    invoke-direct {v1, p0}, Lcom/taplytics/he;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    iget-boolean v0, p0, Lcom/taplytics/gq;->g:Z

    if-eqz v0, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/taplytics/gq;->k()V

    .line 302
    :goto_2
    iget-boolean v0, p0, Lcom/taplytics/gq;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/taplytics/gq;->f:Z

    if-nez v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/taplytics/gq;->m()V

    .line 306
    :cond_2
    return-void

    .line 271
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->d()Lcom/taplytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/c;->e()Lcom/taplytics/g;

    move-result-object v0

    sget-object v1, Lcom/taplytics/g;->alligator:Lcom/taplytics/g;

    if-eq v0, v1, :cond_1

    .line 272
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->d()Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/gs;

    invoke-direct {v1, p0}, Lcom/taplytics/gs;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "setcurrentviewgroup err"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 299
    :cond_4
    invoke-virtual {p0}, Lcom/taplytics/gq;->p()V

    goto :goto_2
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V
    .locals 2

    .prologue
    .line 793
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taplytics/gq;->c:J

    .line 794
    invoke-direct {p0, p1, p2}, Lcom/taplytics/gq;->b(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V

    .line 795
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;II)V
    .locals 4

    .prologue
    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taplytics/gq;->c:J

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/taplytics/gq;->b(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V

    .line 801
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/taplytics/gq;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/gq;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/taplytics/gq;->o:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/taplytics/gq;->p:Ljava/lang/String;

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/gq;->a:Z

    .line 337
    sget-object v0, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    iput-object v0, p0, Lcom/taplytics/gq;->n:Lcom/taplytics/b;

    .line 338
    invoke-direct {p0}, Lcom/taplytics/gq;->z()V

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/taplytics/gq;->k()V

    .line 342
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/taplytics/gq;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/taplytics/gq;->g:Z

    .line 150
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/taplytics/gq;->g:Z

    return v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taplytics/gq;->k:Ljava/lang/Class;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/taplytics/gq;->i:Z

    .line 958
    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/taplytics/gq;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 1026
    iput-boolean p1, p0, Lcom/taplytics/gq;->j:Z

    .line 1027
    return-void
.end method

.method public d()Lcom/taplytics/b;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/taplytics/gq;->n:Lcom/taplytics/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/taplytics/gq;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/taplytics/gq;->p:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/taplytics/gq;->q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/gq;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taplytics/kb;->beaver:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/taplytics/gq;->z()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/taplytics/gq;->u:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V

    .line 354
    invoke-direct {p0}, Lcom/taplytics/gq;->y()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "Err: setprp"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 463
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taplytics/gq;->i:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taplytics/hh;

    invoke-direct {v1, p0}, Lcom/taplytics/hh;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 496
    iget-object v0, p0, Lcom/taplytics/gq;->n:Lcom/taplytics/b;

    sget-object v1, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    invoke-virtual {v0, v1}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/gq;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const-string v1, "app bd"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/taplytics/b;->ape:Lcom/taplytics/b;

    iput-object v0, p0, Lcom/taplytics/gq;->n:Lcom/taplytics/b;

    .line 507
    invoke-virtual {p0}, Lcom/taplytics/gq;->k()V

    .line 508
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taplytics/hi;

    invoke-direct {v1, p0}, Lcom/taplytics/hi;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 553
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 560
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taplytics/hk;

    invoke-direct {v1, p0}, Lcom/taplytics/hk;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 572
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/gq;->s:Lcom/taplytics/jw;

    .line 576
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 688
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taplytics/gy;

    invoke-direct {v1, p0}, Lcom/taplytics/gy;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    const-string v1, "rem bd"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public q()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/taplytics/gq;->v:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 775
    iget-object v1, p0, Lcom/taplytics/gq;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 776
    return-object v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 910
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taplytics/hc;

    invoke-direct {v1, p0}, Lcom/taplytics/hc;-><init>(Lcom/taplytics/gq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 949
    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/taplytics/gq;->i:Z

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 1014
    iget v0, p0, Lcom/taplytics/gq;->y:I

    return v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1018
    iget-wide v0, p0, Lcom/taplytics/gq;->b:J

    return-wide v0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/gq;->f:Z

    .line 1035
    invoke-virtual {p0}, Lcom/taplytics/gq;->n()V

    .line 1036
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taplytics/gq;->f:Z

    .line 1043
    invoke-virtual {p0}, Lcom/taplytics/gq;->m()V

    .line 1044
    return-void
.end method
