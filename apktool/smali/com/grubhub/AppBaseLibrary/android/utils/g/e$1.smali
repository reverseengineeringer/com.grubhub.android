.class Lcom/grubhub/AppBaseLibrary/android/utils/g/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/g/e;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/e;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V

    .line 66
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V

    return-void
.end method
