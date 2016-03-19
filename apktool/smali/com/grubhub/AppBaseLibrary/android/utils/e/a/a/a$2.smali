.class Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v0, "HttpStatusCode"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "ErrorProperty"

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "ErrorMessageKey"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/b/c;->b()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void

    :cond_1
    move-object v0, v1

    .line 72
    goto :goto_0
.end method
