.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIClaim;


# instance fields
.field private claim:Ljava/lang/String;

.field private claim_id:Ljava/lang/String;

.field private claim_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

.field private ud_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClaim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;->claim:Ljava/lang/String;

    return-object v0
.end method

.method public getClaim_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;->claim_id:Ljava/lang/String;

    return-object v0
.end method

.method public getClaim_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;->claim_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUd_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;->ud_id:Ljava/lang/String;

    return-object v0
.end method
