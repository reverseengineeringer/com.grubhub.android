.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ai;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;)V

    .line 25
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ai;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ai;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->l:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ai;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ai;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->m:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "payments"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "payments"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected c()V
    .locals 7

    .prologue
    .line 43
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 44
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;-><init>()V

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO;

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->a:I

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/b;-><init>(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 52
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/b;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 53
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    .line 54
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->l:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->m:Ljava/lang/String;

    .line 60
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->e:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e()Ljava/util/Map;

    move-result-object v0

    .line 67
    const-string v1, "dinerId"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "paymentId"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ah;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v0
.end method
