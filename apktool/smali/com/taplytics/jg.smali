.class Lcom/taplytics/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# instance fields
.field final synthetic a:Lcom/taplytics/jm;

.field final synthetic b:Lcom/taplytics/im;


# direct methods
.method constructor <init>(Lcom/taplytics/im;Lcom/taplytics/jm;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/taplytics/jg;->b:Lcom/taplytics/im;

    iput-object p2, p0, Lcom/taplytics/jg;->a:Lcom/taplytics/jm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
