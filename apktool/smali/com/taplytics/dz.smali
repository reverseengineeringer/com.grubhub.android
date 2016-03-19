.class public Lcom/taplytics/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/taplytics/ec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 122
    new-instance v0, Lcom/taplytics/eb;

    invoke-direct {v0}, Lcom/taplytics/eb;-><init>()V

    sput-object v0, Lcom/taplytics/dz;->a:Lcom/taplytics/ec;

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/taplytics/ea;

    invoke-direct {v0}, Lcom/taplytics/ea;-><init>()V

    sput-object v0, Lcom/taplytics/dz;->a:Lcom/taplytics/ec;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/taplytics/dz;->a:Lcom/taplytics/ec;

    invoke-interface {v0, p0, p1}, Lcom/taplytics/ec;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/taplytics/dz;->a:Lcom/taplytics/ec;

    invoke-interface {v0, p0, p1}, Lcom/taplytics/ec;->b(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/taplytics/dz;->a:Lcom/taplytics/ec;

    invoke-interface {v0, p0}, Lcom/taplytics/ec;->a(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/taplytics/dz;->a:Lcom/taplytics/ec;

    invoke-interface {v0, p0, p1}, Lcom/taplytics/ec;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
