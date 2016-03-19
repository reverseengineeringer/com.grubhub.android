.class Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/z;

    .line 860
    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/views/z;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 861
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->f(Ljava/util/ArrayList;)V

    .line 862
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f()V

    .line 890
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    .line 866
    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/views/z;->b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    move-result-object v2

    .line 870
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(Lcom/grubhub/AppBaseLibrary/android/views/z;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 871
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    const-string v3, "autocomplete-default suggestions_cta"

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v0, 0x1

    .line 875
    :goto_1
    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 876
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/view/View;Z)V

    .line 877
    if-nez v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    const-string v1, "autocomplete-food suggestions_cta"

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    move-result-object v0

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    goto :goto_0

    .line 883
    :cond_2
    if-nez v0, :cond_3

    .line 884
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    const-string v1, "autocomplete-restaurant suggestions_cta"

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/y;->b(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
