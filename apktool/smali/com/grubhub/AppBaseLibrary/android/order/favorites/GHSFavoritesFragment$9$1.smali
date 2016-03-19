.class Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->a()V

    .line 356
    :cond_0
    return-void
.end method
