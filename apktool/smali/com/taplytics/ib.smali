.class Lcom/taplytics/ib;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Lcom/taplytics/ik;

.field final synthetic c:Lcom/taplytics/ia;


# direct methods
.method constructor <init>(Lcom/taplytics/ia;Ljava/util/Date;Lcom/taplytics/ik;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/taplytics/ib;->c:Lcom/taplytics/ia;

    iput-object p2, p0, Lcom/taplytics/ib;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/taplytics/ib;->b:Lcom/taplytics/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "Posted App Icon"

    iget-object v1, p0, Lcom/taplytics/ib;->a:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/taplytics/ib;->b:Lcom/taplytics/ik;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/taplytics/ib;->b:Lcom/taplytics/ik;

    invoke-interface {v0, p1}, Lcom/taplytics/ik;->a(Lorg/json/JSONObject;)V

    .line 362
    :cond_1
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taplytics/ib;->a(Lorg/json/JSONObject;)V

    return-void
.end method
