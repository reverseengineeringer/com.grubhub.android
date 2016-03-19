.class public Lcom/taplytics/fa;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taplytics/fa;->a:Landroid/support/v7/widget/RecyclerView;

    .line 17
    new-instance v0, Lcom/taplytics/ev;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/taplytics/ev;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/taplytics/fa;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 19
    return-void
.end method
