.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;
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
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p6, p7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 29
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->c:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->d:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->e:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 37
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 39
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->f()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user authentication"

    const-string v3, "create account"

    const-string v4, "error"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 88
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 89
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a()V

    .line 54
    :cond_0
    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 56
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v3, "LoggedInStatus"

    const-string v4, "Logged In"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "UserID"

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 64
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->i()V

    .line 67
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "user authentication"

    const-string v4, "create account"

    const-string v5, "successful"

    invoke-direct {v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 71
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(I)V

    .line 74
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->e()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->e()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->b()V

    .line 79
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
