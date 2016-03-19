.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 4

    .prologue
    .line 483
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    move-result v0

    .line 484
    if-nez v0, :cond_0

    .line 485
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMapper;->mapToAppError(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-direct {v0, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method
