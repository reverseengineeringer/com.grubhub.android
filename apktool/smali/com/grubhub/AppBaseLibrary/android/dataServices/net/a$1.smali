.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ILjava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    iput p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->c:I

    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1065
    const-string v0, "CanceledMethod"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string v0, "RequiredTokenType"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string v0, "ErrorCode"

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string v0, "LocalizedErrorMessage"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    return-void
.end method
