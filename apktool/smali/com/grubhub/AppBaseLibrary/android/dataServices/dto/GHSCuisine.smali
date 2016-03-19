.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected count:I

.field protected displayName:Ljava/lang/String;

.field protected facetLinkFragment:Ljava/lang/String;

.field protected selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->facetLinkFragment:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->displayName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->count:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->selected:Z

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->displayName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->count:I

    .line 30
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->facetLinkFragment:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->count:I

    return v0
.end method

.method public getUriQueryFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->facetLinkFragment:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->selected:Z

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->displayName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->selected:Z

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->facetLinkFragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
