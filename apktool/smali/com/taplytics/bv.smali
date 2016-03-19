.class public final Lcom/taplytics/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/taplytics/bv;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taplytics/bv;->b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bv;->a:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taplytics/bv;->b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/fy;->a(Ljava/lang/String;ZLcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    .line 174
    invoke-static {}, Lcom/taplytics/fh;->a()Lcom/taplytics/fh;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bv;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/bv;->b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/fh;->a(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    .line 175
    return-void
.end method
