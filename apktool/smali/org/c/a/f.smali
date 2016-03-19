.class public Lorg/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/c/a;


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/c/a/f;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/c/a/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/c/c;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/c/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/c/a/d;->a:Lorg/c/a/d;

    return-object v0
.end method
