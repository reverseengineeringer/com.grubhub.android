.class Lcom/flurry/sdk/hm$2;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/hm;->a(Lcom/flurry/sdk/iz;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hm;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/hm$2;->a:Lcom/flurry/sdk/hm;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/flurry/sdk/hf;->a()Lcom/flurry/sdk/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hf;->c()V

    .line 80
    return-void
.end method
