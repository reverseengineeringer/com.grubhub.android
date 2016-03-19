.class public Lorg/keyczar/interop/Creator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final command:Ljava/lang/String;

.field private final keyczartCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/keyczar/interop/Creator;->command:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lorg/keyczar/interop/Creator;->keyczartCommands:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lorg/keyczar/interop/Creator;->keyczartCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lorg/keyczar/KeyczarTool;->main([Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
