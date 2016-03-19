.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 33
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->b:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    .line 54
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a()V

    .line 69
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 76
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a()V

    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->b:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void
.end method

.method public declared-synchronized a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 5

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->b:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v2, "LoggedInStatus"

    const-string v3, "Not Logged In"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 110
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user authentication"

    const-string v3, "logout"

    const-string v4, "successful"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 115
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c()V

    .line 118
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->i()V

    .line 121
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g()V

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->g()V

    .line 91
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
