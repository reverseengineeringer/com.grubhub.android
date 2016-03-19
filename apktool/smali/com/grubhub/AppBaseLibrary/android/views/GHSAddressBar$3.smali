.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$3;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$3;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method
