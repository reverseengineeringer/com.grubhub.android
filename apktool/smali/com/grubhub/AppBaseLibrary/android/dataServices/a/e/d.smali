.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 29
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 36
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
