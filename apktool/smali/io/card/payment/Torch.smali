.class Lio/card/payment/Torch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHeight:F

.field private mOn:Z

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/card/payment/Torch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/card/payment/Torch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/card/payment/Torch;->mOn:Z

    .line 30
    iput p1, p0, Lio/card/payment/Torch;->mWidth:F

    .line 31
    iput p2, p0, Lio/card/payment/Torch;->mHeight:F

    .line 32
    return-void
.end method

.method private static createBoltPath()Landroid/graphics/Path;
    .locals 7

    .prologue
    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v6, 0x41000000    # 8.0f

    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v3, 0x0

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 99
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 107
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    const/high16 v2, -0x3f300000    # -6.5f

    const/high16 v3, -0x3ee00000    # -10.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 109
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 110
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 111
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, -0x1000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    iget v0, p0, Lio/card/payment/Torch;->mWidth:F

    neg-float v0, v0

    div-float/2addr v0, v5

    iget v1, p0, Lio/card/payment/Torch;->mHeight:F

    neg-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    const/high16 v0, 0x40a00000    # 5.0f

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 48
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-boolean v3, p0, Lio/card/payment/Torch;->mOn:Z

    if-eqz v3, :cond_0

    .line 51
    const/16 v3, 0xc0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    :goto_0
    const/16 v3, 0x8

    new-array v3, v3, [F

    .line 58
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 59
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v3, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 60
    iget v3, p0, Lio/card/payment/Torch;->mWidth:F

    iget v4, p0, Lio/card/payment/Torch;->mHeight:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 63
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 68
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-boolean v1, p0, Lio/card/payment/Torch;->mOn:Z

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    :goto_1
    invoke-static {}, Lio/card/payment/Torch;->createBoltPath()Landroid/graphics/Path;

    move-result-object v1

    .line 78
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    const v3, 0x3f4ccccd    # 0.8f

    iget v4, p0, Lio/card/payment/Torch;->mHeight:F

    mul-float/2addr v3, v4

    .line 80
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 81
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 82
    iget v2, p0, Lio/card/payment/Torch;->mWidth:F

    div-float/2addr v2, v5

    iget v3, p0, Lio/card/payment/Torch;->mHeight:F

    div-float/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    return-void

    .line 53
    :cond_0
    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public setOn(Z)V
    .locals 3

    .prologue
    .line 88
    sget-object v1, Lio/card/payment/Torch;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Torch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "ON"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-boolean p1, p0, Lio/card/payment/Torch;->mOn:Z

    .line 90
    return-void

    .line 88
    :cond_0
    const-string v0, "OFF"

    goto :goto_0
.end method
