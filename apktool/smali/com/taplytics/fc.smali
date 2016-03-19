.class Lcom/taplytics/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/fb;


# direct methods
.method constructor <init>(Lcom/taplytics/fb;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/taplytics/fc;->a:Lcom/taplytics/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/taplytics/fc;->a:Lcom/taplytics/fb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taplytics/fb;->a(Lcom/taplytics/fb;Z)Z

    .line 87
    return-void
.end method
