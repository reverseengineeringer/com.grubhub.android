.class final Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;-><init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;->createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;->createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;->newArray(I)[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v0

    return-object v0
.end method
