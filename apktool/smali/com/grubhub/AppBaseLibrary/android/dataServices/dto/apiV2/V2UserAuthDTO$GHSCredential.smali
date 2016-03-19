.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSICredential;


# static fields
.field public static final BRAND_GRUBHUB:Ljava/lang/String; = "GRUBHUB"

.field public static final BRAND_SEAMLESS:Ljava/lang/String; = "SEAMLESS"


# instance fields
.field private brand:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private first_name:Ljava/lang/String;

.field private gh_login_id:Ljava/lang/String;

.field private last_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

.field private ud_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->first_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->last_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->ud_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->gh_login_id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->first_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGh_login_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->gh_login_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->last_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUd_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->ud_id:Ljava/lang/String;

    return-object v0
.end method
