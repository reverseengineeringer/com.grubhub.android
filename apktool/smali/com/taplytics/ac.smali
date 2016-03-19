.class public abstract Lcom/taplytics/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/af;


# instance fields
.field private final a:Lcom/taplytics/ai;


# direct methods
.method public constructor <init>(Lcom/taplytics/ai;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/taplytics/ac;->a:Lcom/taplytics/ai;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Lcom/taplytics/ai;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taplytics/ac;->a:Lcom/taplytics/ai;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taplytics/ac;->a:Lcom/taplytics/ai;

    invoke-virtual {v0}, Lcom/taplytics/ai;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taplytics/ac;->a:Lcom/taplytics/ai;

    invoke-virtual {v0}, Lcom/taplytics/ai;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
