.class public Lcom/taplytics/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/taplytics/du;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taplytics/dt;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 505
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 521
    new-instance v0, Lcom/taplytics/dy;

    invoke-direct {v0, p1, p2, p3}, Lcom/taplytics/dy;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taplytics/dt;->a:Lcom/taplytics/du;

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v0, Lcom/taplytics/dw;

    invoke-direct {v0, p1, p2, p3}, Lcom/taplytics/dw;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taplytics/dt;->a:Lcom/taplytics/du;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/taplytics/dt;->a:Lcom/taplytics/du;

    invoke-interface {v0, p1}, Lcom/taplytics/du;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
