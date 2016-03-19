.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private long_name:Ljava/lang/String;

.field private short_name:Ljava/lang/String;

.field private types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->types:Ljava/util/ArrayList;

    return-object v0
.end method
