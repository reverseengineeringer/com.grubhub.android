.class final Lcom/taplytics/jz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/taplytics/jz;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/taplytics/jz;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/jz;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taplytics/jz;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {}, Lcom/taplytics/jy;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/jz;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
