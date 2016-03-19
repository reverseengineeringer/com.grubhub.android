.class Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v0, "CartId"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "CheckoutToken"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCheckoutToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method
