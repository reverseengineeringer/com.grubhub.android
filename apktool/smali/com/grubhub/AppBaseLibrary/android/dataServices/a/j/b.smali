.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;
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

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p7, p8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 35
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->e:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->c:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->f:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->b:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    .line 44
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->f()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 47
    return-void
.end method
