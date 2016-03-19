.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/android/volley/VolleyError;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 89
    :cond_0
    return-void
.end method
