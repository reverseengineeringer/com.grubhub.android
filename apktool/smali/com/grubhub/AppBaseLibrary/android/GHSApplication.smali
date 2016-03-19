.class public Lcom/grubhub/AppBaseLibrary/android/GHSApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

.field private static c:Landroid/util/DisplayMetrics;


# instance fields
.field private d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field private e:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

.field private f:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

.field private g:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

.field private h:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

.field private i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 69
    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Instance not ready. Please ensure that your application is referenced in your manifest."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a()Lcom/grubhub/AppBaseLibrary/android/k;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 446
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 450
    add-int/lit8 v1, v1, -0x1

    .line 446
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 453
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 209
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->d()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 1

    .prologue
    .line 214
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 1

    .prologue
    .line 219
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    :try_start_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 202
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 231
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const v2, 0x7f080114

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v2, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_0

    const-string v0, "username"

    .line 235
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "password"

    .line 236
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 238
    const-string v3, "username"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 239
    const/4 v3, 0x1

    const-string v4, "password"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 243
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    const-string v1, "username"

    .line 254
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "password"

    .line 255
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    :cond_1
    return-void
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 271
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 282
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 283
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 285
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.telephony"

    .line 286
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 287
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static o()F
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->w()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 313
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static p()I
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->w()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 324
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static q()I
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->w()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 334
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static r()I
    .locals 5

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 345
    if-lez v1, :cond_0

    .line 346
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 349
    :cond_0
    return v0
.end method

.method public static s()Lcom/braintreepayments/api/a/b;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/braintreepayments/api/a/b;->SANDBOX:Lcom/braintreepayments/api/a/b;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/braintreepayments/api/a/b;->PRODUCTION:Lcom/braintreepayments/api/a/b;

    goto :goto_0
.end method

.method public static t()I
    .locals 2

    .prologue
    .line 371
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static u()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 406
    :try_start_0
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 407
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static w()Landroid/view/Display;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a()Lcom/grubhub/AppBaseLibrary/android/k;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    return-object v0

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    goto :goto_0
.end method

.method public c()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->e:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->e:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->e:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a()V

    .line 122
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->f:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->f:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->f:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->g:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->g:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->g:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V

    .line 142
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->h:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->h:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->h:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;->a(Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V

    .line 152
    return-void
.end method

.method public h()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public i()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(I)V

    .line 471
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e(Z)V

    .line 474
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 479
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->i()V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 377
    sput-object p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    .line 378
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c:Landroid/util/DisplayMetrics;

    .line 380
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 381
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i:Ljava/util/Stack;

    .line 384
    invoke-virtual {p0, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 387
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 390
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->e()V

    .line 393
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d()V

    .line 396
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->f()V

    .line 399
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->g()V

    .line 400
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getDataModelVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Ljava/util/ArrayList;)V

    .line 427
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddressToNotSaved()V

    .line 430
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 435
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 438
    :cond_1
    return-void
.end method
