.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;
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
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_FILTERS:I = 0x5

.field public static final PRICE_RATING:Ljava/lang/String; = "price_rating"

.field private static priceFilterLocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasUserSelected:Z

.field private selectedValues:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    .line 86
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_ONE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_TWO_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_THREE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_FOUR_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_FIVE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    .line 107
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    .line 108
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v1

    .line 109
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, v4

    .line 110
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    aput-boolean v0, v3, v4

    .line 111
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    aput-boolean v0, v3, v4

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->hasUserSelected:Z

    .line 113
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto :goto_1

    :cond_2
    move v0, v2

    .line 109
    goto :goto_2

    :cond_3
    move v0, v2

    .line 110
    goto :goto_3

    :cond_4
    move v0, v2

    .line 111
    goto :goto_4

    :cond_5
    move v1, v2

    .line 112
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private convertBoolToByte(Z)B
    .locals 1

    .prologue
    .line 270
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getHasUserSelected()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->hasUserSelected:Z

    return v0
.end method

.method public getMaxSelectedFilter()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    .line 225
    :goto_1
    return-object v0

    .line 220
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 225
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_NONE_SELECTED:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    goto :goto_1
.end method

.method public getMinSelectedFilter()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->priceFilterLocationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    .line 209
    :goto_1
    return-object v0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->PRICE_NONE_SELECTED:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    goto :goto_1
.end method

.method public isPriceFiveSelected()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isPriceFourSelected()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isPriceOneSelected()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isPriceThreeSelected()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isPriceTwoSelected()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setHasUserSelected(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->hasUserSelected:Z

    .line 190
    return-void
.end method

.method public setPriceFiveSelected(Z)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 149
    return-void
.end method

.method public setPriceFourSelected(Z)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 141
    return-void
.end method

.method public setPriceOneSelected(Z)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 117
    return-void
.end method

.method public setPriceRangeSelected(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 161
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 166
    :goto_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    aput-boolean v1, v2, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$2;->$SwitchMap$com$grubhub$AppBaseLibrary$android$dataServices$dto$GHSPriceFilterModel$PriceValues:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceFiveSelected(Z)V

    .line 175
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceFourSelected(Z)V

    .line 177
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceThreeSelected(Z)V

    .line 179
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceTwoSelected(Z)V

    .line 181
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceOneSelected(Z)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPriceThreeSelected(Z)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 133
    return-void
.end method

.method public setPriceTwoSelected(Z)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->convertBoolToByte(Z)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->convertBoolToByte(Z)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->convertBoolToByte(Z)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->convertBoolToByte(Z)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->selectedValues:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->convertBoolToByte(Z)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 260
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->hasUserSelected:Z

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->convertBoolToByte(Z)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 261
    return-void
.end method
