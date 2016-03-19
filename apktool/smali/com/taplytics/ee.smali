.class public Lcom/taplytics/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/taplytics/eh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Lcom/taplytics/eg;

    invoke-direct {v0}, Lcom/taplytics/eg;-><init>()V

    sput-object v0, Lcom/taplytics/ee;->a:Lcom/taplytics/eh;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/taplytics/ef;

    invoke-direct {v0}, Lcom/taplytics/ef;-><init>()V

    sput-object v0, Lcom/taplytics/ee;->a:Lcom/taplytics/eh;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/taplytics/ee;->a:Lcom/taplytics/eh;

    invoke-interface {v0, p0, p1}, Lcom/taplytics/eh;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/taplytics/ee;->a:Lcom/taplytics/eh;

    invoke-interface {v0, p0, p1}, Lcom/taplytics/eh;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
