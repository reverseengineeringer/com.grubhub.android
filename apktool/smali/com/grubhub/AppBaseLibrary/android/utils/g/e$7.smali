.class Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->c(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/g/e;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/e;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/e;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 129
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;)V

    return-void
.end method
