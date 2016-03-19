.class Landroid/support/v7/internal/widget/ai;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ah;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ah;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/ah;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ah;Landroid/support/v7/internal/widget/ah$1;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ai;-><init>(Landroid/support/v7/internal/widget/ah;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/ah;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ah;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/ah;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ah;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ak;->b()Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 552
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 557
    if-nez p2, :cond_0

    .line 558
    iget-object v1, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/ah;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ai;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ah;Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ak;

    move-result-object p2

    .line 562
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 560
    check-cast v0, Landroid/support/v7/internal/widget/ak;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ai;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/d;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ak;->a(Landroid/support/v7/app/d;)V

    goto :goto_0
.end method
