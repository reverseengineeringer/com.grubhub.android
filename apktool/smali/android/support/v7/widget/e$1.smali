.class Landroid/support/v7/widget/e$1;
.super Landroid/support/v7/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/a;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a;

.field final synthetic b:Landroid/support/v7/widget/e;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v7/widget/a;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/widget/e$1;->b:Landroid/support/v7/widget/e;

    iput-object p3, p0, Landroid/support/v7/widget/e$1;->a:Landroid/support/v7/widget/a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/q;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/o;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/e$1;->b:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e$1;->b:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()Landroid/support/v7/widget/o;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/e$1;->b:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->c()Z

    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/e$1;->b:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e$1;->b:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    .line 621
    const/4 v0, 0x1

    goto :goto_0
.end method
