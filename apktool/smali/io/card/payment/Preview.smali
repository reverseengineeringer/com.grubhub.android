.class Lio/card/payment/Preview;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isSurfaceValid:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/card/payment/Preview;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/card/payment/Preview;->$assertionsDisabled:Z

    .line 25
    const-class v0, Lio/card/payment/Preview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/card/payment/Preview;->TAG:Ljava/lang/String;

    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput p4, p0, Lio/card/payment/Preview;->mPreviewWidth:I

    .line 40
    iput p3, p0, Lio/card/payment/Preview;->mPreviewHeight:I

    .line 42
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 43
    iget-object v0, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lio/card/payment/Preview;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method


# virtual methods
.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lio/card/payment/Preview;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 53
    sget-boolean v1, Lio/card/payment/Preview;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lio/card/payment/Preview;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 59
    sget-object v0, Lio/card/payment/Preview;->TAG:Ljava/lang/String;

    const-string v1, "Preview.onDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p1, v3, v3, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 63
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    sget-object v0, Lio/card/payment/Preview;->TAG:Ljava/lang/String;

    const-string v1, "Preview.onLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lio/card/payment/Preview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isSurfaceValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/card/payment/Preview;->isSurfaceValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lio/card/payment/Preview;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    sget-boolean v0, Lio/card/payment/Preview;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    sub-int v0, p4, p2

    .line 99
    sub-int v1, p5, p3

    .line 106
    iget v2, p0, Lio/card/payment/Preview;->mPreviewHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lio/card/payment/Preview;->mPreviewWidth:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 107
    iget v2, p0, Lio/card/payment/Preview;->mPreviewWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Lio/card/payment/Preview;->mPreviewHeight:I

    div-int/2addr v2, v3

    .line 108
    iget-object v3, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iget v2, p0, Lio/card/payment/Preview;->mPreviewHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lio/card/payment/Preview;->mPreviewWidth:I

    div-int/2addr v2, v3

    .line 112
    iget-object v3, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    .line 79
    invoke-virtual {p0}, Lio/card/payment/Preview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lio/card/payment/Preview;->resolveSize(II)I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lio/card/payment/Preview;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lio/card/payment/Preview;->resolveSize(II)I

    move-result v1

    .line 82
    sget-object v2, Lio/card/payment/Preview;->TAG:Ljava/lang/String;

    const-string v3, "Preview.onMeasure(w:%d, h:%d) setMeasuredDimension(w:%d, h:%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, v0, v1}, Lio/card/payment/Preview;->setMeasuredDimension(II)V

    .line 86
    return-void
.end method
