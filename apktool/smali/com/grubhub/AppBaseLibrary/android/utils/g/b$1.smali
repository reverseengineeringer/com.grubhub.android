.class Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;->getNonce()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;)V

    return-void
.end method
