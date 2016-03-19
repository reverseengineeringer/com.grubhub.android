.class Lcom/taplytics/jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/im;


# direct methods
.method constructor <init>(Lcom/taplytics/im;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/taplytics/jc;->b:Lcom/taplytics/im;

    iput-object p2, p0, Lcom/taplytics/jc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/taplytics/jc;->b:Lcom/taplytics/im;

    iget-object v1, p0, Lcom/taplytics/jc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taplytics/im;->a(Ljava/lang/String;)V

    .line 657
    return-void
.end method
