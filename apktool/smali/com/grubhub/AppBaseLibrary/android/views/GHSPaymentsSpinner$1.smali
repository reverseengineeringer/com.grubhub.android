.class Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;)V
    .locals 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v0, "Location"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;)Lcom/grubhub/AppBaseLibrary/android/views/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method
