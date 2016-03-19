.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 2

    .prologue
    .line 81
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    .line 82
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 84
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 85
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 97
    :cond_1
    :goto_1
    return-void

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;->onResponse(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    return-void
.end method
