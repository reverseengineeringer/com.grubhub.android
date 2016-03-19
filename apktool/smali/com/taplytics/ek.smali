.class Lcom/taplytics/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/hj;


# instance fields
.field final synthetic a:Lcom/taplytics/gi;

.field final synthetic b:Lcom/taplytics/cs;


# direct methods
.method constructor <init>(Lcom/taplytics/cs;Lcom/taplytics/gi;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/taplytics/ek;->b:Lcom/taplytics/cs;

    iput-object p2, p0, Lcom/taplytics/ek;->a:Lcom/taplytics/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/taplytics/ek;->a:Lcom/taplytics/gi;

    invoke-interface {v0, v2, p2}, Lcom/taplytics/gi;->a(Lorg/json/JSONArray;Ljava/lang/Exception;)V

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    if-nez p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/taplytics/ek;->a:Lcom/taplytics/gi;

    invoke-interface {v0, v2, v2}, Lcom/taplytics/gi;->a(Lorg/json/JSONArray;Ljava/lang/Exception;)V

    goto :goto_0

    .line 183
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ek;->a:Lcom/taplytics/gi;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/taplytics/gi;->a(Lorg/json/JSONArray;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/taplytics/ek;->a:Lcom/taplytics/gi;

    invoke-interface {v1, v2, v0}, Lcom/taplytics/gi;->a(Lorg/json/JSONArray;Ljava/lang/Exception;)V

    goto :goto_0
.end method
