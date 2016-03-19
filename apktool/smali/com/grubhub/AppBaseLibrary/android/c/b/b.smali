.class public abstract Lcom/grubhub/AppBaseLibrary/android/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/grubhub/AppBaseLibrary/android/utils/f/a;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/c/b/e;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/utils/f/a;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    .line 22
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->d:Lcom/grubhub/AppBaseLibrary/android/utils/f/a;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->d:Lcom/grubhub/AppBaseLibrary/android/utils/f/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/f/a;->a(Lcom/grubhub/AppBaseLibrary/android/c/b/b;Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->c:I

    .line 61
    return-void
.end method

.method public c()Lcom/grubhub/AppBaseLibrary/android/c/b/e;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/grubhub/AppBaseLibrary/android/utils/f/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->d:Lcom/grubhub/AppBaseLibrary/android/utils/f/a;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->c:I

    return v0
.end method
