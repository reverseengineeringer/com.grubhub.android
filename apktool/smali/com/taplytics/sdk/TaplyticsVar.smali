.class public Lcom/taplytics/sdk/TaplyticsVar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public listener:Lcom/taplytics/sdk/TaplyticsVarListener;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    invoke-static {}, Lcom/taplytics/as;->a()Lcom/taplytics/as;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/taplytics/as;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/taplytics/sdk/TaplyticsVar;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iput-object p2, p0, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;

    .line 29
    const-string v1, "exception starting TaplyticsVar"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/taplytics/sdk/TaplyticsVarListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/taplytics/sdk/TaplyticsVarListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    :try_start_0
    iput-object p3, p0, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    .line 46
    invoke-static {}, Lcom/taplytics/as;->a()Lcom/taplytics/as;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/taplytics/as;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/taplytics/sdk/TaplyticsVar;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    iput-object p2, p0, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;

    .line 49
    const-string v1, "exception starting TaplyticsVar"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;

    return-object v0
.end method
