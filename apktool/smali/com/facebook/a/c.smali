.class Lcom/facebook/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/facebook/a/c;->a:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/facebook/a/c;->b:Ljava/lang/String;

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a/a$1;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/facebook/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/facebook/a/b;

    iget-object v1, p0, Lcom/facebook/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
