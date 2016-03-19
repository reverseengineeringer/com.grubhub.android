.class Landroid/support/v7/widget/b;
.super Landroid/support/v7/internal/view/menu/u;
.source "SourceFile"


# instance fields
.field final synthetic c:Landroid/support/v7/widget/a;

.field private d:Landroid/support/v7/internal/view/menu/ac;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/internal/view/menu/ac;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 686
    iput-object p1, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/a;

    .line 687
    const/4 v3, 0x0

    sget v5, Landroid/support/v7/a/b;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    .line 689
    iput-object p3, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/view/menu/ac;

    .line 691
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/ac;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    .line 692
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {p1}, Landroid/support/v7/widget/a;->d(Landroid/support/v7/widget/a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/a;->e(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/y;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->a(Landroid/view/View;)V

    .line 697
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/a;->g:Landroid/support/v7/widget/g;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 700
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/ac;->size()I

    move-result v1

    move v0, v4

    .line 701
    :goto_1
    if-ge v0, v1, :cond_1

    .line 702
    invoke-virtual {p3, v0}, Landroid/support/v7/internal/view/menu/ac;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 703
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 704
    const/4 v4, 0x1

    .line 708
    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/b;->a(Z)V

    .line 709
    return-void

    .line 694
    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/a;->d(Landroid/support/v7/widget/a;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 701
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 713
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/u;->onDismiss()V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/b;)Landroid/support/v7/widget/b;

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/a;->h:I

    .line 716
    return-void
.end method
