.class public Lcom/grubhub/AppBaseLibrary/android/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->b:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->c:Z

    .line 57
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
