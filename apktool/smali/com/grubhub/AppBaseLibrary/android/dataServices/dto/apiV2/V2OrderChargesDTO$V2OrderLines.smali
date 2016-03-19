.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;
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
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected diner_total:Ljava/lang/Integer;

.field protected line_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->diner_total:Ljava/lang/Integer;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->diner_total:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 82
    return-void
.end method
