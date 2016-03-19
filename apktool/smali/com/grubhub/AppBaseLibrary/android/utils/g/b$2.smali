.class Lcom/grubhub/AppBaseLibrary/android/utils/g/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 96
    const-string v0, "Unable to tokenize the credit card."

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 100
    :cond_0
    return-void
.end method
