.class public Lorg/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lorg/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Lorg/c/b/d;->a:Lorg/c/b/d;

    invoke-virtual {v0}, Lorg/c/b/d;->a()Lorg/c/b;

    move-result-object v0

    sput-object v0, Lorg/c/f;->a:Lorg/c/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate instance of class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/c/b/d;->a:Lorg/c/b/d;

    invoke-virtual {v2}, Lorg/c/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/c/a/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/c/e;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/c/f;->a:Lorg/c/b;

    invoke-interface {v0, p0}, Lorg/c/b;->a(Ljava/lang/String;)Lorg/c/e;

    move-result-object v0

    return-object v0
.end method
