.class Lcom/facebook/share/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/d;


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/LikeView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/c;-><init>(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/c;->b:Z

    .line 818
    return-void
.end method

.method public a(Lcom/facebook/share/internal/a;Lcom/facebook/h;)V
    .locals 2

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/facebook/share/widget/c;->b:Z

    if-eqz v0, :cond_0

    .line 847
    :goto_0
    return-void

    .line 828
    :cond_0
    if-eqz p1, :cond_2

    .line 829
    invoke-virtual {p1}, Lcom/facebook/share/internal/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    new-instance p2, Lcom/facebook/h;

    const-string v0, "Cannot use LikeView. The device may not be supported."

    invoke-direct {p2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/LikeView;->a(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/a;)V

    .line 837
    iget-object v0, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->c(Lcom/facebook/share/widget/LikeView;)V

    .line 840
    :cond_2
    if-eqz p2, :cond_3

    .line 841
    iget-object v0, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->d(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->d(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/e;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/share/widget/e;->a(Lcom/facebook/h;)V

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/widget/LikeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/widget/LikeView;->a(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/c;)Lcom/facebook/share/widget/c;

    goto :goto_0
.end method
