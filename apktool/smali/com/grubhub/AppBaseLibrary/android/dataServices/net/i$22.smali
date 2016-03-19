.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$22;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->e(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$22;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$22;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$22;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    const-string v1, "placeOrder"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$22;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-static {v0, v1, p1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1033
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1029
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$22;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
