.class Lcom/taplytics/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

.field final synthetic e:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/taplytics/gd;->e:Lcom/taplytics/fy;

    iput-object p2, p0, Lcom/taplytics/gd;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/taplytics/gd;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/taplytics/gd;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/taplytics/gd;->d:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 547
    iget-object v0, p0, Lcom/taplytics/gd;->e:Lcom/taplytics/fy;

    iget-object v1, p0, Lcom/taplytics/gd;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taplytics/gd;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/taplytics/gd;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/taplytics/gd;->d:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V

    .line 548
    return-void
.end method
