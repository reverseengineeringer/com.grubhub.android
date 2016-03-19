.class Lcom/taplytics/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/ik;

.field final synthetic b:Lcom/taplytics/ig;


# direct methods
.method constructor <init>(Lcom/taplytics/ig;Lcom/taplytics/ik;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/taplytics/ih;->b:Lcom/taplytics/ig;

    iput-object p2, p0, Lcom/taplytics/ih;->a:Lcom/taplytics/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/taplytics/ih;->a:Lcom/taplytics/ik;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/taplytics/ih;->a:Lcom/taplytics/ik;

    invoke-interface {v1, v0}, Lcom/taplytics/ik;->a(Lorg/json/JSONObject;)V

    .line 137
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/taplytics/ih;->a(Lorg/json/JSONArray;)V

    return-void
.end method
