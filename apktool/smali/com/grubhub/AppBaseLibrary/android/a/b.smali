.class public Lcom/grubhub/AppBaseLibrary/android/a/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/c/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Lcom/grubhub/AppBaseLibrary/android/c/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/grubhub/AppBaseLibrary/android/c/b/b;)V
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f03009e

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/a/b;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/a/b;->b:[Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/a/b;->b:[Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
