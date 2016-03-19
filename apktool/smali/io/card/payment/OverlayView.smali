.class Lio/card/payment/OverlayView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final GRADIENT_ORIENTATIONS:[Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private guideColor:I

.field private hideCardIOLogo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCameraPreviewRect:Landroid/graphics/Rect;

.field private mDInfo:Lio/card/payment/DetectionInfo;

.field private mDetectedCard:Lio/card/payment/CreditCard;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mGuide:Landroid/graphics/Rect;

.field private final mGuidePaint:Landroid/graphics/Paint;

.field private final mLockedBackgroundPaint:Landroid/graphics/Paint;

.field private mLockedBackgroundPath:Landroid/graphics/Path;

.field private final mLogo:Lio/card/payment/Logo;

.field private mLogoRect:Landroid/graphics/Rect;

.field private mRotation:I

.field private mRotationFlip:I

.field private mScale:F

.field private final mScanActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/card/payment/CardIOActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowTorch:Z

.field private mState:I

.field private final mTorch:Lio/card/payment/Torch;

.field private mTorchRect:Landroid/graphics/Rect;

.field private scanInstructions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-class v0, Lio/card/payment/OverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    sput-object v0, Lio/card/payment/OverlayView;->GRADIENT_ORIENTATIONS:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor <init>(Lio/card/payment/CardIOActivity;Landroid/util/AttributeSet;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/card/payment/OverlayView;->hideCardIOLogo:Z

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/card/payment/OverlayView;->mScale:F

    .line 120
    iput-boolean p3, p0, Lio/card/payment/OverlayView;->mShowTorch:Z

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/card/payment/OverlayView;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    .line 123
    iput v4, p0, Lio/card/payment/OverlayView;->mRotationFlip:I

    .line 126
    invoke-virtual {p0}, Lio/card/payment/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    iput v0, p0, Lio/card/payment/OverlayView;->mScale:F

    .line 128
    new-instance v0, Lio/card/payment/Torch;

    const/high16 v1, 0x428c0000    # 70.0f

    iget v2, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    iget v3, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lio/card/payment/Torch;-><init>(FF)V

    iput-object v0, p0, Lio/card/payment/OverlayView;->mTorch:Lio/card/payment/Torch;

    .line 129
    new-instance v0, Lio/card/payment/Logo;

    invoke-direct {v0, p1}, Lio/card/payment/Logo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/OverlayView;->mLogo:Lio/card/payment/Logo;

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 135
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    sget-object v0, Lio/card/payment/i18n/StringKey;->SCAN_GUIDE:Lio/card/payment/i18n/StringKey;

    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/OverlayView;->scanInstructions:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private decorateBitmap()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 425
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 426
    iget-object v1, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d888889

    mul-float/2addr v1, v2

    .line 429
    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 431
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 432
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 433
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 434
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    invoke-virtual {v3, v0, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 438
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 439
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 442
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 444
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 445
    invoke-virtual {v1, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 448
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 450
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    return-void
.end method

.method private guideStrokeRect(IIII)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 250
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 253
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 254
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 256
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 257
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 259
    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCardImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTorchRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lio/card/payment/OverlayView;->mTorchRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lio/card/payment/OverlayView;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markupCard()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 480
    :cond_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDetectedCard:Lio/card/payment/CreditCard;

    iget-boolean v0, v0, Lio/card/payment/CreditCard;->flipped:Z

    if-eqz v0, :cond_2

    .line 461
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 462
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 464
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    .line 468
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 469
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 470
    invoke-static {v2}, Lio/card/payment/Util;->setupTextPaintStyle(Landroid/graphics/Paint;)V

    .line 471
    const/high16 v3, 0x41e00000    # 28.0f

    iget v4, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 473
    iget-object v3, p0, Lio/card/payment/OverlayView;->mDetectedCard:Lio/card/payment/CreditCard;

    iget-object v3, v3, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 474
    iget-object v4, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43d60000    # 428.0f

    div-float/2addr v4, v5

    .line 475
    iget-object v5, p0, Lio/card/payment/OverlayView;->mDetectedCard:Lio/card/payment/CreditCard;

    iget v5, v5, Lio/card/payment/CreditCard;->yoff:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x40c00000    # 6.0f

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 476
    :goto_0
    if-ge v1, v3, :cond_0

    .line 477
    iget-object v6, p0, Lio/card/payment/OverlayView;->mDetectedCard:Lio/card/payment/CreditCard;

    iget-object v6, v6, Lio/card/payment/CreditCard;->xoff:[I

    aget v6, v6, v1

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lio/card/payment/OverlayView;->mDetectedCard:Lio/card/payment/CreditCard;

    iget-object v8, v8, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    int-to-float v6, v6

    int-to-float v8, v5

    invoke-virtual {v0, v7, v6, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 265
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    iget v0, p0, Lio/card/payment/OverlayView;->mRotation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lio/card/payment/OverlayView;->mRotation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_8

    .line 276
    :cond_2
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 281
    :goto_1
    iget-object v1, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    invoke-virtual {v1}, Lio/card/payment/DetectionInfo;->numVisibleEdges()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 283
    iget-object v1, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPath:Landroid/graphics/Path;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 287
    :cond_3
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 288
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 289
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    iget v2, p0, Lio/card/payment/OverlayView;->guideColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 295
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 300
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 303
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 311
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 316
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v4}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 319
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    invoke-direct {p0, v1, v2, v3, v0}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    iget-boolean v0, v0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 328
    :cond_4
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    iget-boolean v0, v0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-eqz v0, :cond_5

    .line 329
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 333
    :cond_5
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    iget-boolean v0, v0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-eqz v0, :cond_6

    .line 334
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    :cond_6
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    iget-boolean v0, v0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-eqz v0, :cond_7

    .line 339
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/card/payment/OverlayView;->guideStrokeRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 344
    :cond_7
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    invoke-virtual {v0}, Lio/card/payment/DetectionInfo;->numVisibleEdges()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 347
    const/high16 v0, 0x42080000    # 34.0f

    iget v1, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float v2, v0, v1

    .line 348
    const/high16 v0, 0x41d00000    # 26.0f

    iget v1, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v0, v1

    .line 350
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lio/card/payment/Util;->setupTextPaintStyle(Landroid/graphics/Paint;)V

    .line 351
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 352
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 356
    iget v1, p0, Lio/card/payment/OverlayView;->mRotationFlip:I

    iget v3, p0, Lio/card/payment/OverlayView;->mRotation:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 358
    iget-object v1, p0, Lio/card/payment/OverlayView;->scanInstructions:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lio/card/payment/OverlayView;->scanInstructions:Ljava/lang/String;

    const-string v3, ""

    if-eq v1, v3, :cond_9

    .line 359
    iget-object v1, p0, Lio/card/payment/OverlayView;->scanInstructions:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 360
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v1, v0, v1

    .line 362
    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_9

    .line 363
    aget-object v4, v3, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lio/card/payment/OverlayView;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    add-float/2addr v1, v2

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 278
    :cond_8
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto/16 :goto_1

    .line 369
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 372
    iget-boolean v0, p0, Lio/card/payment/OverlayView;->hideCardIOLogo:Z

    if-nez v0, :cond_a

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 374
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLogoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mLogoRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 375
    iget v0, p0, Lio/card/payment/OverlayView;->mRotationFlip:I

    iget v1, p0, Lio/card/payment/OverlayView;->mRotation:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 376
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLogo:Lio/card/payment/Logo;

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    iget v3, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lio/card/payment/Logo;->draw(Landroid/graphics/Canvas;FF)V

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 380
    :cond_a
    iget-boolean v0, p0, Lio/card/payment/OverlayView;->mShowTorch:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 383
    iget-object v0, p0, Lio/card/payment/OverlayView;->mTorchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lio/card/payment/OverlayView;->mTorchRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    iget v0, p0, Lio/card/payment/OverlayView;->mRotationFlip:I

    iget v1, p0, Lio/card/payment/OverlayView;->mRotation:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 385
    iget-object v0, p0, Lio/card/payment/OverlayView;->mTorch:Lio/card/payment/Torch;

    invoke-virtual {v0, p1}, Lio/card/payment/Torch;->draw(Landroid/graphics/Canvas;)V

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 398
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 399
    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 402
    const/16 v1, 0x14

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lio/card/payment/Util;->rectGivenCenter(Landroid/graphics/Point;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 403
    sget-object v2, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-boolean v0, p0, Lio/card/payment/OverlayView;->mShowTorch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/OverlayView;->mTorchRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/OverlayView;->mTorchRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    sget-object v0, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    const-string v1, "torch touched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lio/card/payment/OverlayView;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Lio/card/payment/CardIOActivity;->toggleFlash()V

    .line 419
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_1
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLogoRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/card/payment/OverlayView;->mLogoRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    sget-object v0, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    const-string v1, "logo touched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 417
    sget-object v0, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    const-string v1, "NullPointerException caught in onTouchEvent method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/card/payment/OverlayView;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Lio/card/payment/CardIOActivity;->triggerAutoFocus()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_0
    iput-object p1, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    .line 215
    iget-object v0, p0, Lio/card/payment/OverlayView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lio/card/payment/OverlayView;->decorateBitmap()V

    .line 218
    :cond_1
    return-void
.end method

.method public setCameraPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    .line 488
    return-void
.end method

.method public setDetectedCard(Lio/card/payment/CreditCard;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lio/card/payment/OverlayView;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 392
    return-void
.end method

.method public setDetectionInfo(Lio/card/payment/DetectionInfo;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    invoke-virtual {v0, p1}, Lio/card/payment/DetectionInfo;->sameEdgesAs(Lio/card/payment/DetectionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lio/card/payment/OverlayView;->invalidate()V

    .line 228
    :cond_0
    iput-object p1, p0, Lio/card/payment/OverlayView;->mDInfo:Lio/card/payment/DetectionInfo;

    .line 229
    return-void
.end method

.method public setGuideAndRotation(Landroid/graphics/Rect;I)V
    .locals 6

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v3, 0x42200000    # 40.0f

    .line 167
    sget-object v0, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGuideAndRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput p2, p0, Lio/card/payment/OverlayView;->mRotation:I

    .line 170
    iput-object p1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {p0}, Lio/card/payment/OverlayView;->invalidate()V

    .line 174
    iget v0, p0, Lio/card/payment/OverlayView;->mRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 176
    const/4 v1, -0x1

    iput v1, p0, Lio/card/payment/OverlayView;->mRotationFlip:I

    .line 181
    :goto_0
    iget-object v1, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Lio/card/payment/OverlayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    const/high16 v2, 0x428c0000    # 70.0f

    iget v3, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lio/card/payment/Util;->rectGivenCenter(Landroid/graphics/Point;II)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lio/card/payment/OverlayView;->mTorchRect:Landroid/graphics/Rect;

    .line 192
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 194
    const/high16 v0, 0x42c80000    # 100.0f

    iget v2, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v1, v0, v2}, Lio/card/payment/Util;->rectGivenCenter(Landroid/graphics/Point;II)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/OverlayView;->mLogoRect:Landroid/graphics/Rect;

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 198
    sget-object v1, Lio/card/payment/OverlayView;->GRADIENT_ORIENTATIONS:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v2, p0, Lio/card/payment/OverlayView;->mRotation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    .line 199
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lio/card/payment/OverlayView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 200
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 201
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 202
    iget-object v0, p0, Lio/card/payment/OverlayView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 204
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPath:Landroid/graphics/Path;

    .line 205
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 206
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLockedBackgroundPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/card/payment/OverlayView;->mGuide:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 208
    :cond_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lio/card/payment/OverlayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 179
    const/4 v1, 0x1

    iput v1, p0, Lio/card/payment/OverlayView;->mRotationFlip:I

    goto/16 :goto_0

    .line 197
    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method public setGuideColor(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lio/card/payment/OverlayView;->guideColor:I

    .line 147
    return-void
.end method

.method public setHideCardIOLogo(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lio/card/payment/OverlayView;->hideCardIOLogo:Z

    .line 155
    return-void
.end method

.method public setScanInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lio/card/payment/OverlayView;->scanInstructions:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setTorchOn(Z)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lio/card/payment/OverlayView;->mTorch:Lio/card/payment/Torch;

    invoke-virtual {v0, p1}, Lio/card/payment/Torch;->setOn(Z)V

    .line 492
    invoke-virtual {p0}, Lio/card/payment/OverlayView;->invalidate()V

    .line 493
    return-void
.end method

.method public setUseCardIOLogo(Z)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lio/card/payment/OverlayView;->mLogo:Lio/card/payment/Logo;

    invoke-virtual {v0, p1}, Lio/card/payment/Logo;->loadLogo(Z)V

    .line 497
    return-void
.end method
