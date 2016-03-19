.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(DDLcom/grubhub/AppBaseLibrary/android/order/g;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 3

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, p1, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 529
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method
