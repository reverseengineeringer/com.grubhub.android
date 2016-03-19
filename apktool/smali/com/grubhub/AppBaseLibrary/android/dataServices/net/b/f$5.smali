.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/Response$ErrorListener;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;->a:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;->a:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;->a:Lcom/android/volley/Response$ErrorListener;

    new-instance v1, Lcom/android/volley/VolleyError;

    iget-object v2, p1, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    invoke-direct {v1, v2}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-interface {v0, v1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 135
    :cond_0
    return-void
.end method
