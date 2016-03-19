.class final Landroid/support/v4/view/ci$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ci;->a(Landroid/view/View;Landroid/support/v4/view/bh;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/bh;


# direct methods
.method constructor <init>(Landroid/support/v4/view/bh;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Landroid/support/v4/view/ci$1;->a:Landroid/support/v4/view/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/support/v4/view/eh;

    invoke-direct {v0, p2}, Landroid/support/v4/view/eh;-><init>(Landroid/view/WindowInsets;)V

    .line 62
    iget-object v1, p0, Landroid/support/v4/view/ci$1;->a:Landroid/support/v4/view/bh;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Landroid/support/v4/view/eg;)Landroid/support/v4/view/eg;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/eh;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/view/eh;->e()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
