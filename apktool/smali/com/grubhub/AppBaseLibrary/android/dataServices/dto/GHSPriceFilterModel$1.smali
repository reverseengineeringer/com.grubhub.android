.class final Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;-><init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;->newArray(I)[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v0

    return-object v0
.end method
