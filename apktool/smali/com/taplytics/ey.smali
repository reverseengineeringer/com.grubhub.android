.class Lcom/taplytics/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/hj;


# instance fields
.field final synthetic a:Lcom/taplytics/hm;

.field final synthetic b:Lcom/taplytics/cs;


# direct methods
.method constructor <init>(Lcom/taplytics/cs;Lcom/taplytics/hm;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/taplytics/ey;->b:Lcom/taplytics/cs;

    iput-object p2, p0, Lcom/taplytics/ey;->a:Lcom/taplytics/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/taplytics/ey;->a:Lcom/taplytics/hm;

    invoke-interface {v0, v2, p2}, Lcom/taplytics/hm;->a(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/taplytics/ey;->a:Lcom/taplytics/hm;

    invoke-interface {v0, v2, v2}, Lcom/taplytics/hm;->a(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_0

    .line 234
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ey;->a:Lcom/taplytics/hm;

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/taplytics/hm;->a(Lorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    iget-object v1, p0, Lcom/taplytics/ey;->a:Lcom/taplytics/hm;

    invoke-interface {v1, v2, v0}, Lcom/taplytics/hm;->a(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_0
.end method
