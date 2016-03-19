.class Landroid/support/v7/internal/widget/bd$2;
.super Landroid/support/v4/view/ee;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/bd;->d(I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/bd;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/bd;)V
    .locals 1

    .prologue
    .line 605
    iput-object p1, p0, Landroid/support/v7/internal/widget/bd$2;->a:Landroid/support/v7/internal/widget/bd;

    invoke-direct {p0}, Landroid/support/v4/view/ee;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bd$2;->b:Z

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/bd$2;->b:Z

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd$2;->a:Landroid/support/v7/internal/widget/bd;

    invoke-static {v0}, Landroid/support/v7/internal/widget/bd;->a(Landroid/support/v7/internal/widget/bd;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bd$2;->b:Z

    .line 617
    return-void
.end method
