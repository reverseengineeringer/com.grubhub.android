.class public Lcom/taplytics/ew;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 24
    iput v0, p0, Lcom/taplytics/ew;->b:I

    .line 29
    iput v0, p0, Lcom/taplytics/ew;->c:I

    .line 36
    iput v0, p0, Lcom/taplytics/ew;->d:I

    .line 39
    iput-object p1, p0, Lcom/taplytics/ew;->a:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 40
    return-void
.end method
