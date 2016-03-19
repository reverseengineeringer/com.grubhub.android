.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)[Z

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    .line 337
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->i(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    .line 338
    return-void
.end method
