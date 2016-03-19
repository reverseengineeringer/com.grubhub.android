.class Lcom/grubhub/AppBaseLibrary/android/account/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/g;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/g;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/g;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;)V

    .line 638
    return-void
.end method
