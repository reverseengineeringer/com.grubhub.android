.class public Lorg/a/a/c;
.super Lorg/a/a/a;
.source "SourceFile"


# static fields
.field static c:Ljava/lang/Class;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/a/a/c;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.a.a.c"

    invoke-static {v0}, Lorg/a/a/c;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/c;->c:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/a/a/c;->d:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lorg/a/a/c;->c:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/a/a/a;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lorg/a/a/c;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/c;->b(Ljava/lang/String;)Lorg/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/a/a/c;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lorg/a/a/b;->a(Ljava/lang/String;)Lorg/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 32
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
