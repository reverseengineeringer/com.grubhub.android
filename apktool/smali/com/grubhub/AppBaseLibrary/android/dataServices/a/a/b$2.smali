.class Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Landroid/content/Context;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 58
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$2;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
