.class Landroid/support/v7/internal/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/a/b;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/b;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/internal/a/b$3;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/a/b$3;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 168
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 169
    return-void
.end method
