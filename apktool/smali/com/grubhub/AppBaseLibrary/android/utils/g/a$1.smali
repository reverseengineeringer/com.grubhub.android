.class Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/16 v4, 0x83e

    .line 183
    if-eqz p1, :cond_4

    .line 184
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/c;

    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/braintreepayments/api/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/f;)V

    .line 200
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/braintreepayments/api/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/f;)V

    .line 218
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->b(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->d(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->g(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->d(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v2

    const/16 v3, 0x840

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;I)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/braintreepayments/api/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/braintreepayments/api/c;I)V

    goto :goto_0

    .line 236
    :cond_4
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

    .line 237
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto/16 :goto_0
.end method
