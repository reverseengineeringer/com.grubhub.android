.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$1;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->i(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->a(Lcom/android/volley/Request;)V

    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
