.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 2256
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 5

    .prologue
    .line 2259
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    .line 2260
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    instance-of v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;

    if-eqz v1, :cond_0

    .line 2261
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    .line 2264
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ILjava/lang/String;)V

    .line 2265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_1

    .line 2266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$64;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 2268
    :cond_1
    return-void
.end method
