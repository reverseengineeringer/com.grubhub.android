.class final Landroid/support/v7/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/x;


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/g;Landroid/support/v7/app/g$1;)V
    .locals 0

    .prologue
    .line 1487
    invoke-direct {p0, p1}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/app/g;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1490
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/i;->p()Landroid/support/v7/internal/view/menu/i;

    move-result-object v2

    .line 1491
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1492
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;Landroid/view/Menu;)Landroid/support/v7/app/k;

    move-result-object v3

    .line 1493
    if-eqz v3, :cond_1

    .line 1494
    if-eqz v0, :cond_3

    .line 1495
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    iget v4, v3, Landroid/support/v7/app/k;->a:I

    invoke-static {v0, v4, v3, v2}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;ILandroid/support/v7/app/k;Landroid/view/Menu;)V

    .line 1496
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    invoke-static {v0, v3, v1}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;Landroid/support/v7/app/k;Z)V

    .line 1504
    :cond_1
    :goto_1
    return-void

    .line 1491
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1500
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V

    .line 1501
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    invoke-static {v0, v3, p2}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;Landroid/support/v7/app/k;Z)V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 1508
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    iget-boolean v0, v0, Landroid/support/v7/app/g;->b:Z

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0}, Landroid/support/v7/app/g;->m()Landroid/support/v7/internal/a/a;

    move-result-object v0

    .line 1510
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/g;

    invoke-virtual {v1}, Landroid/support/v7/app/g;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1511
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/a/a;->c(ILandroid/view/Menu;)Z

    .line 1514
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
