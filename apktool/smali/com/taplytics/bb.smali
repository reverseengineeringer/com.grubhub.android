.class Lcom/taplytics/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/eq;


# instance fields
.field final synthetic a:Lcom/taplytics/ba;


# direct methods
.method constructor <init>(Lcom/taplytics/ba;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/taplytics/bb;->a:Lcom/taplytics/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "Geofence events flushed"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "Geofence events failed to flush"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
