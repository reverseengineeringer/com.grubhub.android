.class public Lcom/taplytics/sdk/Taplytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TaplyticsOptionSourceAdobe:Ljava/lang/String; = "Adobe"

.field public static final TaplyticsOptionSourceAmplitude:Ljava/lang/String; = "Amplitude"

.field public static final TaplyticsOptionSourceFlurry:Ljava/lang/String; = "Flurry"

.field public static final TaplyticsOptionSourceGoogleAnalytics:Ljava/lang/String; = "GA"

.field public static final TaplyticsOptionSourceLocalytics:Ljava/lang/String; = "Localytics"

.field public static final TaplyticsOptionSourceMixpanel:Ljava/lang/String; = "Mixpanel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPushNotificationListener(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/by;

    invoke-direct {v1, p0}, Lcom/taplytics/by;-><init>(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public static delayLoad(IILcom/taplytics/sdk/TaplyticsDelayLoadListener;)V
    .locals 2

    .prologue
    .line 454
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bk;

    invoke-direct {v1, p2, p0, p1}, Lcom/taplytics/bk;-><init>(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;II)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method public static delayLoad(ILcom/taplytics/sdk/TaplyticsDelayLoadListener;)V
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bj;

    invoke-direct {v1, p1, p0}, Lcom/taplytics/bj;-><init>(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public static delayLoad(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 405
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bh;

    invoke-direct {v1, p0, p1, p2}, Lcom/taplytics/bh;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public static delayLoad(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bi;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/taplytics/bi;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public static deviceLink(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bf;

    invoke-direct {v1, p0}, Lcom/taplytics/bf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public static getRunningExperimentsAndVariations(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bx;

    invoke-direct {v1, p0}, Lcom/taplytics/bx;-><init>(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-static {p0, v0, v0}, Lcom/taplytics/sdk/Taplytics;->logEvent(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V

    .line 284
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/taplytics/sdk/Taplytics;->logEvent(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V

    .line 314
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bd;

    invoke-direct {v1, p0, p1, p2}, Lcom/taplytics/bd;-><init>(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public static logGAEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bl;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/bl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 496
    return-void
.end method

.method public static logRevenue(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/taplytics/sdk/Taplytics;->logRevenue(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V

    .line 324
    return-void
.end method

.method public static logRevenue(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/be;

    invoke-direct {v1, p0, p1, p2}, Lcom/taplytics/be;-><init>(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public static overlayOff()V
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->v()V

    .line 471
    return-void
.end method

.method public static overlayOn()V
    .locals 1

    .prologue
    .line 477
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->w()V

    .line 478
    return-void
.end method

.method public static removePushNotificationListener(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bz;

    invoke-direct {v1, p0}, Lcom/taplytics/bz;-><init>(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public static removePushNotificationOpenedListener()V
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bp;

    invoke-direct {v1}, Lcom/taplytics/bp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 529
    return-void
.end method

.method public static resetAppUser(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bg;

    invoke-direct {v1, p0}, Lcom/taplytics/bg;-><init>(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public static runCodeBlock(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bc;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/bc;-><init>(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public static runCodeBlockSync(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bn;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/bn;-><init>(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public static runCodeExperiment(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bu;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/bu;-><init>(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public static runCodeExperimentSync(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bv;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/bv;-><init>(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public static setPushNotificationIntentListener(Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;)V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/ca;

    invoke-direct {v1, p0}, Lcom/taplytics/ca;-><init>(Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public static setPushNotificationOpenedListener(Lcom/taplytics/sdk/TaplyticsPushOpenedListener;)V
    .locals 2

    .prologue
    .line 513
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bo;

    invoke-direct {v1, p0}, Lcom/taplytics/bo;-><init>(Lcom/taplytics/sdk/TaplyticsPushOpenedListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public static setPushSubscriptionEnabled(ZLcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V
    .locals 2

    .prologue
    .line 570
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bt;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/bt;-><init>(ZLcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method public static setTaplyticsExperimentsUpatedListener(Lcom/taplytics/sdk/a;)V
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bs;

    invoke-direct {v1, p0}, Lcom/taplytics/bs;-><init>(Lcom/taplytics/sdk/a;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method

.method public static setTaplyticsPushTokenListener(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bm;

    invoke-direct {v1, p0}, Lcom/taplytics/bm;-><init>(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method public static setUserAttributes(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/cb;

    invoke-direct {v1, p0}, Lcom/taplytics/cb;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public static showMenu()V
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bq;

    invoke-direct {v1}, Lcom/taplytics/bq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method public static startFlurrySession()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/br;

    invoke-direct {v1}, Lcom/taplytics/br;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 558
    return-void
.end method

.method public static startTaplytics(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/taplytics/fy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V

    .line 100
    return-void
.end method

.method public static startTaplytics(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/taplytics/fy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V

    .line 115
    return-void
.end method

.method public static startTaplytics(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/taplytics/fy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V

    .line 119
    return-void
.end method
