.class Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$4;->a:Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity$4;->a:Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v0, v2, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    .line 344
    return-void
.end method
