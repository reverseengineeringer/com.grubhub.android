.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;Ljava/lang/CharSequence;I)V

    .line 45
    :cond_0
    return-void
.end method
