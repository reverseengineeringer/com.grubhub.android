.class public Lcom/taplytics/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/taplytics/ex;->b:I

    .line 33
    iput v0, p0, Lcom/taplytics/ex;->c:I

    .line 39
    iput v0, p0, Lcom/taplytics/ex;->d:I

    .line 47
    iput v0, p0, Lcom/taplytics/ex;->e:I

    .line 51
    iput-object p1, p0, Lcom/taplytics/ex;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 52
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 83
    :goto_0
    iget v3, p0, Lcom/taplytics/ex;->e:I

    sub-int v3, v1, v3

    .line 84
    iput v1, p0, Lcom/taplytics/ex;->e:I

    .line 85
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 88
    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/fy;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/taplytics/ex;->b:I

    if-ne p2, v4, :cond_1

    iget v4, p0, Lcom/taplytics/ex;->c:I

    if-ne v2, v4, :cond_1

    iget v4, p0, Lcom/taplytics/ex;->d:I

    if-ne v4, p4, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    sub-int v1, v4, v1

    if-lt v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    if-ge v0, v3, :cond_2

    .line 100
    :cond_1
    iput p4, p0, Lcom/taplytics/ex;->d:I

    .line 101
    iput p2, p0, Lcom/taplytics/ex;->b:I

    .line 102
    iput v2, p0, Lcom/taplytics/ex;->c:I

    .line 104
    invoke-static {p1}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V

    .line 108
    :cond_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/ju;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 110
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/taplytics/ju;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taplytics/ex;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/taplytics/ex;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 120
    :cond_4
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taplytics/ex;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/taplytics/ex;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 60
    :cond_0
    return-void
.end method
