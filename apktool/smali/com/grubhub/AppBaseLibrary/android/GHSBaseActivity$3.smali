.class Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;Z)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;->b:Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;->b:Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;->a:Z

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    .line 338
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
