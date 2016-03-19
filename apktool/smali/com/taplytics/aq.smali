.class Lcom/taplytics/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/gr;


# instance fields
.field final synthetic a:Lcom/taplytics/am;


# direct methods
.method constructor <init>(Lcom/taplytics/am;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/taplytics/aq;->a:Lcom/taplytics/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taplytics/eo;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/taplytics/ft;->a()Lcom/taplytics/ft;

    move-result-object v0

    new-instance v1, Lcom/taplytics/ar;

    invoke-direct {v1, p0}, Lcom/taplytics/ar;-><init>(Lcom/taplytics/aq;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/ft;->a(Lcom/taplytics/es;)V

    .line 45
    invoke-static {}, Lcom/taplytics/ft;->a()Lcom/taplytics/ft;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taplytics/eo;->n()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taplytics/ft;->a(Lorg/json/JSONArray;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/taplytics/aq;->a:Lcom/taplytics/am;

    iget-object v0, v0, Lcom/taplytics/am;->a:Landroid/content/Intent;

    invoke-static {v0}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0
.end method
