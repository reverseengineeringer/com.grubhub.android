.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 83
    div-int/lit8 v0, p2, 0x64

    .line 86
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;I)I

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;Z)Z

    .line 97
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
