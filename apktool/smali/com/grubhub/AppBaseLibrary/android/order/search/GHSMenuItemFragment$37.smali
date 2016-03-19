.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1358
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1361
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1362
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    .line 1363
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    .line 1364
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1359
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1368
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    .line 1371
    return-void
.end method
