.class Lorg/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/a/a/b;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lorg/a/a/c;
    .locals 3

    .prologue
    .line 36
    const-class v1, Lorg/a/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/a/a/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lorg/a/a/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    monitor-exit v1

    return-object v0

    .line 39
    :cond_0
    :try_start_1
    new-instance v0, Lorg/a/a/c;

    invoke-direct {v0, p0}, Lorg/a/a/c;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v2, Lorg/a/a/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
