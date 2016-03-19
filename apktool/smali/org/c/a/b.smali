.class public Lorg/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/c/b;


# instance fields
.field a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/b;->a:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lorg/c/e;
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    if-nez p1, :cond_0

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Marker name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/c/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/e;

    .line 68
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lorg/c/a/a;

    invoke-direct {v0, p1}, Lorg/c/a/a;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lorg/c/a/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-object v0
.end method
