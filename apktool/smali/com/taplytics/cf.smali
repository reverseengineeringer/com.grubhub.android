.class Lcom/taplytics/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/gi;


# instance fields
.field final synthetic a:Lcom/taplytics/ce;


# direct methods
.method constructor <init>(Lcom/taplytics/ce;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/taplytics/cf;->a:Lcom/taplytics/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 147
    if-eqz p1, :cond_2

    .line 148
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/taplytics/cf;->a:Lcom/taplytics/ce;

    iget-object v2, v2, Lcom/taplytics/ce;->a:Lcom/taplytics/cc;

    invoke-static {v2}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taplytics/bw;->a(Lorg/json/JSONObject;)V

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    const-string v1, "TLEvents.json"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/cs;->a(Ljava/lang/String;Lcom/taplytics/ga;)V

    .line 157
    :cond_2
    return-void
.end method
