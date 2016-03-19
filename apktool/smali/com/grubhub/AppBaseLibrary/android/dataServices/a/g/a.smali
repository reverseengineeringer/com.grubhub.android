.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:D

.field private final c:D


# direct methods
.method public constructor <init>(Landroid/content/Context;DDLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p6, p7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 32
    iput-wide p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->b:D

    .line 33
    iput-wide p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->c:D

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    .line 38
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 40
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->b:D

    iget-wide v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->c:D

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->f()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(DDLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 2

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_LOOKUP:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 49
    invoke-super {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method
