.class Lcom/taplytics/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/taplytics/ev;->a:Landroid/view/ViewGroup;

    .line 12
    iput-object v0, p0, Lcom/taplytics/ev;->b:Landroid/view/ViewTreeObserver;

    .line 15
    iput-object p1, p0, Lcom/taplytics/ev;->b:Landroid/view/ViewTreeObserver;

    .line 16
    iput-object p2, p0, Lcom/taplytics/ev;->a:Landroid/view/ViewGroup;

    .line 17
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ev;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/taplytics/ev;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/taplytics/ev;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 25
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/taplytics/ev;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "Exception while updating listView in onPreDraw (outer)"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 29
    :catch_1
    move-exception v0

    .line 30
    :try_start_3
    const-string v1, "Exception while updating listView in onPreDraw (inner)"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
