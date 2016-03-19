.class Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h()V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;)V

    .line 561
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 557
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
