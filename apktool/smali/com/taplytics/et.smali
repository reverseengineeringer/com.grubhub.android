.class public Lcom/taplytics/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field a:Landroid/widget/AbsListView$RecyclerListener;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/taplytics/et;->a:Landroid/widget/AbsListView$RecyclerListener;

    .line 24
    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 31
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 32
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->d(Landroid/view/ViewGroup;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/taplytics/et;->a:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/taplytics/et;->a:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 40
    :cond_1
    return-void
.end method
