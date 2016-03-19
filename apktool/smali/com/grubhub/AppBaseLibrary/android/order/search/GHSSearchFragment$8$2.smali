.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a()V

    .line 1159
    return-void
.end method
