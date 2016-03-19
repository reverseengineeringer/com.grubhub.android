.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CheckoutDTO;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;


# instance fields
.field private order_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CheckoutDTO;->order_number:Ljava/lang/String;

    return-object v0
.end method
