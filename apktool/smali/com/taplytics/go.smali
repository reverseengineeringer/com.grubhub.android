.class Lcom/taplytics/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ik;


# instance fields
.field final synthetic a:Lcom/taplytics/gn;


# direct methods
.method constructor <init>(Lcom/taplytics/gn;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/taplytics/go;->a:Lcom/taplytics/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 175
    const-string v0, "Getting Properties From Server"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "Got Properties Response!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method
