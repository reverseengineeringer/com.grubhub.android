.class Landroid/support/v7/internal/widget/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ah;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ah;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ah;Landroid/support/v7/internal/widget/ah$1;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/support/v7/internal/widget/ah;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 568
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/ak;

    .line 569
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ak;->b()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->d()V

    .line 570
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/ah;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ah;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->getChildCount()I

    move-result v3

    move v2, v1

    .line 571
    :goto_0
    if-ge v2, v3, :cond_1

    .line 572
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/ah;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ah;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 573
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 571
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 573
    goto :goto_1

    .line 575
    :cond_1
    return-void
.end method
