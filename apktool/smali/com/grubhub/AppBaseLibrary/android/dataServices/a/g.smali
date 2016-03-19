.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSIAutoCompleteDataModel;",
        ">;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/Double;

.field private f:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private g:Lcom/grubhub/AppBaseLibrary/android/order/l;

.field private h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p9, p10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 42
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->c:[Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->d:Ljava/lang/Double;

    .line 45
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->e:Ljava/lang/Double;

    .line 46
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->f:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 47
    iput-object p7, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->g:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 48
    iput-object p8, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->h:Ljava/lang/Long;

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 54
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->d:Ljava/lang/Double;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->e:Ljava/lang/Double;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->f:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->g:Lcom/grubhub/AppBaseLibrary/android/order/l;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->f()Ljava/lang/String;

    move-result-object v10

    move-object v8, p0

    move-object v9, p0

    invoke-virtual/range {v0 .. v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 55
    return-void
.end method
