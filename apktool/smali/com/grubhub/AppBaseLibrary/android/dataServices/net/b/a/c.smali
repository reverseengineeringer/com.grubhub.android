.class public abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;",
        "TaskType:",
        "Ljava/lang/Object;",
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

.field protected g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field protected i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b",
            "<TReturnType;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->f:Landroid/content/Context;

    .line 206
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 209
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a:I

    .line 210
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b",
            "<TReturnType;>;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    .line 245
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    .line 240
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TModelType;>;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    .line 235
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->b:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->c:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->d:Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 229
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->e:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;->a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    return-object v0
.end method
