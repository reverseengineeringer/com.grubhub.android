.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/ArrayList;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)V

    .line 275
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    const-string v2, "autoCompleteAddress"

    invoke-static {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
