.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 18
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 25
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->g(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V

    return-void
.end method
