.class Lcom/facebook/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ac;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/facebook/ac;

    invoke-static {}, Lcom/facebook/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ac;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
