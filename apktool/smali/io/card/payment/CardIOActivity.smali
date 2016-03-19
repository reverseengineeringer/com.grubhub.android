.class public final Lio/card/payment/CardIOActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXTRA_CAPTURED_CARD_IMAGE:Ljava/lang/String; = "io.card.payment.capturedCardImage"

.field public static final EXTRA_GUIDE_COLOR:Ljava/lang/String; = "io.card.payment.guideColor"

.field public static final EXTRA_HIDE_CARDIO_LOGO:Ljava/lang/String; = "io.card.payment.hideLogo"

.field public static final EXTRA_KEEP_APPLICATION_THEME:Ljava/lang/String; = "io.card.payment.keepApplicationTheme"

.field public static final EXTRA_LANGUAGE_OR_LOCALE:Ljava/lang/String; = "io.card.payment.languageOrLocale"

.field public static final EXTRA_NO_CAMERA:Ljava/lang/String; = "io.card.payment.noCamera"

.field public static final EXTRA_REQUIRE_CVV:Ljava/lang/String; = "io.card.payment.requireCVV"

.field public static final EXTRA_REQUIRE_EXPIRY:Ljava/lang/String; = "io.card.payment.requireExpiry"

.field public static final EXTRA_REQUIRE_POSTAL_CODE:Ljava/lang/String; = "io.card.payment.requirePostalCode"

.field public static final EXTRA_RETURN_CARD_IMAGE:Ljava/lang/String; = "io.card.payment.returnCardImage"

.field public static final EXTRA_SCAN_EXPIRY:Ljava/lang/String; = "io.card.payment.scanExpiry"

.field public static final EXTRA_SCAN_INSTRUCTIONS:Ljava/lang/String; = "io.card.payment.scanInstructions"

.field public static final EXTRA_SCAN_OVERLAY_LAYOUT_ID:Ljava/lang/String; = "io.card.payment.scanOverlayLayoutId"

.field public static final EXTRA_SCAN_RESULT:Ljava/lang/String; = "io.card.payment.scanResult"

.field public static final EXTRA_SUPPRESS_CONFIRMATION:Ljava/lang/String; = "io.card.payment.suppressConfirmation"

.field public static final EXTRA_SUPPRESS_MANUAL_ENTRY:Ljava/lang/String; = "io.card.payment.suppressManual"

.field public static final EXTRA_SUPPRESS_SCAN:Ljava/lang/String; = "io.card.payment.suppressScan"

.field public static final EXTRA_USE_CARDIO_LOGO:Ljava/lang/String; = "io.card.payment.useCardIOLogo"

.field public static final EXTRA_USE_PAYPAL_ACTIONBAR_ICON:Ljava/lang/String; = "io.card.payment.intentSenderIsPayPal"

.field private static final REQUEST_DATA_ENTRY:I

.field public static final RESULT_CARD_INFO:I

.field public static final RESULT_CONFIRMATION_SUPPRESSED:I

.field public static final RESULT_ENTRY_CANCELED:I

.field public static final RESULT_SCAN_NOT_AVAILABLE:I

.field public static final RESULT_SCAN_SUPPRESSED:I

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_PATTERN:[J

.field private static lastResult:I

.field static markedCardImage:Landroid/graphics/Bitmap;

.field private static numActivityAllocations:I

.field private static uniqueOMatic:I


# instance fields
.field private customOverlayLayout:Landroid/widget/LinearLayout;

.field private mCardScanner:Lio/card/payment/CardScanner;

.field private mDetectOnly:Z

.field private mDetectedCard:Lio/card/payment/CreditCard;

.field private mFrameOrientation:I

.field private mGuideFrame:Landroid/graphics/Rect;

.field private mLastDegrees:I

.field private mMainLayout:Landroid/widget/FrameLayout;

.field private mOverlay:Lio/card/payment/OverlayView;

.field mPreview:Lio/card/payment/Preview;

.field private mUIBar:Landroid/widget/RelativeLayout;

.field private manualEntryFallbackOrForced:Z

.field private orientationListener:Landroid/view/OrientationEventListener;

.field private suppressManualEntry:Z

.field private useApplicationTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    const-class v0, Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/card/payment/CardIOActivity;->$assertionsDisabled:Z

    .line 207
    const v0, 0xca8d10

    sput v0, Lio/card/payment/CardIOActivity;->lastResult:I

    .line 212
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_CARD_INFO:I

    .line 218
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    .line 227
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_SCAN_NOT_AVAILABLE:I

    .line 232
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_SCAN_SUPPRESSED:I

    .line 237
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_CONFIRMATION_SUPPRESSED:I

    .line 239
    const-class v0, Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lio/card/payment/CardIOActivity;->VIBRATE_PATTERN:[J

    .line 258
    const/16 v0, 0xa

    sput v0, Lio/card/payment/CardIOActivity;->uniqueOMatic:I

    .line 259
    sget v0, Lio/card/payment/CardIOActivity;->uniqueOMatic:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lio/card/payment/CardIOActivity;->uniqueOMatic:I

    sput v0, Lio/card/payment/CardIOActivity;->REQUEST_DATA_ENTRY:I

    .line 279
    sput v1, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0

    .line 254
    nop

    :array_0
    .array-data 8
        0x0
        0x46
        0xa
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 271
    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    .line 272
    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->mDetectOnly:Z

    .line 283
    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    return-void
.end method

.method static synthetic access$000(Lio/card/payment/CardIOActivity;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lio/card/payment/CardIOActivity;->doOrientationChange(I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/card/payment/CardIOActivity;)Lio/card/payment/OverlayView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    return-object v0
.end method

.method static synthetic access$300(Lio/card/payment/CardIOActivity;)Lio/card/payment/CreditCard;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    return-object v0
.end method

.method static synthetic access$302(Lio/card/payment/CardIOActivity;Lio/card/payment/CreditCard;)Lio/card/payment/CreditCard;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    return-object p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lio/card/payment/CardIOActivity;->REQUEST_DATA_ENTRY:I

    return v0
.end method

.method static synthetic access$500(Lio/card/payment/CardIOActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    return-void
.end method

.method public static canReadCardWithCamera()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 621
    :try_start_0
    invoke-static {}, Lio/card/payment/Util;->hardwareSupported()Z
    :try_end_0
    .catch Lio/card/payment/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 626
    :goto_0
    return v0

    .line 624
    :catch_0
    move-exception v1

    .line 625
    sget-object v1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v2, "RuntimeException accessing Util.hardwareSupported()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private doOrientationChange(I)V
    .locals 6

    .prologue
    const/16 v2, 0x10e

    const/16 v1, 0x5a

    .line 432
    if-ltz p1, :cond_0

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->getRotationalOffset()I

    move-result v0

    add-int/2addr v0, p1

    .line 440
    const/16 v3, 0x168

    if-le v0, v3, :cond_9

    .line 441
    add-int/lit16 v0, v0, -0x168

    move v3, v0

    .line 445
    :goto_1
    const/4 v0, -0x1

    .line 447
    const/16 v4, 0xf

    if-lt v3, v4, :cond_2

    const/16 v4, 0x159

    if-le v3, v4, :cond_4

    .line 448
    :cond_2
    const/4 v0, 0x0

    .line 449
    const/4 v3, 0x1

    iput v3, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    .line 460
    :cond_3
    :goto_2
    if-ltz v0, :cond_0

    iget v3, p0, Lio/card/payment/CardIOActivity;->mLastDegrees:I

    if-eq v0, v3, :cond_0

    .line 461
    sget-object v3, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOrientationChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") calling setDeviceOrientation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v3, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    iget v4, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    invoke-virtual {v3, v4}, Lio/card/payment/CardScanner;->setDeviceOrientation(I)V

    .line 464
    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->setDeviceDegrees(I)V

    .line 465
    if-ne v0, v1, :cond_7

    .line 466
    const/high16 v0, 0x43870000    # 270.0f

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->rotateCustomOverlay(F)V

    goto :goto_0

    .line 450
    :cond_4
    const/16 v4, 0x4b

    if-le v3, v4, :cond_5

    const/16 v4, 0x69

    if-ge v3, v4, :cond_5

    .line 452
    const/4 v0, 0x4

    iput v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    move v0, v1

    goto :goto_2

    .line 453
    :cond_5
    const/16 v4, 0xa5

    if-le v3, v4, :cond_6

    const/16 v4, 0xc3

    if-ge v3, v4, :cond_6

    .line 454
    const/16 v0, 0xb4

    .line 455
    const/4 v3, 0x2

    iput v3, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    goto :goto_2

    .line 456
    :cond_6
    const/16 v4, 0xff

    if-le v3, v4, :cond_3

    const/16 v4, 0x11d

    if-ge v3, v4, :cond_3

    .line 458
    const/4 v0, 0x3

    iput v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    move v0, v2

    goto :goto_2

    .line 467
    :cond_7
    if-ne v0, v2, :cond_8

    .line 468
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->rotateCustomOverlay(F)V

    goto/16 :goto_0

    .line 470
    :cond_8
    int-to-float v0, v0

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->rotateCustomOverlay(F)V

    goto/16 :goto_0

    :cond_9
    move v3, v0

    goto/16 :goto_1
.end method

.method public static getCapturedCardImage(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 651
    if-eqz p0, :cond_0

    const-string v1, "io.card.payment.capturedCardImage"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-object v0

    .line 655
    :cond_1
    const-string v1, "io.card.payment.capturedCardImage"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 656
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 657
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getRotationalOffset()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 483
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 485
    if-nez v0, :cond_0

    move v0, v1

    .line 497
    :goto_0
    return v0

    .line 487
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 488
    const/16 v0, 0x5a

    goto :goto_0

    .line 489
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 490
    const/16 v0, 0xb4

    goto :goto_0

    .line 491
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 492
    const/16 v0, 0x10e

    goto :goto_0

    :cond_3
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method private handleGeneralExceptionError(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 418
    sget-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    .line 419
    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "card.io"

    const-string v2, "Unkown exception - please send the stack trace to support@card.io"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 424
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/16 v3, -0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 425
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 426
    iput-boolean v4, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    .line 427
    return-void
.end method

.method private nextActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 738
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "CardIOActivity.nextActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_1

    const-string v1, "io.card.payment.suppressConfirmation"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/card/payment/DataEntryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 743
    const-string v2, "io.card.payment.scanResult"

    iget-object v3, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 744
    const/4 v2, 0x0

    iput-object v2, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 746
    const-string v2, "io.card.payment.returnCardImage"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0}, Lio/card/payment/OverlayView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 749
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2}, Lio/card/payment/OverlayView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 750
    const-string v2, "io.card.payment.capturedCardImage"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 753
    :cond_0
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_CONFIRMATION_SUPPRESSED:I

    invoke-direct {p0, v0, v1}, Lio/card/payment/CardIOActivity;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 793
    :goto_0
    return-void

    .line 755
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/card/payment/CardIOActivity$2;

    invoke-direct {v1, p0}, Lio/card/payment/CardIOActivity$2;-><init>(Lio/card/payment/CardIOActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private restartPreview()Z
    .locals 3

    .prologue
    .line 805
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "restartPreview()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 808
    sget-boolean v0, Lio/card/payment/CardIOActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 809
    :cond_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    invoke-virtual {v1}, Lio/card/payment/Preview;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/card/payment/CardScanner;->resumeScanning(Landroid/view/SurfaceHolder;)Z

    move-result v0

    .line 810
    if-eqz v0, :cond_1

    .line 811
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 814
    :cond_1
    return v0
.end method

.method private rotateCustomOverlay(F)V
    .locals 4

    .prologue
    .line 983
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 985
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 987
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0, v1}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 988
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 989
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 990
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 992
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 994
    :cond_0
    return-void
.end method

.method public static sdkBuildDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Ljava/util/Date;

    const-string v1, "03/10/2015 11:22:54 -0500"

    invoke-direct {v0, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    const-string v0, "5.0.0"

    return-object v0
.end method

.method private setDeviceDegrees(I)V
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    invoke-virtual {v0}, Lio/card/payment/Preview;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    .line 822
    if-nez v0, :cond_0

    .line 823
    const-string v0, "card.io"

    const-string v1, "surface view is null.. recovering... rotation might be weird."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/card/payment/CardScanner;->getGuideFrame(II)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    .line 831
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 832
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 833
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lio/card/payment/OverlayView;->setGuideAndRotation(Landroid/graphics/Rect;I)V

    .line 834
    iput p1, p0, Lio/card/payment/CardIOActivity;->mLastDegrees:I

    goto :goto_0
.end method

.method private setPreviewLayout()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 860
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    .line 861
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 862
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 866
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 868
    new-instance v1, Lio/card/payment/Preview;

    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x280

    iget-object v3, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x1e0

    invoke-direct {v1, p0, v7, v2, v3}, Lio/card/payment/Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    .line 869
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lio/card/payment/Preview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 873
    new-instance v1, Lio/card/payment/OverlayView;

    invoke-static {p0}, Lio/card/payment/Util;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v1, p0, v7, v2}, Lio/card/payment/OverlayView;-><init>(Lio/card/payment/CardIOActivity;Landroid/util/AttributeSet;Z)V

    iput-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    .line 874
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lio/card/payment/OverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 877
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.useCardIOLogo"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 878
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v1}, Lio/card/payment/OverlayView;->setUseCardIOLogo(Z)V

    .line 880
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.guideColor"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 882
    if-eqz v1, :cond_5

    .line 884
    const/high16 v2, -0x1000000

    or-int/2addr v2, v1

    .line 885
    if-eq v1, v2, :cond_0

    .line 886
    const-string v1, "card.io"

    const-string v3, "Removing transparency from provided guide color."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v1, v2}, Lio/card/payment/OverlayView;->setGuideColor(I)V

    .line 894
    :goto_0
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.hideLogo"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 895
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v1}, Lio/card/payment/OverlayView;->setHideCardIOLogo(Z)V

    .line 897
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.scanInstructions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_1

    .line 899
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v1}, Lio/card/payment/OverlayView;->setScanInstructions(Ljava/lang/String;)V

    .line 904
    :cond_1
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 906
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 908
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 909
    invoke-virtual {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 910
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    .line 913
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 914
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 916
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 917
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 921
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 924
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    if-nez v0, :cond_2

    .line 925
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 926
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V

    .line 927
    sget-object v0, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 928
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 929
    new-instance v0, Lio/card/payment/CardIOActivity$3;

    invoke-direct {v0, p0}, Lio/card/payment/CardIOActivity$3;-><init>(Lio/card/payment/CardIOActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 936
    invoke-static {v1, v6, p0}, Lio/card/payment/ui/ViewUtil;->styleAsButton(Landroid/view/View;ZLandroid/content/Context;)V

    .line 937
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 938
    const-string v0, "42dip"

    invoke-static {v0, p0}, Lio/card/payment/ui/ViewUtil;->typedDimensionValueToPixelsInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 940
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 942
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 943
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 944
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 945
    const-string v0, "16dip"

    const-string v2, "16dip"

    invoke-static {v1, v0, v7, v2, v7}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v0, "4dip"

    const-string v2, "4dip"

    const-string v3, "4dip"

    const-string v4, "4dip"

    invoke-static {v1, v0, v2, v3, v4}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 954
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 955
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 956
    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 957
    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 958
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 961
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 962
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 963
    iput-object v7, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    .line 966
    :cond_3
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "io.card.payment.scanOverlayLayoutId"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 967
    if-eq v0, v5, :cond_4

    .line 968
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    .line 969
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 974
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 975
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 979
    :cond_4
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setContentView(Landroid/view/View;)V

    .line 980
    return-void

    .line 891
    :cond_5
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Lio/card/payment/OverlayView;->setGuideColor(I)V

    goto/16 :goto_0
.end method

.method private setResultAndFinish(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 997
    invoke-virtual {p0, p1, p2}, Lio/card/payment/CardIOActivity;->setResult(ILandroid/content/Intent;)V

    .line 998
    const/4 v0, 0x0

    sput-object v0, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 999
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->finish()V

    .line 1000
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 799
    const-string v0, "card.io"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 802
    return-void
.end method


# virtual methods
.method public getTorchRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0}, Lio/card/payment/OverlayView;->getTorchRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 568
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 569
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult(requestCode:%d, resultCode:%d, ..."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_CARD_INFO:I

    if-eq p2, v0, :cond_0

    sget v0, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    if-eq p2, v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz v0, :cond_3

    .line 574
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "io.card.payment.scanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data entry result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "io.card.payment.scanResult"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    invoke-direct {p0, p2, p3}, Lio/card/payment/CardIOActivity;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 584
    :cond_2
    :goto_0
    return-void

    .line 580
    :cond_3
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 594
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "CardIOActivity.onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0}, Lio/card/payment/OverlayView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :try_start_0
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->restartPreview()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    sget-object v1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** could not return to preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-eqz v0, :cond_0

    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onCardDetected(Landroid/graphics/Bitmap;Lio/card/payment/DetectionInfo;)V
    .locals 7

    .prologue
    const/high16 v4, 0x43d60000    # 428.0f

    const/4 v1, 0x0

    .line 685
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v2, "processDetections"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 689
    sget-object v2, Lio/card/payment/CardIOActivity;->VIBRATE_PATTERN:[J

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 697
    :goto_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->pauseScanning()V

    .line 698
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 700
    invoke-virtual {p2}, Lio/card/payment/DetectionInfo;->predicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p2}, Lio/card/payment/DetectionInfo;->creditCard()Lio/card/payment/CreditCard;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 702
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    invoke-virtual {v0, v2}, Lio/card/payment/OverlayView;->setDetectedCard(Lio/card/payment/CreditCard;)V

    .line 706
    :cond_0
    iget v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 708
    :cond_1
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v0, v2

    .line 713
    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 714
    sget-object v2, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scale factor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 717
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 719
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v0}, Lio/card/payment/OverlayView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 721
    iget-boolean v2, p0, Lio/card/payment/CardIOActivity;->mDetectOnly:Z

    if-eqz v2, :cond_4

    .line 723
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 724
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 727
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "io.card.payment.returnCardImage"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    const-string v1, "io.card.payment.capturedCardImage"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 731
    :cond_2
    sget v1, Lio/card/payment/CardIOActivity;->RESULT_SCAN_SUPPRESSED:I

    invoke-direct {p0, v1, v0}, Lio/card/payment/CardIOActivity;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 735
    :goto_2
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    const-string v0, "card.io"

    const-string v2, "Could not activate vibration feedback. Please add <uses-permission android:name=\"android.permission.VIBRATE\" /> to your application\'s manifest."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 693
    :catch_1
    move-exception v0

    .line 694
    const-string v2, "card.io"

    const-string v3, "Exception while attempting to vibrate: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 710
    :cond_3
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    const v2, 0x3f933333    # 1.15f

    mul-float/2addr v0, v2

    goto/16 :goto_1

    .line 733
    :cond_4
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() ================================================================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    .line 307
    sget v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    if-eq v0, v5, :cond_0

    .line 311
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "INTERNAL WARNING: There are %d (not 1) CardIOActivity allocations!"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 318
    const-string v0, "io.card.payment.keepApplicationTheme"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->useApplicationTheme:Z

    .line 320
    invoke-static {v1}, Lio/card/payment/i18n/LocalizedStrings;->setLanguage(Landroid/content/Intent;)V

    .line 323
    const-string v0, "io.card.payment.suppressScan"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->mDetectOnly:Z

    .line 331
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 333
    const-class v2, Lio/card/payment/CardIOActivity;

    invoke-static {v0, v2}, Lio/card/payment/Util;->manifestHasConfigChange(Landroid/content/pm/ResolveInfo;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_1
    const-string v0, "io.card.payment.suppressManual"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    .line 341
    const-string v0, "io.card.payment.noCamera"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    const-string v0, "card.io"

    const-string v2, "EXTRA_NO_CAMERA set to true. Skipping camera."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean v5, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    .line 366
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-nez v0, :cond_3

    .line 370
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->requestWindowFeature(I)Z

    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    .line 374
    const/4 v0, 0x1

    iput v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    .line 376
    const-string v0, "io.card.payment.cameraBypassTestMode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.card.development"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 378
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not correct"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal access of private extra"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->handleGeneralExceptionError(Ljava/lang/Exception;)V

    .line 408
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz v0, :cond_4

    .line 409
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    if-eqz v0, :cond_4

    .line 410
    const-string v0, "card.io"

    const-string v1, "Camera not available and manual entry suppressed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_SCAN_NOT_AVAILABLE:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/card/payment/CardIOActivity;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 415
    :cond_4
    return-void

    .line 346
    :cond_5
    :try_start_1
    invoke-static {}, Lio/card/payment/Util;->hardwareSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    sget-object v0, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    .line 348
    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v2

    .line 349
    const-string v3, "card.io"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z
    :try_end_1
    .catch Lio/card/payment/CameraUnavailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 353
    sget-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    .line 354
    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string v3, "card.io"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 358
    const/16 v2, 0x11

    const/16 v3, -0x4b

    invoke-virtual {v0, v2, v6, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 359
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    iput-boolean v5, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    goto/16 :goto_0

    .line 361
    :catch_2
    move-exception v0

    .line 362
    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->handleGeneralExceptionError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 383
    :cond_6
    :try_start_2
    const-string v0, "io.card.payment.CardScannerTester"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 384
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 386
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardScanner;

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    .line 391
    :goto_2
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->prepareScanner()V

    .line 393
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->setPreviewLayout()V

    .line 395
    new-instance v0, Lio/card/payment/CardIOActivity$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p0, v1}, Lio/card/payment/CardIOActivity$1;-><init>(Lio/card/payment/CardIOActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    goto/16 :goto_1

    .line 389
    :cond_7
    new-instance v0, Lio/card/payment/CardScanner;

    iget v1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    invoke-direct {v0, p0, v1}, Lio/card/payment/CardScanner;-><init>(Lio/card/payment/CardIOActivity;I)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iput-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    .line 556
    sget v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    .line 558
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->endScanning()V

    .line 560
    iput-object v2, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    .line 563
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 564
    return-void
.end method

.method onEdgeUpdate(Lio/card/payment/DetectionInfo;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0, p1}, Lio/card/payment/OverlayView;->setDetectionInfo(Lio/card/payment/DetectionInfo;)V

    .line 682
    return-void
.end method

.method onFirstFrame(I)V
    .locals 6

    .prologue
    .line 664
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "mFirstPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    invoke-virtual {v0}, Lio/card/payment/Preview;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lio/card/payment/OverlayView;->setCameraPreviewRect(Landroid/graphics/Rect;)V

    .line 670
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->setDeviceDegrees(I)V

    .line 673
    iget v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    if-eq p1, v0, :cond_1

    .line 674
    const-string v0, "card.io"

    const-string v1, "the orientation of the scanner doesn\'t match the orientation of the activity"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1
    new-instance v0, Lio/card/payment/DetectionInfo;

    invoke-direct {v0}, Lio/card/payment/DetectionInfo;-><init>()V

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->onEdgeUpdate(Lio/card/payment/DetectionInfo;)V

    .line 678
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 538
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause() xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 543
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    .line 545
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->pauseScanning()V

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-nez v0, :cond_1

    .line 548
    const-string v0, "card.io"

    const-string v1, "cardScanner is null in onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 507
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume() ----------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    .line 533
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-static {}, Lio/card/payment/Util;->logNativeMemoryStats()V

    .line 516
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 517
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 519
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setRequestedOrientation(I)V

    .line 520
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 522
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->restartPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not connect to camera."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    .line 525
    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    .line 532
    :goto_1
    iget v0, p0, Lio/card/payment/CardIOActivity;->mLastDegrees:I

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->doOrientationChange(I)V

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    goto :goto_1
.end method

.method setFlashOn(Z)V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0, p1}, Lio/card/payment/CardScanner;->setFlashOn(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 844
    :goto_0
    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0, p1}, Lio/card/payment/OverlayView;->setTorchOn(Z)V

    .line 847
    :cond_0
    return-void

    .line 843
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toggleFlash()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->isFlashOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    .line 840
    return-void

    .line 839
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method triggerAutoFocus()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/card/payment/CardScanner;->triggerAutoFocus(Z)V

    .line 851
    return-void
.end method
