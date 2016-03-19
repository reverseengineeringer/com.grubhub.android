.class public abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TaskType:",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;",
        "ModelType:",
        "Ljava/lang/Object;",
        "ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/content/Context;

.field protected g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

.field protected h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

.field protected i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field protected k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b",
            "<TReturnType;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
            "<+",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;",
            "TTaskType;TModelType;TReturnType;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->f:Landroid/content/Context;

    .line 50
    iget v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a:I

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->a:I

    .line 51
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->c:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    .line 58
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    .line 59
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    .line 62
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 63
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturnType;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->f()V

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->b()V

    .line 81
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->c()V

    .line 83
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 137
    :cond_0
    const-string v0, "taskName"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "REQUEST_MISSING_INPUTS"

    invoke-static {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->c:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;)V

    return-object v0
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->g()V

    .line 151
    return-void
.end method

.method protected g()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e()Ljava/util/Map;

    move-result-object v1

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 165
    const-string v3, "Missing required inputs"

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;)V

    .line 170
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
