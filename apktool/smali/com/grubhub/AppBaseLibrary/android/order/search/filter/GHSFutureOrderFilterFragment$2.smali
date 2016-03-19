.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;Z)Z

    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;Z)Z

    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V

    goto :goto_0
.end method
