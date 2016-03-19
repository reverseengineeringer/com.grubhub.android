.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;
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
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p5, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 42
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->c:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->d:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->e:Z

    .line 49
    return-void
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 5

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v2, "LoggedInStatus"

    const-string v3, "Logged In"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "UserID"

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 123
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->i()V

    .line 125
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->e:Z

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user authentication"

    const-string v3, "login"

    const-string v4, "successful"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 132
    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->e:Z

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user authentication"

    const-string v3, "login"

    const-string v4, "error"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 62
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 63
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->f()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->i()V

    .line 106
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 107
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 68
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b:Ljava/lang/String;

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a()V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 81
    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 84
    invoke-interface {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j(Z)V

    .line 85
    invoke-interface {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(I)V

    .line 86
    invoke-interface {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->k(Z)V

    .line 88
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 91
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->e()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->e()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->b()V

    .line 96
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 101
    :goto_1
    return-void

    :cond_2
    move-object v1, v0

    .line 68
    goto :goto_0

    .line 98
    :cond_3
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->e:Z

    .line 58
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
