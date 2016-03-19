.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p5, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 35
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 37
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->d:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 42
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 44
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;->f()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 45
    return-void
.end method
