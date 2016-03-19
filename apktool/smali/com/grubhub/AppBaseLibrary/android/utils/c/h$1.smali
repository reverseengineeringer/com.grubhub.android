.class Lcom/grubhub/AppBaseLibrary/android/utils/c/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/w",
        "<",
        "Lcom/google/android/gms/tagmanager/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/v;)V
    .locals 0

    .prologue
    .line 364
    check-cast p1, Lcom/google/android/gms/tagmanager/f;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$1;->a(Lcom/google/android/gms/tagmanager/f;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/tagmanager/f;)V
    .locals 1

    .prologue
    .line 367
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/a;->a(Lcom/google/android/gms/tagmanager/f;)V

    .line 368
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/f;->c()Lcom/google/android/gms/tagmanager/a;

    .line 369
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/f;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/a;->a(Lcom/google/android/gms/tagmanager/f;)V

    goto :goto_0
.end method
