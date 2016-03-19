.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)V
    .locals 0

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;->a:Z

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Z)V

    .line 1927
    :cond_0
    return-void
.end method
