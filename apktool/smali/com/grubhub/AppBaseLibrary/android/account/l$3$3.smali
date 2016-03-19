.class Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/l$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/l$3;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;)V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const-string v1, "successful"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/l;->c(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    .line 850
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 843
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;)V

    return-void
.end method
