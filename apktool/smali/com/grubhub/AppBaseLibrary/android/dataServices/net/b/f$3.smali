.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method constructor <init>(Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$3;->a:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$3;->a:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 114
    return-void
.end method
