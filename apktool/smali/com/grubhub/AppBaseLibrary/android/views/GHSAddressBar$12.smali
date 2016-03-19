.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 127
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Z)V

    .line 128
    return-void
.end method
