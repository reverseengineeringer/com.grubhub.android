.class Lcom/taplytics/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/ij;

.field final synthetic c:Lcom/taplytics/id;


# direct methods
.method constructor <init>(Lcom/taplytics/id;Ljava/lang/String;Lcom/taplytics/ij;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/taplytics/if;->c:Lcom/taplytics/id;

    iput-object p2, p0, Lcom/taplytics/if;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taplytics/if;->b:Lcom/taplytics/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/taplytics/if;->a:Ljava/lang/String;

    const-string v1, "Getting Properties From Server"

    invoke-static {v0, v1, p1}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 212
    iget-object v0, p0, Lcom/taplytics/if;->b:Lcom/taplytics/ij;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/taplytics/if;->b:Lcom/taplytics/ij;

    invoke-interface {v0, p1}, Lcom/taplytics/ij;->a(Ljava/lang/Exception;)V

    .line 215
    :cond_0
    return-void
.end method
