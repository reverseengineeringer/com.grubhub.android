.class public Lcom/taplytics/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/taplytics/fh;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fh;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/taplytics/fh;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/taplytics/fh;->b:Lcom/taplytics/fh;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/taplytics/fh;->b:Lcom/taplytics/fh;

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/taplytics/fh;

    invoke-direct {v0}, Lcom/taplytics/fh;-><init>()V

    sput-object v0, Lcom/taplytics/fh;->b:Lcom/taplytics/fh;

    .line 25
    sget-object v0, Lcom/taplytics/fh;->b:Lcom/taplytics/fh;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/taplytics/kb;->camel:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/taplytics/fh;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/taplytics/fh;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->experimentUpdated()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taplytics/fh;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
