.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 5

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->a:Ljava/lang/String;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ILjava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$60;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 2135
    :cond_0
    return-void
.end method
