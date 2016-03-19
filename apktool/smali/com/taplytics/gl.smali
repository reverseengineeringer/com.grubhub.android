.class Lcom/taplytics/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taplytics/fz;)V
    .locals 0

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/taplytics/gl;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1678
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1679
    return-void
.end method
