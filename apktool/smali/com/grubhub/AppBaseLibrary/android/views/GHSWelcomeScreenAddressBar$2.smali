.class Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->h:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "enter address"

    const-string v3, "select autocompleted address"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 100
    return-void
.end method
