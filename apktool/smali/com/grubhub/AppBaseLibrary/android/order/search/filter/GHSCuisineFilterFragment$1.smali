.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;)I
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 94
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    check-cast p2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;)I

    move-result v0

    return v0
.end method
