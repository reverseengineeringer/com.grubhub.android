.class public Lcom/amazon/insights/core/DefaultInsightsHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/InsightsHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/insights/InsightsHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/amazon/insights/InsightsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/insights/InsightsCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private error:Lcom/amazon/insights/error/InsightsError;

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;

    .line 14
    iput-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->response:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->error:Lcom/amazon/insights/error/InsightsError;

    return-void
.end method


# virtual methods
.method public declared-synchronized onComplete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->response:Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->response:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;

    iget-object v1, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->response:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/InsightsCallback;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Lcom/amazon/insights/error/InsightsError;)V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->error:Lcom/amazon/insights/error/InsightsError;

    .line 49
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->error:Lcom/amazon/insights/error/InsightsError;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;

    iget-object v1, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->error:Lcom/amazon/insights/error/InsightsError;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/InsightsCallback;->onError(Lcom/amazon/insights/error/InsightsError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallback(Lcom/amazon/insights/InsightsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/InsightsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->callback:Lcom/amazon/insights/InsightsCallback;

    .line 23
    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->response:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->response:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->error:Lcom/amazon/insights/error/InsightsError;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/amazon/insights/core/DefaultInsightsHandler;->error:Lcom/amazon/insights/error/InsightsError;

    invoke-virtual {p0, v0}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
