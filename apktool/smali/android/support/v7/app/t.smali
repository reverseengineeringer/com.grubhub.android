.class Landroid/support/v7/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/o;


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/support/v7/app/y;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    .line 529
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/n$1;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0, p1}, Landroid/support/v7/app/t;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v7/app/x;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/app/t;->b:Landroid/support/v7/app/y;

    iget-object v1, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/x;->a(Landroid/support/v7/app/y;Landroid/app/Activity;I)Landroid/support/v7/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->b:Landroid/support/v7/app/y;

    .line 567
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 558
    iget-object v0, p0, Landroid/support/v7/app/t;->b:Landroid/support/v7/app/y;

    iget-object v1, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v7/app/x;->a(Landroid/support/v7/app/y;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->b:Landroid/support/v7/app/y;

    .line 560
    iget-object v0, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 561
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
