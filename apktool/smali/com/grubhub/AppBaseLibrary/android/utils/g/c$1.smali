.class Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 94
    if-eqz p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-static {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/c;

    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/braintreepayments/api/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/f;)V

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/braintreepayments/api/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/f;)V

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/braintreepayments/api/c;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->b:Landroid/app/Activity;

    const v2, 0xd197

    invoke-virtual {v0, v1, v2}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v0, "BrainTree setup failed."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method
