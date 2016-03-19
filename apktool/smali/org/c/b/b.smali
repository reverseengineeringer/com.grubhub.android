.class public Lorg/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/c/a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/c/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/b/b;->a:Ljava/util/Map;

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lorg/c/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/c/b/b;->b(Ljava/lang/String;)Lorg/c/b/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/c/b/a;
    .locals 2

    .prologue
    .line 53
    .line 55
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/c/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/b/a;

    .line 58
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/c/b/a;

    invoke-direct {v0, p1}, Lorg/c/b/a;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lorg/c/b/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    monitor-exit p0

    .line 64
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
