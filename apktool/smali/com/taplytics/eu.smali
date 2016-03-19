.class public Lcom/taplytics/eu;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/AbsListView;

.field private b:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/eu;->a:Landroid/widget/AbsListView;

    .line 21
    iput-object p1, p0, Lcom/taplytics/eu;->a:Landroid/widget/AbsListView;

    .line 22
    new-instance v0, Lcom/taplytics/ev;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/taplytics/ev;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/taplytics/eu;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 23
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/taplytics/eu;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/eu;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 28
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taplytics/eu;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/eu;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 33
    return-void
.end method
