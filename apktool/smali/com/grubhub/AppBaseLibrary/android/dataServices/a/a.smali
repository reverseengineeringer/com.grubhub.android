.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field private d:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

.field private e:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

.field private f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    .line 40
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->j:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;->a()V

    .line 240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->k:Z

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->l:Z

    .line 242
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->l:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->l:Z

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;->a()V

    .line 218
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->k:Z

    .line 219
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    .line 91
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    .line 83
    return-void
.end method

.method protected b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    return-object v0
.end method

.method protected d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->d:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->d:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->d:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    return-object v0
.end method

.method protected e()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/Object;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->k:Z

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->l:Z

    .line 197
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->k:Z

    return v0
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->l:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;->onResponse(Ljava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->l:Z

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;->a()V

    .line 231
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->k:Z

    .line 232
    return-void
.end method
