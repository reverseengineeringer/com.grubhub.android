.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;)Lcom/grubhub/AppBaseLibrary/android/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1317
    :cond_0
    return-void
.end method
