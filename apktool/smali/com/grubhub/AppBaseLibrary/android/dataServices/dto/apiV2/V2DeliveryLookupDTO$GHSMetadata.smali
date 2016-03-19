.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private grubhub_cust_id:Ljava/lang/String;

.field private grubhub_diner_id:Ljava/lang/String;

.field private grubhub_diner_uuid:Ljava/lang/String;

.field private grubhub_has_alcohol:Ljava/lang/String;

.field private grubhub_needs_attention:Ljava/lang/String;

.field private grubhub_not_for_biker:Ljava/lang/String;

.field private grubhub_order_id:Ljava/lang/String;

.field private grubhub_order_uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;->grubhub_order_id:Ljava/lang/String;

    return-object v0
.end method
