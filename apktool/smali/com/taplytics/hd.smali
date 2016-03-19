.class Lcom/taplytics/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/taplytics/hc;


# direct methods
.method constructor <init>(Lcom/taplytics/hc;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/taplytics/hd;->a:Lcom/taplytics/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/taplytics/hd;->a:Lcom/taplytics/hc;

    iget-object v0, v0, Lcom/taplytics/hc;->a:Lcom/taplytics/gq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 930
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 925
    return-void
.end method
