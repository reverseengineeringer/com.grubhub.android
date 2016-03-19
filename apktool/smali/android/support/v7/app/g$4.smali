.class Landroid/support/v7/app/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/g;->a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Landroid/support/v7/app/g$4;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v0, p0, Landroid/support/v7/app/g$4;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/g$4;->a:Landroid/support/v7/app/g;

    iget-object v1, v1, Landroid/support/v7/app/g;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 620
    return-void
.end method
