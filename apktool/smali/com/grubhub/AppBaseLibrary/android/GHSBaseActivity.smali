.class public abstract Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.super Landroid/support/v4/app/q;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/feedback/a;
.implements Lcom/grubhub/AppBaseLibrary/android/feedback/c;
.implements Lcom/grubhub/AppBaseLibrary/android/feedback/e;
.implements Lcom/grubhub/AppBaseLibrary/android/review/a;
.implements Lcom/grubhub/AppBaseLibrary/android/views/f;
.implements Lcom/grubhub/AppBaseLibrary/android/views/w;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

.field protected b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

.field protected c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    .line 697
    return-void
.end method

.method private a(J)V
    .locals 9

    .prologue
    .line 470
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 472
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 474
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v4, v3

    .line 473
    invoke-interface {v2, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(J)J

    move-result-wide v4

    .line 475
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-eqz v3, :cond_0

    sub-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    .line 484
    instance-of v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    if-nez v0, :cond_0

    .line 487
    instance-of v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    if-eqz v0, :cond_2

    .line 488
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 489
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->finish()V

    goto :goto_0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 504
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 507
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    .line 508
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->getRefresh_token()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 302
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 308
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 314
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {p0, v1, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 557
    const-string v2, ""

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 561
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 567
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    .line 572
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 573
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x7f08038a

    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v1, v5, v0

    const/4 v0, 0x3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 577
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const v0, 0x7f080388

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 580
    return-void

    .line 562
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 563
    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->d:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 517
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 519
    if-nez v0, :cond_1

    .line 521
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 524
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 525
    invoke-interface {p1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 530
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    goto :goto_0

    .line 533
    :cond_3
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->resetFilterValues()V

    .line 534
    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 272
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 275
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 291
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->i()V

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {p0, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->i()V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 324
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 325
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 329
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v3

    invoke-static {v3, v2, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    .line 333
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    invoke-direct {v3, p0, v0, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 334
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;

    invoke-direct {v0, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;Z)V

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 340
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;)V

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 346
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a()V

    .line 351
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 331
    goto :goto_0

    .line 349
    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {p0, v4, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->setLocationType(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V

    .line 742
    :cond_0
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->setPastOrder(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V

    .line 735
    :cond_0
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V
    .locals 7

    .prologue
    .line 747
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v4

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;->AUTOMATICALLY_LAUNCHED_MODAL:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;

    move-object v0, p0

    move-object v6, p2

    .line 748
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSInteractionType;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)Landroid/content/Intent;

    move-result-object v0

    .line 751
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 755
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "submit ratings and reviews"

    const-string v3, "submit ratings prompt-rate_cta"

    const-string v4, "restaurant search_modal"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 758
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V
    .locals 5

    .prologue
    .line 607
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->TRAY:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    if-ne p1, v0, :cond_0

    .line 609
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "app navigation"

    const-string v4, "give feedback app nav_CTA"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 614
    :cond_0
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 669
    invoke-static {p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    move-result-object v0

    .line 670
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j(Z)V

    .line 674
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const v10, 0x7f0d0048

    const v9, 0x7f08039e

    const/4 v8, 0x0

    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 179
    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 181
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 183
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    invoke-direct {v5, v8, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 185
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 195
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    invoke-direct {v5, v8, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 197
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 199
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 209
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 210
    return-void

    .line 201
    :cond_0
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 360
    if-eqz p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 233
    :cond_1
    return-void
.end method

.method protected a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V
    .locals 1

    .prologue
    .line 259
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-ne p3, v0, :cond_0

    .line 260
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 262
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V
    .locals 1

    .prologue
    .line 763
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSReviewService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 765
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 767
    :cond_0
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->setMode(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    .line 623
    :cond_0
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/feedback/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 678
    .line 681
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "send more details modal_CTA"

    const-string v4, "yes"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 686
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->d()V

    .line 690
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$5;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 696
    const v0, 0x7f080387

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    const v1, 0x7f080389

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 242
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;I)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    if-eqz v0, :cond_1

    .line 628
    if-eqz p1, :cond_2

    .line 630
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->c()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->b()V

    .line 639
    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->c()V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 403
    return-void
.end method

.method public c(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V
    .locals 5

    .prologue
    .line 649
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "give feedback modal_CTA"

    const-string v4, "yes"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 653
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    .line 654
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    if-eqz v0, :cond_1

    .line 708
    if-eqz p1, :cond_2

    .line 710
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->c()V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->b()V

    .line 719
    :cond_1
    :goto_0
    return-void

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->c()V

    goto :goto_0
.end method

.method public d(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V
    .locals 5

    .prologue
    .line 659
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "give feedback modal_CTA"

    const-string v4, "no"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 663
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j(Z)V

    .line 664
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 589
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 590
    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 592
    invoke-virtual {v2, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()I

    .line 597
    :cond_0
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 600
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 603
    :cond_1
    return-void
.end method

.method protected e_()V
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;)V

    .line 378
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->d()Z

    move-result v0

    .line 726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k_()V
    .locals 3

    .prologue
    .line 386
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v1

    .line 388
    const/4 v0, 0x0

    .line 389
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_0

    .line 391
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 393
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(ZLjava/lang/String;)V

    .line 395
    :cond_1
    return-void
.end method

.method protected l_()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 411
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 414
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v6

    .line 415
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0c0015

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/2addr v1, v7

    int-to-long v8, v1

    .line 416
    invoke-interface {v6, v8, v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(J)J

    move-result-wide v8

    .line 419
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->c()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->c()J

    move-result-wide v10

    sub-long v10, v2, v10

    cmp-long v1, v10, v8

    if-gez v1, :cond_1

    .line 421
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->p()I

    move-result v1

    .line 422
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 423
    const-string v3, "SessionID"

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v0, "SessionSequence"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 461
    :goto_0
    return-void

    .line 432
    :cond_1
    if-eqz v0, :cond_2

    .line 433
    const-string v1, "Old Session Ended"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SessionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;-><init>()V

    .line 435
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V

    .line 436
    const-string v0, "SESSION_END"

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 440
    :cond_2
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    const-string v1, "%s%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 441
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;-><init>(Ljava/lang/String;JJ)V

    .line 447
    const-string v1, "New Session Started"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;-><init>()V

    .line 449
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V

    .line 450
    const-string v2, "SESSION_START"

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 453
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 454
    const-string v2, "SessionID"

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v2, "SessionSequence"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 459
    invoke-interface {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 140
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/q;->onStart()V

    .line 104
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->e_()V

    .line 107
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->k_()V

    .line 110
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->h()V

    .line 113
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->c()J

    move-result-wide v0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->l_()V

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(J)V

    .line 121
    return-void

    .line 114
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/q;->onStop()V

    .line 128
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a(J)V

    .line 132
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V

    .line 134
    :cond_0
    return-void
.end method
