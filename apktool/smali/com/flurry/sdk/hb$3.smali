.class Lcom/flurry/sdk/hb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/hb;->t()Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hb;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/flurry/sdk/hb$3;->a:Lcom/flurry/sdk/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 387
    const-string v0, ".flurryagent."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
