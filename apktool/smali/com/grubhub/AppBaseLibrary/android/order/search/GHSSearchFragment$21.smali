.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 0

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1738
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v2, v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1739
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1735
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;->a(Ljava/util/ArrayList;)V

    return-void
.end method
