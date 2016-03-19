.class public Lcom/grubhub/AppBaseLibrary/android/b/b;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;


# instance fields
.field public final a:Lcom/android/volley/NetworkResponse;

.field public final b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/b/a;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 42
    if-eqz p1, :cond_1

    .line 43
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    .line 46
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    .line 54
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    .line 30
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    .line 31
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    .line 92
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/c;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->d:Z

    .line 110
    return-void
.end method

.method public accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V
    .locals 0

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 267
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/b/c;)V
    .locals 3

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/grubhub/AppBaseLibrary/android/b/c;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public c()Lcom/grubhub/AppBaseLibrary/android/b/a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->d:Z

    return v0
.end method

.method public e()Lcom/grubhub/AppBaseLibrary/android/b/c;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/b/c;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/a;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/a;->getPositiveButtonString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/a;->getMessageString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/a;->getMessageString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/a;->getNegativeButtonString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/b;->c:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/a;->getNeutralButtonString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
