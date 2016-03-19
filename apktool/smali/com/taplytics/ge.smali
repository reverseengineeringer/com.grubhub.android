.class Lcom/taplytics/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/taplytics/ge;->b:Lcom/taplytics/fy;

    iput-object p2, p0, Lcom/taplytics/ge;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runningExperimentsAndVariation(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/taplytics/dg;->b()Lcom/taplytics/dg;

    move-result-object v1

    iget-object v0, p0, Lcom/taplytics/ge;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/taplytics/dg;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 669
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/taplytics/ge;->a:Ljava/util/Map;

    const-string v2, "gaTracker"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
