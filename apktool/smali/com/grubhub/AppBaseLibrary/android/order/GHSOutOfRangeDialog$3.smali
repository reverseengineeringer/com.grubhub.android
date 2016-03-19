.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->dismiss()V

    .line 214
    return-void
.end method
