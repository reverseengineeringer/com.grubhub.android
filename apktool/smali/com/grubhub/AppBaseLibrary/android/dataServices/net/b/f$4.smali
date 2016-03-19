.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/Response$Listener;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/Response$Listener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;->a:Lcom/android/volley/Response$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;->a:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;->a:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method
