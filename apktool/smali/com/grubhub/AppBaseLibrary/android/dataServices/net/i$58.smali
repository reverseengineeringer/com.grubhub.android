.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Z)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;ZZ)V
    .locals 0

    .prologue
    .line 2070
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    iput-boolean p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->d:Z

    iput-boolean p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 6

    .prologue
    .line 2074
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    move-result v0

    .line 2075
    if-nez v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMapper;->mapToAppError(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2080
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER_WHEN_LOGGED_IN:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-ne v0, v1, :cond_3

    .line 2081
    :cond_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {v0, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    iget-boolean v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->d:Z

    iget-boolean v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->e:Z

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ZZ)V

    .line 2096
    :cond_2
    :goto_0
    return-void

    .line 2088
    :cond_3
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {v0, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    goto :goto_0

    .line 2093
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_2

    .line 2094
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$58;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method
