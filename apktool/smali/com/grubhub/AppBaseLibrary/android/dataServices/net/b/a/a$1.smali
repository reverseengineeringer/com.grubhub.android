.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e()Ljava/util/Map;
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;)V
    .locals 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 118
    const-string v0, "defaultTimeout"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;

    iget v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "apiKey"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "tag"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "baseUrl"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "baseUrlPort"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
