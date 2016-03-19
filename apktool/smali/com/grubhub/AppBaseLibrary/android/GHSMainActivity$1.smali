.class Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->invalidateOptionsMenu()V

    .line 201
    return-void
.end method
