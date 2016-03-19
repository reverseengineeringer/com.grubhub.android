.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)V
    .locals 0

    .prologue
    .line 2249
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 2

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/android/volley/Request;)V

    .line 2254
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2249
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$63;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
