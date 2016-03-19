.class Lcom/taplytics/cv;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

.field final synthetic b:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/taplytics/cv;->b:Lcom/taplytics/cl;

    iput-object p2, p0, Lcom/taplytics/cv;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/taplytics/cv;->b:Lcom/taplytics/cl;

    iget-object v1, p0, Lcom/taplytics/cv;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/cl;->b(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    .line 368
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 369
    return-void
.end method
