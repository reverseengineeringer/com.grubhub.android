.class Lcom/taplytics/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/cc;


# direct methods
.method constructor <init>(Lcom/taplytics/cc;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/taplytics/cd;->a:Lcom/taplytics/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/taplytics/cd;->a:Lcom/taplytics/cc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/eq;)V

    .line 115
    return-void
.end method
