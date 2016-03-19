.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0803e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1287
    :cond_0
    return-void
.end method
