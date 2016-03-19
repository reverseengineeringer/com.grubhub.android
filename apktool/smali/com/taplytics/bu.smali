.class public final Lcom/taplytics/bu;
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
    .line 152
    iput-object p1, p0, Lcom/taplytics/bu;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taplytics/bu;->b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bu;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taplytics/bu;->b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/fy;->a(Ljava/lang/String;ZLcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    .line 156
    invoke-static {}, Lcom/taplytics/fh;->a()Lcom/taplytics/fh;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bu;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/bu;->b:Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/fh;->a(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    .line 157
    return-void
.end method
